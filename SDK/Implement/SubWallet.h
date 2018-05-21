// Copyright (c) 2012-2018 The Elastos Open Source Project
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef __ELASTOS_SDK_SUBWALLET_H__
#define __ELASTOS_SDK_SUBWALLET_H__

#include <boost/shared_ptr.hpp>

#include "Interface/ISubWallet.h"
#include "Interface/ISubWalletCallback.h"

namespace Elastos {
	namespace SDK {

		class Key;
		class MasterPubKey;
		class WalletManager;

		class SubWalletCallback : public ISubWalletCallback {
		public:
			SubWalletCallback();

			virtual void OnBalanceChanged(
					const std::string &address,
					double oldAmount,
					double newAmount);

			virtual void OnTransactionStatusChanged(
					const std::string &txid,
					const std::string &status,
					uint32_t error,
					const std::string &desc,
					uint32_t confirms);
		};

		class SubWallet : public ISubWallet {
		public:
			~SubWallet();

			virtual nlohmann::json GetBalanceInfo();

			virtual double GetBalance();

			virtual std::string CreateAddress();

			virtual std::string GetTheLastAddress();

			virtual std::string GetAllAddress();

			virtual double GetBalanceWithAddress(const std::string &address);

			virtual void AddCallback(ISubWalletCallback *subCallback);

			virtual void RemoveCallback(ISubWalletCallback *subCallback);

			virtual std::string SendTransaction(
					const std::string &fromAddress,
					const std::string &toAddress,
					double amount,
					double fee,
					const std::string &payPassword,
					const std::string &memo,
					const std::string &txid);

			virtual std::string SendRawTransaction(
					const nlohmann::json &transactionJson,
					const std::string &payPassword);

			virtual nlohmann::json GetAllTransaction(
					uint32_t start,
					uint32_t count,
					const std::string &addressOrTxid);

			virtual std::string Sign(
					const std::string &message,
					const std::string &payPassword);

			virtual nlohmann::json CheckSign(
					const std::string &address,
					const std::string &message,
					const std::string &signature);

		protected:
			friend class MasterWallet;

			typedef boost::shared_ptr<MasterPubKey> MasterPubKeyPtr;

			typedef boost::shared_ptr<WalletManager> WalletManagerPtr;

			typedef boost::shared_ptr<Key> KeyPtr;

			SubWallet(const KeyPtr &key, const MasterPubKeyPtr &masterPubKey);

		protected:

			WalletManagerPtr _walletManager;
		};

	}
}

#endif //__ELASTOS_SDK_SUBWALLET_H__