// Copyright (c) 2012-2018 The Elastos Open Source Project
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef __ELASTOS_SDK_TRANSACTIONINPUT_H__
#define __ELASTOS_SDK_TRANSACTIONINPUT_H__

#include <SDK/Common/ByteStream.h>

#include <nlohmann/json.hpp>

#include <string>

namespace Elastos {
	namespace ElaWallet {

		class TransactionInput {
		public:
			TransactionInput();

			TransactionInput(const uint256 &txHash, uint32_t index);

			~TransactionInput();

			const uint256 &GetTransctionHash() const;

			void SetTransactionHash(const uint256 &hash);

			uint32_t GetIndex() const;

			void SetIndex(uint32_t index);

			uint32_t GetSequence() const;

			void SetSequence(uint32_t sequence);

			void Serialize(ByteStream &ostream) const;

			bool Deserialize(const ByteStream &istream);

			nlohmann::json ToJson() const;

			void FromJson(const nlohmann::json &j);

			size_t GetSize() const;

		private:
			uint256 _txHash;
			uint32_t _index;
			uint32_t _sequence;
		};

	}
}

#endif //__ELASTOS_SDK_TRANSACTIONINPUT_H__