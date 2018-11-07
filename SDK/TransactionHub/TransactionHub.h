// Copyright (c) 2012-2018 The Elastos Open Source Project
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef __ELASTOS_SDK_TRANSACTIONHUB_H__
#define __ELASTOS_SDK_TRANSACTIONHUB_H__

#include <map>
#include <string>
#include <boost/weak_ptr.hpp>
#include <boost/function.hpp>
#include <boost/thread/mutex.hpp>
#include <boost/enable_shared_from_this.hpp>

#include "BRInt.h"

#include "SDK/Base/Lockable.h"
#include "Wrapper.h"
#include "Plugin/Transaction/Transaction.h"
#include "SDK/Common/ElementSet.h"
#include "UTXOList.h"
#include "SDK/Base/Address.h"
#include "SDK/Crypto/MasterPubKey.h"
#include "Plugin/Transaction/TransactionOutput.h"
#include "WrapperList.h"
#include "GroupedAssetTransactions.h"
#include "Account/ISubAccount.h"

#define DEFAULT_FEE_PER_KB (TX_FEE_PER_KB*10)                  // 10 satoshis-per-byte
#define MIN_FEE_PER_KB     TX_FEE_PER_KB                       // bitcoind 0.12 default min-relay fee
#define MAX_FEE_PER_KB     ((TX_FEE_PER_KB*1000100 + 190)/191) // slightly higher than a 10,000bit fee on a 191byte tx

namespace Elastos {
	namespace ElaWallet {

		class TransactionHub : public Lockable, public boost::enable_shared_from_this<TransactionHub> {

		public:
			class Listener {
			public:
				virtual void balanceChanged() = 0;

				virtual void onTxAdded(const TransactionPtr &transaction) = 0;

				virtual void onTxUpdated(const std::string &hash, uint32_t blockHeight, uint32_t timeStamp) = 0;

				virtual void
				onTxDeleted(const std::string &hash, const std::string &assetID, bool notifyUser,
							bool recommendRescan) = 0;
			};

		public:

			TransactionHub(const std::vector<TransactionPtr> &transactions,
				   const SubAccountPtr &subAccount,
				   const boost::shared_ptr<Listener> &listener);

			virtual ~TransactionHub();

			void initListeningAddresses(const std::vector<std::string> &addrs);

			uint32_t getBlockHeight() const;

			nlohmann::json GetBalanceInfo(const UInt256 &assetID);

			void RegisterRemark(const TransactionPtr &transaction);

			std::string GetRemark(const std::string &txHash);

			uint64_t GetBalanceWithAddress(const UInt256 &assetID, const std::string &address);

			// returns the first unused external address
			std::string getReceiveAddress() const;

			// writes all addresses previously generated with BRWalletUnusedAddrs() to addrs
			// returns the number addresses written, or total number available if addrs is NULL
			std::vector<std::string> getAllAddresses();

			// true if the address was previously generated by BRWalletUnusedAddrs() (even if it's now used)
			// int BRWalletContainsAddress(BRWallet *wallet, const char *addr);
			bool containsAddress(const std::string &address);

			// true if the address was previously used as an input or output in any wallet transaction
			// int BRWalletAddressIsUsed(BRWallet *wallet, const char *addr);
			bool addressIsUsed(const std::string &address);

			uint64_t getBalance(const UInt256 &assetID) const;

			uint64_t getTotalSent(const UInt256 &assetID) const;

			uint64_t getTotalReceived(const UInt256 &assetID) const;

			uint64_t getFeePerKb(const UInt256 &assetID) const;

			void setFeePerKb(const UInt256 &assetID, uint64_t fee);

			uint64_t getMaxFeePerKb();

			uint64_t getDefaultFeePerKb();

			TransactionPtr
			createTransaction(const std::string &fromAddress, uint64_t fee, uint64_t amount,
							  const std::string &toAddress, const UInt256 &assetID, const std::string &remark,
							  const std::string &memo);

			bool containsTransaction(const TransactionPtr &transaction);

			bool registerTransaction(const TransactionPtr &transaction);

			void removeTransaction(const UInt256 &transactionHash);

			void updateTransactions(const std::vector<UInt256> &transactionsHashes, uint32_t blockHeight,
									uint32_t timestamp);

			TransactionPtr transactionForHash(const UInt256 &transactionHash);

			std::vector<TransactionPtr> getAllTransactions() const;

			bool transactionIsValid(const TransactionPtr &transaction);

			bool transactionIsPending(const TransactionPtr &transaction);

			bool transactionIsVerified(const TransactionPtr &transaction);

			uint64_t getTransactionAmount(const TransactionPtr &tx);

			uint64_t getTransactionFee(const TransactionPtr &tx);

			uint64_t getTransactionAmountSent(const TransactionPtr &tx);

			uint64_t getTransactionAmountReceived(const TransactionPtr &tx);

			uint64_t getBalanceAfterTransaction(const TransactionPtr &transaction);

			void signTransaction(const TransactionPtr &transaction, const std::string &payPassword);

			void UpdateBalance();

			std::vector<UTXO> getUTXOsSafe(const UInt256 &assetID);

			std::vector<UTXO> getAllUTXOsSafe();

			std::vector<TransactionPtr> TxUnconfirmedBefore(uint32_t blockHeight);

			void SetTxUnconfirmedAfter(uint32_t blockHeight);


			const std::vector<std::string> &getListeningAddrs() const;

			std::vector<Address> UnusedAddresses(uint32_t gapLimit, bool internal);

			void UpdateAssets(const UInt256ValueMap<std::string> &assetIDMap);

			nlohmann::json GetAllSupportedAssets() const;

			bool ContainsAsset(const std::string &assetID);

		protected:

			bool AddressFilter(const std::string &fromAddress, const std::string &filterAddress);

			uint64_t WalletFeeForTx(const TransactionPtr &tx);

			void balanceChanged();

			void txAdded(const TransactionPtr &tx);

			void txUpdated(const std::vector<UInt256> &txHashes, uint32_t blockHeight, uint32_t timestamp);

			void txDeleted(const std::vector<UInt256> &txHashes, const UInt256 &assetID, bool notifyUser,
						   bool recommendRescan);

			uint64_t BalanceAfterTx(const TransactionPtr &tx);


		protected:
			uint32_t _blockHeight;
			GroupedAssetTransactions _transactions;

			typedef std::map<std::string, std::string> TransactionRemarkMap;
			TransactionRemarkMap _txRemarkMap;
			std::vector<std::string> _listeningAddrs;

			SubAccountPtr _subAccount;
			boost::weak_ptr<Listener> _listener;
		};

		typedef boost::shared_ptr<TransactionHub> WalletPtr;

	}
}

#endif //__ELASTOS_SDK_TRANSACTIONHUB_H__
