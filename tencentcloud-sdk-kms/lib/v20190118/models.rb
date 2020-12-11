# frozen_string_literal: true

# Copyright (c) 2017-2018 THL A29 Limited, a Tencent company. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module TencentCloud
  module Kms
    module V20190118
      # 算法的名称 和 标识
      class AlgorithmInfo < TencentCloud::Common::AbstractModel
        # @param KeyUsage: 算法的标识
        # @type KeyUsage: String
        # @param Algorithm: 算法的名称
        # @type Algorithm: String

        attr_accessor :KeyUsage, :Algorithm
        
        def initialize(keyusage=nil, algorithm=nil)
          @KeyUsage = keyusage
          @Algorithm = algorithm
        end

        def deserialize(params)
          @KeyUsage = params['KeyUsage']
          @Algorithm = params['Algorithm']
        end
      end

      # AsymmetricRsaDecrypt请求参数结构体
      class AsymmetricRsaDecryptRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的唯一标识
        # @type KeyId: String
        # @param Ciphertext: 使用PublicKey加密的密文，Base64编码
        # @type Ciphertext: String
        # @param Algorithm: 在使用公钥加密时对应的算法：当前支持RSAES_PKCS1_V1_5、RSAES_OAEP_SHA_1、RSAES_OAEP_SHA_256
        # @type Algorithm: String

        attr_accessor :KeyId, :Ciphertext, :Algorithm
        
        def initialize(keyid=nil, ciphertext=nil, algorithm=nil)
          @KeyId = keyid
          @Ciphertext = ciphertext
          @Algorithm = algorithm
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Ciphertext = params['Ciphertext']
          @Algorithm = params['Algorithm']
        end
      end

      # AsymmetricRsaDecrypt返回参数结构体
      class AsymmetricRsaDecryptResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的唯一标识
        # @type KeyId: String
        # @param Plaintext: 解密后的明文，base64编码
        # @type Plaintext: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :Plaintext, :RequestId
        
        def initialize(keyid=nil, plaintext=nil, requestid=nil)
          @KeyId = keyid
          @Plaintext = plaintext
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Plaintext = params['Plaintext']
          @RequestId = params['RequestId']
        end
      end

      # AsymmetricSm2Decrypt请求参数结构体
      class AsymmetricSm2DecryptRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的唯一标识
        # @type KeyId: String
        # @param Ciphertext: 使用PublicKey加密的密文，Base64编码。密文长度不能超过256字节。
        # @type Ciphertext: String

        attr_accessor :KeyId, :Ciphertext
        
        def initialize(keyid=nil, ciphertext=nil)
          @KeyId = keyid
          @Ciphertext = ciphertext
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Ciphertext = params['Ciphertext']
        end
      end

      # AsymmetricSm2Decrypt返回参数结构体
      class AsymmetricSm2DecryptResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的唯一标识
        # @type KeyId: String
        # @param Plaintext: 解密后的明文，base64编码
        # @type Plaintext: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :Plaintext, :RequestId
        
        def initialize(keyid=nil, plaintext=nil, requestid=nil)
          @KeyId = keyid
          @Plaintext = plaintext
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Plaintext = params['Plaintext']
          @RequestId = params['RequestId']
        end
      end

      # CancelKeyDeletion请求参数结构体
      class CancelKeyDeletionRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 需要被取消删除的CMK的唯一标志
        # @type KeyId: String

        attr_accessor :KeyId
        
        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # CancelKeyDeletion返回参数结构体
      class CancelKeyDeletionResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: 唯一标志被取消删除的CMK。
        # @type KeyId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :RequestId
        
        def initialize(keyid=nil, requestid=nil)
          @KeyId = keyid
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @RequestId = params['RequestId']
        end
      end

      # CreateKey请求参数结构体
      class CreateKeyRequest < TencentCloud::Common::AbstractModel
        # @param Alias: 作为密钥更容易辨识，更容易被人看懂的别名， 不可为空，1-60个字母数字 - _ 的组合，首字符必须为字母或者数字。以 kms- 作为前缀的用于云产品使用，Alias 不可重复。
        # @type Alias: String
        # @param Description: CMK 的描述，最大1024字节
        # @type Description: String
        # @param KeyUsage: 指定key的用途，默认为  "ENCRYPT_DECRYPT" 表示创建对称加解密密钥，其它支持用途 “ASYMMETRIC_DECRYPT_RSA_2048” 表示创建用于加解密的RSA2048非对称密钥，“ASYMMETRIC_DECRYPT_SM2” 表示创建用于加解密的SM2非对称密钥
        # @type KeyUsage: String
        # @param Type: 指定key类型，默认为1，1表示默认类型，由KMS创建CMK密钥，2 表示EXTERNAL 类型，该类型需要用户导入密钥材料，参考 GetParametersForImport 和 ImportKeyMaterial 接口
        # @type Type: Integer
        # @param Tags: 标签列表
        # @type Tags: Array

        attr_accessor :Alias, :Description, :KeyUsage, :Type, :Tags
        
        def initialize(alias=nil, description=nil, keyusage=nil, type=nil, tags=nil)
          @Alias = alias
          @Description = description
          @KeyUsage = keyusage
          @Type = type
          @Tags = tags
        end

        def deserialize(params)
          @Alias = params['Alias']
          @Description = params['Description']
          @KeyUsage = params['KeyUsage']
          @Type = params['Type']
          @Tags = params['Tags']
        end
      end

      # CreateKey返回参数结构体
      class CreateKeyResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的全局唯一标识符
        # @type KeyId: String
        # @param Alias: 作为密钥更容易辨识，更容易被人看懂的别名
        # @type Alias: String
        # @param CreateTime: 密钥创建时间，unix时间戳
        # @type CreateTime: Integer
        # @param Description: CMK的描述
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String
        # @param KeyState: CMK的状态
        # @type KeyState: String
        # @param KeyUsage: CMK的用途
        # @type KeyUsage: String
        # @param TagCode: 标签操作的返回码. 0: 成功；1: 内部错误；2: 业务处理错误
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagCode: Integer
        # @param TagMsg: 标签操作的返回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :Alias, :CreateTime, :Description, :KeyState, :KeyUsage, :TagCode, :TagMsg, :RequestId
        
        def initialize(keyid=nil, alias=nil, createtime=nil, description=nil, keystate=nil, keyusage=nil, tagcode=nil, tagmsg=nil, requestid=nil)
          @KeyId = keyid
          @Alias = alias
          @CreateTime = createtime
          @Description = description
          @KeyState = keystate
          @KeyUsage = keyusage
          @TagCode = tagcode
          @TagMsg = tagmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Alias = params['Alias']
          @CreateTime = params['CreateTime']
          @Description = params['Description']
          @KeyState = params['KeyState']
          @KeyUsage = params['KeyUsage']
          @TagCode = params['TagCode']
          @TagMsg = params['TagMsg']
          @RequestId = params['RequestId']
        end
      end

      # CreateWhiteBoxKey请求参数结构体
      class CreateWhiteBoxKeyRequest < TencentCloud::Common::AbstractModel
        # @param Alias: 作为密钥更容易辨识，更容易被人看懂的别名， 不可为空，1-60个字母数字 - _ 的组合，首字符必须为字母或者数字。Alias不可重复。
        # @type Alias: String
        # @param Algorithm: 创建密钥所有的算法类型，支持的取值：AES_256,SM4
        # @type Algorithm: String
        # @param Description: 密钥的描述，最大1024字节
        # @type Description: String
        # @param Tags: 标签列表
        # @type Tags: Array

        attr_accessor :Alias, :Algorithm, :Description, :Tags
        
        def initialize(alias=nil, algorithm=nil, description=nil, tags=nil)
          @Alias = alias
          @Algorithm = algorithm
          @Description = description
          @Tags = tags
        end

        def deserialize(params)
          @Alias = params['Alias']
          @Algorithm = params['Algorithm']
          @Description = params['Description']
          @Tags = params['Tags']
        end
      end

      # CreateWhiteBoxKey返回参数结构体
      class CreateWhiteBoxKeyResponse < TencentCloud::Common::AbstractModel
        # @param EncryptKey: 用于加密的密钥，base64编码
        # @type EncryptKey: String
        # @param DecryptKey: 用于解密的密钥，base64编码
        # @type DecryptKey: String
        # @param KeyId: 白盒密钥的全局唯一标识符
        # @type KeyId: String
        # @param TagCode: 标签操作的返回码. 0: 成功；1: 内部错误；2: 业务处理错误
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagCode: Integer
        # @param TagMsg: 标签操作的返回信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagMsg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EncryptKey, :DecryptKey, :KeyId, :TagCode, :TagMsg, :RequestId
        
        def initialize(encryptkey=nil, decryptkey=nil, keyid=nil, tagcode=nil, tagmsg=nil, requestid=nil)
          @EncryptKey = encryptkey
          @DecryptKey = decryptkey
          @KeyId = keyid
          @TagCode = tagcode
          @TagMsg = tagmsg
          @RequestId = requestid
        end

        def deserialize(params)
          @EncryptKey = params['EncryptKey']
          @DecryptKey = params['DecryptKey']
          @KeyId = params['KeyId']
          @TagCode = params['TagCode']
          @TagMsg = params['TagMsg']
          @RequestId = params['RequestId']
        end
      end

      # Decrypt请求参数结构体
      class DecryptRequest < TencentCloud::Common::AbstractModel
        # @param CiphertextBlob: 待解密的密文数据
        # @type CiphertextBlob: String
        # @param EncryptionContext: key/value对的json字符串，如果Encrypt指定了该参数，则在调用Decrypt API时需要提供同样的参数，最大支持1024字符
        # @type EncryptionContext: String

        attr_accessor :CiphertextBlob, :EncryptionContext
        
        def initialize(ciphertextblob=nil, encryptioncontext=nil)
          @CiphertextBlob = ciphertextblob
          @EncryptionContext = encryptioncontext
        end

        def deserialize(params)
          @CiphertextBlob = params['CiphertextBlob']
          @EncryptionContext = params['EncryptionContext']
        end
      end

      # Decrypt返回参数结构体
      class DecryptResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的全局唯一标识
        # @type KeyId: String
        # @param Plaintext: 解密后的明文。该字段是base64编码的，为了得到原始明文，调用方需要进行base64解码
        # @type Plaintext: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :Plaintext, :RequestId
        
        def initialize(keyid=nil, plaintext=nil, requestid=nil)
          @KeyId = keyid
          @Plaintext = plaintext
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Plaintext = params['Plaintext']
          @RequestId = params['RequestId']
        end
      end

      # DeleteImportedKeyMaterial请求参数结构体
      class DeleteImportedKeyMaterialRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 指定需要删除密钥材料的EXTERNAL CMK。
        # @type KeyId: String

        attr_accessor :KeyId
        
        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # DeleteImportedKeyMaterial返回参数结构体
      class DeleteImportedKeyMaterialResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteWhiteBoxKey请求参数结构体
      class DeleteWhiteBoxKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 白盒密钥的全局唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId
        
        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # DeleteWhiteBoxKey返回参数结构体
      class DeleteWhiteBoxKeyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DescribeKey请求参数结构体
      class DescribeKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK全局唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId
        
        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # DescribeKey返回参数结构体
      class DescribeKeyResponse < TencentCloud::Common::AbstractModel
        # @param KeyMetadata: 密钥属性信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyMetadata: :class:`Tencentcloud::Kms.v20190118.models.KeyMetadata`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyMetadata, :RequestId
        
        def initialize(keymetadata=nil, requestid=nil)
          @KeyMetadata = keymetadata
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KeyMetadata'].nil?
            @KeyMetadata = KeyMetadata.new.deserialize(params[KeyMetadata])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeKeys请求参数结构体
      class DescribeKeysRequest < TencentCloud::Common::AbstractModel
        # @param KeyIds: 查询CMK的ID列表，批量查询一次最多支持100个KeyId
        # @type KeyIds: Array

        attr_accessor :KeyIds
        
        def initialize(keyids=nil)
          @KeyIds = keyids
        end

        def deserialize(params)
          @KeyIds = params['KeyIds']
        end
      end

      # DescribeKeys返回参数结构体
      class DescribeKeysResponse < TencentCloud::Common::AbstractModel
        # @param KeyMetadatas: 返回的属性信息列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyMetadatas: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyMetadatas, :RequestId
        
        def initialize(keymetadatas=nil, requestid=nil)
          @KeyMetadatas = keymetadatas
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyMetadatas = params['KeyMetadatas']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWhiteBoxDecryptKey请求参数结构体
      class DescribeWhiteBoxDecryptKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 白盒密钥的全局唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId
        
        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # DescribeWhiteBoxDecryptKey返回参数结构体
      class DescribeWhiteBoxDecryptKeyResponse < TencentCloud::Common::AbstractModel
        # @param DecryptKey: 白盒解密密钥，base64编码
        # @type DecryptKey: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DecryptKey, :RequestId
        
        def initialize(decryptkey=nil, requestid=nil)
          @DecryptKey = decryptkey
          @RequestId = requestid
        end

        def deserialize(params)
          @DecryptKey = params['DecryptKey']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWhiteBoxDeviceFingerprints请求参数结构体
      class DescribeWhiteBoxDeviceFingerprintsRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 白盒密钥ID
        # @type KeyId: String

        attr_accessor :KeyId
        
        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # DescribeWhiteBoxDeviceFingerprints返回参数结构体
      class DescribeWhiteBoxDeviceFingerprintsResponse < TencentCloud::Common::AbstractModel
        # @param DeviceFingerprints: 设备指纹列表
        # @type DeviceFingerprints: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeviceFingerprints, :RequestId
        
        def initialize(devicefingerprints=nil, requestid=nil)
          @DeviceFingerprints = devicefingerprints
          @RequestId = requestid
        end

        def deserialize(params)
          @DeviceFingerprints = params['DeviceFingerprints']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWhiteBoxKeyDetails请求参数结构体
      class DescribeWhiteBoxKeyDetailsRequest < TencentCloud::Common::AbstractModel
        # @param KeyStatus: 过滤条件：密钥的状态，0：disabled，1：enabled
        # @type KeyStatus: Integer

        attr_accessor :KeyStatus
        
        def initialize(keystatus=nil)
          @KeyStatus = keystatus
        end

        def deserialize(params)
          @KeyStatus = params['KeyStatus']
        end
      end

      # DescribeWhiteBoxKeyDetails返回参数结构体
      class DescribeWhiteBoxKeyDetailsResponse < TencentCloud::Common::AbstractModel
        # @param KeyInfos: 白盒密钥信息列表
        # @type KeyInfos: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyInfos, :RequestId
        
        def initialize(keyinfos=nil, requestid=nil)
          @KeyInfos = keyinfos
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyInfos = params['KeyInfos']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWhiteBoxKey请求参数结构体
      class DescribeWhiteBoxKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 白盒密钥的全局唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId
        
        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # DescribeWhiteBoxKey返回参数结构体
      class DescribeWhiteBoxKeyResponse < TencentCloud::Common::AbstractModel
        # @param KeyInfo: 白盒密钥信息
        # @type KeyInfo: :class:`Tencentcloud::Kms.v20190118.models.WhiteboxKeyInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyInfo, :RequestId
        
        def initialize(keyinfo=nil, requestid=nil)
          @KeyInfo = keyinfo
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['KeyInfo'].nil?
            @KeyInfo = WhiteboxKeyInfo.new.deserialize(params[KeyInfo])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeWhiteBoxServiceStatus请求参数结构体
      class DescribeWhiteBoxServiceStatusRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeWhiteBoxServiceStatus返回参数结构体
      class DescribeWhiteBoxServiceStatusResponse < TencentCloud::Common::AbstractModel
        # @param ServiceEnabled: 用户的白盒密钥服务是否可用
        # @type ServiceEnabled: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceEnabled, :RequestId
        
        def initialize(serviceenabled=nil, requestid=nil)
          @ServiceEnabled = serviceenabled
          @RequestId = requestid
        end

        def deserialize(params)
          @ServiceEnabled = params['ServiceEnabled']
          @RequestId = params['RequestId']
        end
      end

      # 设备指纹
      class DeviceFingerprint < TencentCloud::Common::AbstractModel
        # @param Identity: 指纹信息，由设备指纹采集工具采集获得，格式满足正则表达式：^[0-9a-f]{8}[\-][0-9a-f]{14}[\-][0-9a-f]{14}[\-][0-9a-f]{14}[\-][0-9a-f]{16}$
        # @type Identity: String
        # @param Description: 描述信息，如：IP，设备名称等，最大1024字节
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Description: String

        attr_accessor :Identity, :Description
        
        def initialize(identity=nil, description=nil)
          @Identity = identity
          @Description = description
        end

        def deserialize(params)
          @Identity = params['Identity']
          @Description = params['Description']
        end
      end

      # DisableKey请求参数结构体
      class DisableKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId
        
        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # DisableKey返回参数结构体
      class DisableKeyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DisableKeyRotation请求参数结构体
      class DisableKeyRotationRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId
        
        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # DisableKeyRotation返回参数结构体
      class DisableKeyRotationResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DisableKeys请求参数结构体
      class DisableKeysRequest < TencentCloud::Common::AbstractModel
        # @param KeyIds: 需要批量禁用的CMK Id 列表，CMK数量最大支持100
        # @type KeyIds: Array

        attr_accessor :KeyIds
        
        def initialize(keyids=nil)
          @KeyIds = keyids
        end

        def deserialize(params)
          @KeyIds = params['KeyIds']
        end
      end

      # DisableKeys返回参数结构体
      class DisableKeysResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DisableWhiteBoxKey请求参数结构体
      class DisableWhiteBoxKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 白盒密钥的全局唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId
        
        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # DisableWhiteBoxKey返回参数结构体
      class DisableWhiteBoxKeyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DisableWhiteBoxKeys请求参数结构体
      class DisableWhiteBoxKeysRequest < TencentCloud::Common::AbstractModel
        # @param KeyIds: 白盒密钥的全局唯一标识符列表。注意：要确保所有提供的KeyId是格式有效的，没有重复，个数不超过50个，并且都是有效存在的。
        # @type KeyIds: Array

        attr_accessor :KeyIds
        
        def initialize(keyids=nil)
          @KeyIds = keyids
        end

        def deserialize(params)
          @KeyIds = params['KeyIds']
        end
      end

      # DisableWhiteBoxKeys返回参数结构体
      class DisableWhiteBoxKeysResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # EnableKey请求参数结构体
      class EnableKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId
        
        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # EnableKey返回参数结构体
      class EnableKeyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # EnableKeyRotation请求参数结构体
      class EnableKeyRotationRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId
        
        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # EnableKeyRotation返回参数结构体
      class EnableKeyRotationResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # EnableKeys请求参数结构体
      class EnableKeysRequest < TencentCloud::Common::AbstractModel
        # @param KeyIds: 需要批量启用的CMK Id 列表， CMK数量最大支持100
        # @type KeyIds: Array

        attr_accessor :KeyIds
        
        def initialize(keyids=nil)
          @KeyIds = keyids
        end

        def deserialize(params)
          @KeyIds = params['KeyIds']
        end
      end

      # EnableKeys返回参数结构体
      class EnableKeysResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # EnableWhiteBoxKey请求参数结构体
      class EnableWhiteBoxKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 白盒密钥的全局唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId
        
        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # EnableWhiteBoxKey返回参数结构体
      class EnableWhiteBoxKeyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # EnableWhiteBoxKeys请求参数结构体
      class EnableWhiteBoxKeysRequest < TencentCloud::Common::AbstractModel
        # @param KeyIds: 白盒密钥的全局唯一标识符列表。注意：要确保所有提供的KeyId是格式有效的，没有重复，个数不超过50个，并且都是有效存在的。
        # @type KeyIds: Array

        attr_accessor :KeyIds
        
        def initialize(keyids=nil)
          @KeyIds = keyids
        end

        def deserialize(params)
          @KeyIds = params['KeyIds']
        end
      end

      # EnableWhiteBoxKeys返回参数结构体
      class EnableWhiteBoxKeysResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # EncryptByWhiteBox请求参数结构体
      class EncryptByWhiteBoxRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 白盒密钥的全局唯一标识符
        # @type KeyId: String
        # @param PlainText: 待加密的文本， base64编码，文本的原始长度最大不超过4KB
        # @type PlainText: String
        # @param InitializationVector: 初始化向量，大小为 16 Bytes，加密算法会使用到, base64编码；如果不传，则由后端服务随机生成。用户需要自行保存该值，作为解密的参数。
        # @type InitializationVector: String

        attr_accessor :KeyId, :PlainText, :InitializationVector
        
        def initialize(keyid=nil, plaintext=nil, initializationvector=nil)
          @KeyId = keyid
          @PlainText = plaintext
          @InitializationVector = initializationvector
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @PlainText = params['PlainText']
          @InitializationVector = params['InitializationVector']
        end
      end

      # EncryptByWhiteBox返回参数结构体
      class EncryptByWhiteBoxResponse < TencentCloud::Common::AbstractModel
        # @param InitializationVector: 初始化向量，加密算法会使用到, base64编码。如果由调用方在入参中传入，则原样返回。如果调用方没有传入，则后端服务随机生成，并返回
        # @type InitializationVector: String
        # @param CipherText: 加密后的密文，base64编码
        # @type CipherText: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InitializationVector, :CipherText, :RequestId
        
        def initialize(initializationvector=nil, ciphertext=nil, requestid=nil)
          @InitializationVector = initializationvector
          @CipherText = ciphertext
          @RequestId = requestid
        end

        def deserialize(params)
          @InitializationVector = params['InitializationVector']
          @CipherText = params['CipherText']
          @RequestId = params['RequestId']
        end
      end

      # Encrypt请求参数结构体
      class EncryptRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 调用CreateKey生成的CMK全局唯一标识符
        # @type KeyId: String
        # @param Plaintext: 被加密的明文数据，该字段必须使用base64编码，原文最大长度支持4K
        # @type Plaintext: String
        # @param EncryptionContext: key/value对的json字符串，如果指定了该参数，则在调用Decrypt API时需要提供同样的参数，最大支持1024个字符
        # @type EncryptionContext: String

        attr_accessor :KeyId, :Plaintext, :EncryptionContext
        
        def initialize(keyid=nil, plaintext=nil, encryptioncontext=nil)
          @KeyId = keyid
          @Plaintext = plaintext
          @EncryptionContext = encryptioncontext
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Plaintext = params['Plaintext']
          @EncryptionContext = params['EncryptionContext']
        end
      end

      # Encrypt返回参数结构体
      class EncryptResponse < TencentCloud::Common::AbstractModel
        # @param CiphertextBlob: 加密后经过base64编码的密文
        # @type CiphertextBlob: String
        # @param KeyId: 加密使用的CMK的全局唯一标识
        # @type KeyId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CiphertextBlob, :KeyId, :RequestId
        
        def initialize(ciphertextblob=nil, keyid=nil, requestid=nil)
          @CiphertextBlob = ciphertextblob
          @KeyId = keyid
          @RequestId = requestid
        end

        def deserialize(params)
          @CiphertextBlob = params['CiphertextBlob']
          @KeyId = params['KeyId']
          @RequestId = params['RequestId']
        end
      end

      # GenerateDataKey请求参数结构体
      class GenerateDataKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK全局唯一标识符
        # @type KeyId: String
        # @param KeySpec: 指定生成Datakey的加密算法以及Datakey大小，AES_128或者AES_256。KeySpec 和 NumberOfBytes 必须指定一个
        # @type KeySpec: String
        # @param NumberOfBytes: 生成的DataKey的长度，同时指定NumberOfBytes和KeySpec时，以NumberOfBytes为准。最小值为1， 最大值为1024。KeySpec 和 NumberOfBytes 必须指定一个
        # @type NumberOfBytes: Integer
        # @param EncryptionContext: key/value对的json字符串，如果使用该字段，则返回的DataKey在解密时需要填入相同的字符串
        # @type EncryptionContext: String

        attr_accessor :KeyId, :KeySpec, :NumberOfBytes, :EncryptionContext
        
        def initialize(keyid=nil, keyspec=nil, numberofbytes=nil, encryptioncontext=nil)
          @KeyId = keyid
          @KeySpec = keyspec
          @NumberOfBytes = numberofbytes
          @EncryptionContext = encryptioncontext
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @KeySpec = params['KeySpec']
          @NumberOfBytes = params['NumberOfBytes']
          @EncryptionContext = params['EncryptionContext']
        end
      end

      # GenerateDataKey返回参数结构体
      class GenerateDataKeyResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的全局唯一标识
        # @type KeyId: String
        # @param Plaintext: 生成的数据密钥DataKey的明文，该明文使用base64进行了编码，需base64解码后作为数据密钥本地使用
        # @type Plaintext: String
        # @param CiphertextBlob: 数据密钥DataKey加密后的密文，用户需要自行保存该密文，KMS不托管用户的数据密钥。可以通过Decrypt接口从CiphertextBlob中获取数据密钥DataKey明文
        # @type CiphertextBlob: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :Plaintext, :CiphertextBlob, :RequestId
        
        def initialize(keyid=nil, plaintext=nil, ciphertextblob=nil, requestid=nil)
          @KeyId = keyid
          @Plaintext = plaintext
          @CiphertextBlob = ciphertextblob
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Plaintext = params['Plaintext']
          @CiphertextBlob = params['CiphertextBlob']
          @RequestId = params['RequestId']
        end
      end

      # GenerateRandom请求参数结构体
      class GenerateRandomRequest < TencentCloud::Common::AbstractModel
        # @param NumberOfBytes: 生成的随机数的长度。最小值为1， 最大值为1024。
        # @type NumberOfBytes: Integer

        attr_accessor :NumberOfBytes
        
        def initialize(numberofbytes=nil)
          @NumberOfBytes = numberofbytes
        end

        def deserialize(params)
          @NumberOfBytes = params['NumberOfBytes']
        end
      end

      # GenerateRandom返回参数结构体
      class GenerateRandomResponse < TencentCloud::Common::AbstractModel
        # @param Plaintext: 生成的随机数的明文，该明文使用base64编码，用户需要使用base64解码得到明文。
        # @type Plaintext: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Plaintext, :RequestId
        
        def initialize(plaintext=nil, requestid=nil)
          @Plaintext = plaintext
          @RequestId = requestid
        end

        def deserialize(params)
          @Plaintext = params['Plaintext']
          @RequestId = params['RequestId']
        end
      end

      # GetKeyRotationStatus请求参数结构体
      class GetKeyRotationStatusRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK唯一标识符
        # @type KeyId: String

        attr_accessor :KeyId
        
        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # GetKeyRotationStatus返回参数结构体
      class GetKeyRotationStatusResponse < TencentCloud::Common::AbstractModel
        # @param KeyRotationEnabled: 密钥轮换是否开启
        # @type KeyRotationEnabled: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyRotationEnabled, :RequestId
        
        def initialize(keyrotationenabled=nil, requestid=nil)
          @KeyRotationEnabled = keyrotationenabled
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyRotationEnabled = params['KeyRotationEnabled']
          @RequestId = params['RequestId']
        end
      end

      # GetParametersForImport请求参数结构体
      class GetParametersForImportRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的唯一标识，获取密钥参数的CMK必须是EXTERNAL类型，即在CreateKey时指定Type=2 类型的CMK。
        # @type KeyId: String
        # @param WrappingAlgorithm: 指定加密密钥材料的算法，目前支持RSAES_PKCS1_V1_5、RSAES_OAEP_SHA_1、RSAES_OAEP_SHA_256
        # @type WrappingAlgorithm: String
        # @param WrappingKeySpec: 指定加密密钥材料的类型，目前只支持RSA_2048
        # @type WrappingKeySpec: String

        attr_accessor :KeyId, :WrappingAlgorithm, :WrappingKeySpec
        
        def initialize(keyid=nil, wrappingalgorithm=nil, wrappingkeyspec=nil)
          @KeyId = keyid
          @WrappingAlgorithm = wrappingalgorithm
          @WrappingKeySpec = wrappingkeyspec
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @WrappingAlgorithm = params['WrappingAlgorithm']
          @WrappingKeySpec = params['WrappingKeySpec']
        end
      end

      # GetParametersForImport返回参数结构体
      class GetParametersForImportResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的唯一标识，用于指定目标导入密钥材料的CMK。
        # @type KeyId: String
        # @param ImportToken: 导入密钥材料需要的token，用于作为 ImportKeyMaterial 的参数。
        # @type ImportToken: String
        # @param PublicKey: 用于加密密钥材料的RSA公钥，base64编码。使用PublicKey base64解码后的公钥将导入密钥进行加密后作为 ImportKeyMaterial 的参数。
        # @type PublicKey: String
        # @param ParametersValidTo: 该导出token和公钥的有效期，超过该时间后无法导入，需要重新调用GetParametersForImport获取。
        # @type ParametersValidTo: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :ImportToken, :PublicKey, :ParametersValidTo, :RequestId
        
        def initialize(keyid=nil, importtoken=nil, publickey=nil, parametersvalidto=nil, requestid=nil)
          @KeyId = keyid
          @ImportToken = importtoken
          @PublicKey = publickey
          @ParametersValidTo = parametersvalidto
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @ImportToken = params['ImportToken']
          @PublicKey = params['PublicKey']
          @ParametersValidTo = params['ParametersValidTo']
          @RequestId = params['RequestId']
        end
      end

      # GetPublicKey请求参数结构体
      class GetPublicKeyRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的唯一标识。
        # @type KeyId: String

        attr_accessor :KeyId
        
        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # GetPublicKey返回参数结构体
      class GetPublicKeyResponse < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的唯一标识。
        # @type KeyId: String
        # @param PublicKey: 经过base64编码的公钥内容。
        # @type PublicKey: String
        # @param PublicKeyPem: PEM格式的公钥内容。
        # @type PublicKeyPem: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :KeyId, :PublicKey, :PublicKeyPem, :RequestId
        
        def initialize(keyid=nil, publickey=nil, publickeypem=nil, requestid=nil)
          @KeyId = keyid
          @PublicKey = publickey
          @PublicKeyPem = publickeypem
          @RequestId = requestid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @PublicKey = params['PublicKey']
          @PublicKeyPem = params['PublicKeyPem']
          @RequestId = params['RequestId']
        end
      end

      # GetServiceStatus请求参数结构体
      class GetServiceStatusRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # GetServiceStatus返回参数结构体
      class GetServiceStatusResponse < TencentCloud::Common::AbstractModel
        # @param ServiceEnabled: KMS服务是否开通， true 表示已开通
        # @type ServiceEnabled: Boolean
        # @param InvalidType: 服务不可用类型： 0-未购买，1-正常， 2-欠费停服， 3-资源释放
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InvalidType: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ServiceEnabled, :InvalidType, :RequestId
        
        def initialize(serviceenabled=nil, invalidtype=nil, requestid=nil)
          @ServiceEnabled = serviceenabled
          @InvalidType = invalidtype
          @RequestId = requestid
        end

        def deserialize(params)
          @ServiceEnabled = params['ServiceEnabled']
          @InvalidType = params['InvalidType']
          @RequestId = params['RequestId']
        end
      end

      # ImportKeyMaterial请求参数结构体
      class ImportKeyMaterialRequest < TencentCloud::Common::AbstractModel
        # @param EncryptedKeyMaterial: 使用GetParametersForImport 返回的PublicKey加密后的密钥材料base64编码。对于国密版本region的KMS，导入的密钥材料长度要求为 128 bit，FIPS版本region的KMS， 导入的密钥材料长度要求为 256 bit。
        # @type EncryptedKeyMaterial: String
        # @param ImportToken: 通过调用GetParametersForImport获得的导入令牌。
        # @type ImportToken: String
        # @param KeyId: 指定导入密钥材料的CMK，需要和GetParametersForImport 指定的CMK相同。
        # @type KeyId: String
        # @param ValidTo: 密钥材料过期时间 unix 时间戳，不指定或者 0 表示密钥材料不会过期，若指定过期时间，需要大于当前时间点，最大支持 2147443200。
        # @type ValidTo: Integer

        attr_accessor :EncryptedKeyMaterial, :ImportToken, :KeyId, :ValidTo
        
        def initialize(encryptedkeymaterial=nil, importtoken=nil, keyid=nil, validto=nil)
          @EncryptedKeyMaterial = encryptedkeymaterial
          @ImportToken = importtoken
          @KeyId = keyid
          @ValidTo = validto
        end

        def deserialize(params)
          @EncryptedKeyMaterial = params['EncryptedKeyMaterial']
          @ImportToken = params['ImportToken']
          @KeyId = params['KeyId']
          @ValidTo = params['ValidTo']
        end
      end

      # ImportKeyMaterial返回参数结构体
      class ImportKeyMaterialResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 返回CMK列表信息
      class Key < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的全局唯一标识。
        # @type KeyId: String

        attr_accessor :KeyId
        
        def initialize(keyid=nil)
          @KeyId = keyid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
        end
      end

      # CMK属性信息
      class KeyMetadata < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的全局唯一标识
        # @type KeyId: String
        # @param Alias: 作为密钥更容易辨识，更容易被人看懂的别名
        # @type Alias: String
        # @param CreateTime: 密钥创建时间
        # @type CreateTime: Integer
        # @param Description: CMK的描述
        # @type Description: String
        # @param KeyState: CMK的状态， 取值为：Enabled | Disabled | PendingDelete | PendingImport
        # @type KeyState: String
        # @param KeyUsage: CMK用途，取值为: ENCRYPT_DECRYPT | ASYMMETRIC_DECRYPT_RSA_2048 | ASYMMETRIC_DECRYPT_SM2
        # @type KeyUsage: String
        # @param Type: CMK类型，2 表示符合FIPS标准，4表示符合国密标准
        # @type Type: Integer
        # @param CreatorUin: 创建者
        # @type CreatorUin: Integer
        # @param KeyRotationEnabled: 是否开启了密钥轮换功能
        # @type KeyRotationEnabled: Boolean
        # @param Owner: CMK的创建者，用户创建的为 user，授权各云产品自动创建的为对应的产品名
        # @type Owner: String
        # @param NextRotateTime: 在密钥轮换开启状态下，下次轮换的时间
        # @type NextRotateTime: Integer
        # @param DeletionDate: 计划删除的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DeletionDate: Integer
        # @param Origin: CMK 密钥材料类型，由KMS创建的为： TENCENT_KMS， 由用户导入的类型为：EXTERNAL
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Origin: String
        # @param ValidTo: 在Origin为  EXTERNAL 时有效，表示密钥材料的有效日期， 0 表示不过期
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ValidTo: Integer
        # @param ResourceId: 资源ID，格式：creatorUin/$creatorUin/$keyId
        # @type ResourceId: String

        attr_accessor :KeyId, :Alias, :CreateTime, :Description, :KeyState, :KeyUsage, :Type, :CreatorUin, :KeyRotationEnabled, :Owner, :NextRotateTime, :DeletionDate, :Origin, :ValidTo, :ResourceId
        
        def initialize(keyid=nil, alias=nil, createtime=nil, description=nil, keystate=nil, keyusage=nil, type=nil, creatoruin=nil, keyrotationenabled=nil, owner=nil, nextrotatetime=nil, deletiondate=nil, origin=nil, validto=nil, resourceid=nil)
          @KeyId = keyid
          @Alias = alias
          @CreateTime = createtime
          @Description = description
          @KeyState = keystate
          @KeyUsage = keyusage
          @Type = type
          @CreatorUin = creatoruin
          @KeyRotationEnabled = keyrotationenabled
          @Owner = owner
          @NextRotateTime = nextrotatetime
          @DeletionDate = deletiondate
          @Origin = origin
          @ValidTo = validto
          @ResourceId = resourceid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Alias = params['Alias']
          @CreateTime = params['CreateTime']
          @Description = params['Description']
          @KeyState = params['KeyState']
          @KeyUsage = params['KeyUsage']
          @Type = params['Type']
          @CreatorUin = params['CreatorUin']
          @KeyRotationEnabled = params['KeyRotationEnabled']
          @Owner = params['Owner']
          @NextRotateTime = params['NextRotateTime']
          @DeletionDate = params['DeletionDate']
          @Origin = params['Origin']
          @ValidTo = params['ValidTo']
          @ResourceId = params['ResourceId']
        end
      end

      # ListAlgorithms请求参数结构体
      class ListAlgorithmsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # ListAlgorithms返回参数结构体
      class ListAlgorithmsResponse < TencentCloud::Common::AbstractModel
        # @param SymmetricAlgorithms: 本地区支持的对称加密算法
        # @type SymmetricAlgorithms: Array
        # @param AsymmetricAlgorithms: 本地区支持的非对称加密算法
        # @type AsymmetricAlgorithms: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SymmetricAlgorithms, :AsymmetricAlgorithms, :RequestId
        
        def initialize(symmetricalgorithms=nil, asymmetricalgorithms=nil, requestid=nil)
          @SymmetricAlgorithms = symmetricalgorithms
          @AsymmetricAlgorithms = asymmetricalgorithms
          @RequestId = requestid
        end

        def deserialize(params)
          @SymmetricAlgorithms = params['SymmetricAlgorithms']
          @AsymmetricAlgorithms = params['AsymmetricAlgorithms']
          @RequestId = params['RequestId']
        end
      end

      # ListKeyDetail请求参数结构体
      class ListKeyDetailRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 含义跟 SQL 查询的 Offset 一致，表示本次获取从按一定顺序排列数组的第 Offset 个元素开始，缺省为0
        # @type Offset: Integer
        # @param Limit: 含义跟 SQL 查询的 Limit 一致，表示本次最多获取 Limit 个元素。缺省值为10，最大值为200
        # @type Limit: Integer
        # @param Role: 根据创建者角色筛选，默认 0 表示用户自己创建的cmk， 1 表示授权其它云产品自动创建的cmk
        # @type Role: Integer
        # @param OrderType: 根据CMK创建时间排序， 0 表示按照降序排序，1表示按照升序排序
        # @type OrderType: Integer
        # @param KeyState: 根据CMK状态筛选， 0表示全部CMK， 1 表示仅查询Enabled CMK， 2 表示仅查询Disabled CMK，3 表示查询PendingDelete 状态的CMK(处于计划删除状态的Key)，4 表示查询 PendingImport 状态的CMK
        # @type KeyState: Integer
        # @param SearchKeyAlias: 根据KeyId或者Alias进行模糊匹配查询
        # @type SearchKeyAlias: String
        # @param Origin: 根据CMK类型筛选， "TENCENT_KMS" 表示筛选密钥材料由KMS创建的CMK， "EXTERNAL" 表示筛选密钥材料需要用户导入的 EXTERNAL类型CMK，"ALL" 或者不设置表示两种类型都查询，大小写敏感。
        # @type Origin: String
        # @param KeyUsage: 根据CMK的KeyUsage筛选，ALL表示筛选全部，可使用的参数为：ALL 或 ENCRYPT_DECRYPT 或 ASYMMETRIC_DECRYPT_RSA_2048 或 ASYMMETRIC_DECRYPT_SM2，为空则默认筛选ENCRYPT_DECRYPT类型
        # @type KeyUsage: String

        attr_accessor :Offset, :Limit, :Role, :OrderType, :KeyState, :SearchKeyAlias, :Origin, :KeyUsage
        
        def initialize(offset=nil, limit=nil, role=nil, ordertype=nil, keystate=nil, searchkeyalias=nil, origin=nil, keyusage=nil)
          @Offset = offset
          @Limit = limit
          @Role = role
          @OrderType = ordertype
          @KeyState = keystate
          @SearchKeyAlias = searchkeyalias
          @Origin = origin
          @KeyUsage = keyusage
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Role = params['Role']
          @OrderType = params['OrderType']
          @KeyState = params['KeyState']
          @SearchKeyAlias = params['SearchKeyAlias']
          @Origin = params['Origin']
          @KeyUsage = params['KeyUsage']
        end
      end

      # ListKeyDetail返回参数结构体
      class ListKeyDetailResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: CMK的总数量
        # @type TotalCount: Integer
        # @param KeyMetadatas: 返回的属性信息列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyMetadatas: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :KeyMetadatas, :RequestId
        
        def initialize(totalcount=nil, keymetadatas=nil, requestid=nil)
          @TotalCount = totalcount
          @KeyMetadatas = keymetadatas
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @KeyMetadatas = params['KeyMetadatas']
          @RequestId = params['RequestId']
        end
      end

      # ListKeys请求参数结构体
      class ListKeysRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 含义跟 SQL 查询的 Offset 一致，表示本次获取从按一定顺序排列数组的第 Offset 个元素开始，缺省为0
        # @type Offset: Integer
        # @param Limit: 含义跟 SQL 查询的 Limit 一致，表示本次获最多获取 Limit 个元素。缺省值为10，最大值为200
        # @type Limit: Integer
        # @param Role: 根据创建者角色筛选，默认 0 表示用户自己创建的cmk， 1 表示授权其它云产品自动创建的cmk
        # @type Role: Integer

        attr_accessor :Offset, :Limit, :Role
        
        def initialize(offset=nil, limit=nil, role=nil)
          @Offset = offset
          @Limit = limit
          @Role = role
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Role = params['Role']
        end
      end

      # ListKeys返回参数结构体
      class ListKeysResponse < TencentCloud::Common::AbstractModel
        # @param Keys: CMK列表数组
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Keys: Array
        # @param TotalCount: CMK的总数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Keys, :TotalCount, :RequestId
        
        def initialize(keys=nil, totalcount=nil, requestid=nil)
          @Keys = keys
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @Keys = params['Keys']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # OverwriteWhiteBoxDeviceFingerprints请求参数结构体
      class OverwriteWhiteBoxDeviceFingerprintsRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: 白盒密钥ID
        # @type KeyId: String
        # @param DeviceFingerprints: 设备指纹列表，如果列表为空，则表示删除该密钥对应的所有指纹信息。列表最大长度不超过200。
        # @type DeviceFingerprints: Array

        attr_accessor :KeyId, :DeviceFingerprints
        
        def initialize(keyid=nil, devicefingerprints=nil)
          @KeyId = keyid
          @DeviceFingerprints = devicefingerprints
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @DeviceFingerprints = params['DeviceFingerprints']
        end
      end

      # OverwriteWhiteBoxDeviceFingerprints返回参数结构体
      class OverwriteWhiteBoxDeviceFingerprintsResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ReEncrypt请求参数结构体
      class ReEncryptRequest < TencentCloud::Common::AbstractModel
        # @param CiphertextBlob: 需要重新加密的密文
        # @type CiphertextBlob: String
        # @param DestinationKeyId: 重新加密使用的CMK，如果为空，则使用密文原有的CMK重新加密（若密钥没有轮换则密文不会刷新）
        # @type DestinationKeyId: String
        # @param SourceEncryptionContext: CiphertextBlob 密文加密时使用的key/value对的json字符串。如果加密时未使用，则为空
        # @type SourceEncryptionContext: String
        # @param DestinationEncryptionContext: 重新加密使用的key/value对的json字符串，如果使用该字段，则返回的新密文在解密时需要填入相同的字符串
        # @type DestinationEncryptionContext: String

        attr_accessor :CiphertextBlob, :DestinationKeyId, :SourceEncryptionContext, :DestinationEncryptionContext
        
        def initialize(ciphertextblob=nil, destinationkeyid=nil, sourceencryptioncontext=nil, destinationencryptioncontext=nil)
          @CiphertextBlob = ciphertextblob
          @DestinationKeyId = destinationkeyid
          @SourceEncryptionContext = sourceencryptioncontext
          @DestinationEncryptionContext = destinationencryptioncontext
        end

        def deserialize(params)
          @CiphertextBlob = params['CiphertextBlob']
          @DestinationKeyId = params['DestinationKeyId']
          @SourceEncryptionContext = params['SourceEncryptionContext']
          @DestinationEncryptionContext = params['DestinationEncryptionContext']
        end
      end

      # ReEncrypt返回参数结构体
      class ReEncryptResponse < TencentCloud::Common::AbstractModel
        # @param CiphertextBlob: 重新加密后的密文
        # @type CiphertextBlob: String
        # @param KeyId: 重新加密使用的CMK
        # @type KeyId: String
        # @param SourceKeyId: 重新加密前密文使用的CMK
        # @type SourceKeyId: String
        # @param ReEncrypted: true表示密文已经重新加密。同一个CMK进行重加密，在密钥没有发生轮换的情况下不会进行实际重新加密操作，返回原密文
        # @type ReEncrypted: Boolean
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CiphertextBlob, :KeyId, :SourceKeyId, :ReEncrypted, :RequestId
        
        def initialize(ciphertextblob=nil, keyid=nil, sourcekeyid=nil, reencrypted=nil, requestid=nil)
          @CiphertextBlob = ciphertextblob
          @KeyId = keyid
          @SourceKeyId = sourcekeyid
          @ReEncrypted = reencrypted
          @RequestId = requestid
        end

        def deserialize(params)
          @CiphertextBlob = params['CiphertextBlob']
          @KeyId = params['KeyId']
          @SourceKeyId = params['SourceKeyId']
          @ReEncrypted = params['ReEncrypted']
          @RequestId = params['RequestId']
        end
      end

      # ScheduleKeyDeletion请求参数结构体
      class ScheduleKeyDeletionRequest < TencentCloud::Common::AbstractModel
        # @param KeyId: CMK的唯一标志
        # @type KeyId: String
        # @param PendingWindowInDays: 计划删除时间区间[7,30]
        # @type PendingWindowInDays: Integer

        attr_accessor :KeyId, :PendingWindowInDays
        
        def initialize(keyid=nil, pendingwindowindays=nil)
          @KeyId = keyid
          @PendingWindowInDays = pendingwindowindays
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @PendingWindowInDays = params['PendingWindowInDays']
        end
      end

      # ScheduleKeyDeletion返回参数结构体
      class ScheduleKeyDeletionResponse < TencentCloud::Common::AbstractModel
        # @param DeletionDate: 计划删除执行时间
        # @type DeletionDate: Integer
        # @param KeyId: 唯一标志被计划删除的CMK
        # @type KeyId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DeletionDate, :KeyId, :RequestId
        
        def initialize(deletiondate=nil, keyid=nil, requestid=nil)
          @DeletionDate = deletiondate
          @KeyId = keyid
          @RequestId = requestid
        end

        def deserialize(params)
          @DeletionDate = params['DeletionDate']
          @KeyId = params['KeyId']
          @RequestId = params['RequestId']
        end
      end

      # 标签键和标签值
      class Tag < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue
        
        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # UpdateAlias请求参数结构体
      class UpdateAliasRequest < TencentCloud::Common::AbstractModel
        # @param Alias: 新的别名，1-60个字符或数字的组合
        # @type Alias: String
        # @param KeyId: CMK的全局唯一标识符
        # @type KeyId: String

        attr_accessor :Alias, :KeyId
        
        def initialize(alias=nil, keyid=nil)
          @Alias = alias
          @KeyId = keyid
        end

        def deserialize(params)
          @Alias = params['Alias']
          @KeyId = params['KeyId']
        end
      end

      # UpdateAlias返回参数结构体
      class UpdateAliasResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # UpdateKeyDescription请求参数结构体
      class UpdateKeyDescriptionRequest < TencentCloud::Common::AbstractModel
        # @param Description: 新的描述信息，最大支持1024字节
        # @type Description: String
        # @param KeyId: 需要修改描述信息的CMK ID
        # @type KeyId: String

        attr_accessor :Description, :KeyId
        
        def initialize(description=nil, keyid=nil)
          @Description = description
          @KeyId = keyid
        end

        def deserialize(params)
          @Description = params['Description']
          @KeyId = params['KeyId']
        end
      end

      # UpdateKeyDescription返回参数结构体
      class UpdateKeyDescriptionResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 白盒密钥信息
      class WhiteboxKeyInfo < TencentCloud::Common::AbstractModel
        # @param KeyId: 白盒密钥的全局唯一标识符
        # @type KeyId: String
        # @param Alias: 作为密钥更容易辨识，更容易被人看懂的别名， 不可为空，1-60个字母数字 - _ 的组合，首字符必须为字母或者数字. 不可重复
        # @type Alias: String
        # @param CreatorUin: 创建者
        # @type CreatorUin: Integer
        # @param Description: 密钥的描述信息
        # @type Description: String
        # @param CreateTime: 密钥创建时间，Unix时间戳
        # @type CreateTime: Integer
        # @param Status: 白盒密钥的状态， 取值为：Enabled | Disabled
        # @type Status: String
        # @param OwnerUin: 创建者
        # @type OwnerUin: Integer
        # @param Algorithm: 密钥所用的算法类型
        # @type Algorithm: String
        # @param EncryptKey: 白盒加密密钥，base64编码
        # @type EncryptKey: String
        # @param DecryptKey: 白盒解密密钥，base64编码
        # @type DecryptKey: String
        # @param ResourceId: 资源ID，格式：creatorUin/$creatorUin/$keyId
        # @type ResourceId: String

        attr_accessor :KeyId, :Alias, :CreatorUin, :Description, :CreateTime, :Status, :OwnerUin, :Algorithm, :EncryptKey, :DecryptKey, :ResourceId
        
        def initialize(keyid=nil, alias=nil, creatoruin=nil, description=nil, createtime=nil, status=nil, owneruin=nil, algorithm=nil, encryptkey=nil, decryptkey=nil, resourceid=nil)
          @KeyId = keyid
          @Alias = alias
          @CreatorUin = creatoruin
          @Description = description
          @CreateTime = createtime
          @Status = status
          @OwnerUin = owneruin
          @Algorithm = algorithm
          @EncryptKey = encryptkey
          @DecryptKey = decryptkey
          @ResourceId = resourceid
        end

        def deserialize(params)
          @KeyId = params['KeyId']
          @Alias = params['Alias']
          @CreatorUin = params['CreatorUin']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          @OwnerUin = params['OwnerUin']
          @Algorithm = params['Algorithm']
          @EncryptKey = params['EncryptKey']
          @DecryptKey = params['DecryptKey']
          @ResourceId = params['ResourceId']
        end
      end

    end
  end
end
