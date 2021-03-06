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
  module Rce
    module V20201103
      # 账号信息。
      class AccountInfo < TencentCloud::Common::AbstractModel
        # @param AccountType: 用户账号类型（默认开通 QQ 开放账号、手机号，手机 MD5 账号类型查询。如需使用微信开放账号，则需要 提交工单 由腾讯云进行资格审核，审核通过后方可正常使用微信开放账号）：
        # 1：QQ开放账号。
        # 2：微信开放账号。
        # 4：手机号（暂仅支持国内手机号）。
        # 8：设备号（imei/imeiMD5/idfa/idfaMd5）。
        # 0：其他。
        # 10004：手机号MD5（标准中国大陆手机号11位，MD5后取32位小写值）
        # @type AccountType: Integer
        # @param QQAccount: QQ账号信息，AccountType是1时，该字段必填。
        # @type QQAccount: :class:`Tencentcloud::Rce.v20201103.models.QQAccountInfo`
        # @param WeChatAccount: 微信账号信息，AccountType是2时，该字段必填。
        # @type WeChatAccount: :class:`Tencentcloud::Rce.v20201103.models.WeChatAccountInfo`
        # @param OtherAccount: 其它账号信息，AccountType是0、4、8或10004时，该字段必填。
        # @type OtherAccount: :class:`Tencentcloud::Rce.v20201103.models.OtherAccountInfo`

        attr_accessor :AccountType, :QQAccount, :WeChatAccount, :OtherAccount
        
        def initialize(accounttype=nil, qqaccount=nil, wechataccount=nil, otheraccount=nil)
          @AccountType = accounttype
          @QQAccount = qqaccount
          @WeChatAccount = wechataccount
          @OtherAccount = otheraccount
        end

        def deserialize(params)
          @AccountType = params['AccountType']
          unless params['QQAccount'].nil?
            @QQAccount = QQAccountInfo.new.deserialize(params[QQAccount])
          end
          unless params['WeChatAccount'].nil?
            @WeChatAccount = WeChatAccountInfo.new.deserialize(params[WeChatAccount])
          end
          unless params['OtherAccount'].nil?
            @OtherAccount = OtherAccountInfo.new.deserialize(params[OtherAccount])
          end
        end
      end

      # 入参的详细参数信息
      class InputDetails < TencentCloud::Common::AbstractModel
        # @param FieldName: 字段名称
        # @type FieldName: String
        # @param FieldValue: 字段值
        # @type FieldValue: String

        attr_accessor :FieldName, :FieldValue
        
        def initialize(fieldname=nil, fieldvalue=nil)
          @FieldName = fieldname
          @FieldValue = fieldvalue
        end

        def deserialize(params)
          @FieldName = params['FieldName']
          @FieldValue = params['FieldValue']
        end
      end

      # 全栈式风控引擎入参
      class InputManageMarketingRisk < TencentCloud::Common::AbstractModel
        # @param Account: 账号信息。
        # @type Account: :class:`Tencentcloud::Rce.v20201103.models.AccountInfo`
        # @param SceneCode: 场景code
        # @type SceneCode: String
        # @param UserIp: 登录来源的外网IP
        # @type UserIp: String
        # @param PostTime: 用户操作时间戳，单位秒（格林威治时间精确到秒，如1501590972）。
        # @type PostTime: Integer
        # @param UserId: 用户唯一标识。
        # @type UserId: String
        # @param DeviceToken: 设备指纹token。
        # @type DeviceToken: String
        # @param DeviceBusinessId: 设备指纹BusinessId
        # @type DeviceBusinessId: Integer
        # @param BusinessId: 业务ID。网站或应用在多个业务中使用此服务，通过此ID区分统计数据。
        # @type BusinessId: Integer
        # @param Nickname: 昵称，UTF-8 编码。
        # @type Nickname: String
        # @param EmailAddress: 用户邮箱地址（非系统自动生成）。
        # @type EmailAddress: String
        # @param CheckDevice: 是否识别设备异常：
        # 0：不识别。
        # 1：识别。
        # @type CheckDevice: Integer
        # @param CookieHash: 用户HTTP请求中的Cookie进行2次hash的值，只要保证相同Cookie的hash值一致即可。
        # @type CookieHash: String
        # @param Referer: 用户HTTP请求的Referer值。
        # @type Referer: String
        # @param UserAgent: 用户HTTP请求的User-Agent值。
        # @type UserAgent: String
        # @param XForwardedFor: 用户HTTP请求的X-Forwarded-For值。
        # @type XForwardedFor: String
        # @param MacAddress: MAC地址或设备唯一标识。
        # @type MacAddress: String
        # @param VendorId: 手机制造商ID，如果手机注册，请带上此信息。
        # @type VendorId: String
        # @param DeviceType: 设备类型：
        # 1：Android
        # 2：IOS
        # @type DeviceType: Integer
        # @param Details: 详细信息
        # @type Details: Array
        # @param Sponsor: 可选填写。详情请跳转至SponsorInfo查看。
        # @type Sponsor: :class:`Tencentcloud::Rce.v20201103.models.SponsorInfo`
        # @param OnlineScam: 可选填写。详情请跳转至OnlineScamInfo查看。
        # @type OnlineScam: :class:`Tencentcloud::Rce.v20201103.models.OnlineScamInfo`

        attr_accessor :Account, :SceneCode, :UserIp, :PostTime, :UserId, :DeviceToken, :DeviceBusinessId, :BusinessId, :Nickname, :EmailAddress, :CheckDevice, :CookieHash, :Referer, :UserAgent, :XForwardedFor, :MacAddress, :VendorId, :DeviceType, :Details, :Sponsor, :OnlineScam
        
        def initialize(account=nil, scenecode=nil, userip=nil, posttime=nil, userid=nil, devicetoken=nil, devicebusinessid=nil, businessid=nil, nickname=nil, emailaddress=nil, checkdevice=nil, cookiehash=nil, referer=nil, useragent=nil, xforwardedfor=nil, macaddress=nil, vendorid=nil, devicetype=nil, details=nil, sponsor=nil, onlinescam=nil)
          @Account = account
          @SceneCode = scenecode
          @UserIp = userip
          @PostTime = posttime
          @UserId = userid
          @DeviceToken = devicetoken
          @DeviceBusinessId = devicebusinessid
          @BusinessId = businessid
          @Nickname = nickname
          @EmailAddress = emailaddress
          @CheckDevice = checkdevice
          @CookieHash = cookiehash
          @Referer = referer
          @UserAgent = useragent
          @XForwardedFor = xforwardedfor
          @MacAddress = macaddress
          @VendorId = vendorid
          @DeviceType = devicetype
          @Details = details
          @Sponsor = sponsor
          @OnlineScam = onlinescam
        end

        def deserialize(params)
          unless params['Account'].nil?
            @Account = AccountInfo.new.deserialize(params[Account])
          end
          @SceneCode = params['SceneCode']
          @UserIp = params['UserIp']
          @PostTime = params['PostTime']
          @UserId = params['UserId']
          @DeviceToken = params['DeviceToken']
          @DeviceBusinessId = params['DeviceBusinessId']
          @BusinessId = params['BusinessId']
          @Nickname = params['Nickname']
          @EmailAddress = params['EmailAddress']
          @CheckDevice = params['CheckDevice']
          @CookieHash = params['CookieHash']
          @Referer = params['Referer']
          @UserAgent = params['UserAgent']
          @XForwardedFor = params['XForwardedFor']
          @MacAddress = params['MacAddress']
          @VendorId = params['VendorId']
          @DeviceType = params['DeviceType']
          @Details = params['Details']
          unless params['Sponsor'].nil?
            @Sponsor = SponsorInfo.new.deserialize(params[Sponsor])
          end
          unless params['OnlineScam'].nil?
            @OnlineScam = OnlineScamInfo.new.deserialize(params[OnlineScam])
          end
        end
      end

      # ManageMarketingRisk请求参数结构体
      class ManageMarketingRiskRequest < TencentCloud::Common::AbstractModel
        # @param BusinessSecurityData: 业务入参
        # @type BusinessSecurityData: :class:`Tencentcloud::Rce.v20201103.models.InputManageMarketingRisk`

        attr_accessor :BusinessSecurityData
        
        def initialize(businesssecuritydata=nil)
          @BusinessSecurityData = businesssecuritydata
        end

        def deserialize(params)
          unless params['BusinessSecurityData'].nil?
            @BusinessSecurityData = InputManageMarketingRisk.new.deserialize(params[BusinessSecurityData])
          end
        end
      end

      # ManageMarketingRisk返回参数结构体
      class ManageMarketingRiskResponse < TencentCloud::Common::AbstractModel
        # @param Data: 业务出参
        # @type Data: :class:`Tencentcloud::Rce.v20201103.models.OutputManageMarketingRisk`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Data'].nil?
            @Data = OutputManageMarketingRisk.new.deserialize(params[Data])
          end
          @RequestId = params['RequestId']
        end
      end

      # 诈骗信息。
      class OnlineScamInfo < TencentCloud::Common::AbstractModel
        # @param ContentLabel: 内容标签。
        # @type ContentLabel: String
        # @param ContentRiskLevel: 内容风险等级：
        # 0：正常。
        # 1：可疑。
        # @type ContentRiskLevel: Integer
        # @param ContentType: 内容产生形式：
        # 0：对话。
        # 1：广播。
        # @type ContentType: Integer
        # @param FraudType: 诈骗账号类型：
        # 1：11位手机号。
        # 2：QQ账号。
        # @type FraudType: Integer
        # @param FraudAccount: 诈骗账号，手机号或QQ账号。
        # @type FraudAccount: String

        attr_accessor :ContentLabel, :ContentRiskLevel, :ContentType, :FraudType, :FraudAccount
        
        def initialize(contentlabel=nil, contentrisklevel=nil, contenttype=nil, fraudtype=nil, fraudaccount=nil)
          @ContentLabel = contentlabel
          @ContentRiskLevel = contentrisklevel
          @ContentType = contenttype
          @FraudType = fraudtype
          @FraudAccount = fraudaccount
        end

        def deserialize(params)
          @ContentLabel = params['ContentLabel']
          @ContentRiskLevel = params['ContentRiskLevel']
          @ContentType = params['ContentType']
          @FraudType = params['FraudType']
          @FraudAccount = params['FraudAccount']
        end
      end

      # 其它账号信息。
      class OtherAccountInfo < TencentCloud::Common::AbstractModel
        # @param AccountId: 其它账号信息：
        # AccountType是4时，填入真实的手机号（如13123456789）。
        # AccountType是8时，支持 imei、idfa、imeiMD5、idfaMD5 入参。
        # AccountType是0时，填入账号信息。
        # AccountType是10004时，填入手机号的MD5值。
        # 注：imeiMd5 加密方式为：imei 明文小写后，进行 MD5 加密，加密后取小写值。IdfaMd5 加密方式为：idfa 明文大写后，进行 MD5 加密，加密后取小写值。
        # @type AccountId: String
        # @param MobilePhone: 手机号，若 AccountType 是4（手机号）、或10004（手机号 MD5），则无需重复填写，否则填入对应的手机号（如13123456789）。
        # @type MobilePhone: String
        # @param DeviceId: 用户设备号。若 AccountType 是8（设备号），则无需重复填写，否则填入对应的设备号。
        # @type DeviceId: String

        attr_accessor :AccountId, :MobilePhone, :DeviceId
        
        def initialize(accountid=nil, mobilephone=nil, deviceid=nil)
          @AccountId = accountid
          @MobilePhone = mobilephone
          @DeviceId = deviceid
        end

        def deserialize(params)
          @AccountId = params['AccountId']
          @MobilePhone = params['MobilePhone']
          @DeviceId = params['DeviceId']
        end
      end

      # 全栈式风控引擎出参
      class OutputManageMarketingRisk < TencentCloud::Common::AbstractModel
        # @param Code: 返回码。0表示成功，非0标识失败错误码。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Code: Integer
        # @param Message: UTF-8编码，出错消息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Message: String
        # @param Value: 业务详情。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Value: :class:`Tencentcloud::Rce.v20201103.models.OutputManageMarketingRiskValue`
        # @param UUid: 控制台显示的req_id。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UUid: String

        attr_accessor :Code, :Message, :Value, :UUid
        
        def initialize(code=nil, message=nil, value=nil, uuid=nil)
          @Code = code
          @Message = message
          @Value = value
          @UUid = uuid
        end

        def deserialize(params)
          @Code = params['Code']
          @Message = params['Message']
          unless params['Value'].nil?
            @Value = OutputManageMarketingRiskValue.new.deserialize(params[Value])
          end
          @UUid = params['UUid']
        end
      end

      # 全栈式风控引擎出参值
      class OutputManageMarketingRiskValue < TencentCloud::Common::AbstractModel
        # @param UserId: 账号ID。对应输入参数：
        # AccountType是1时，对应QQ的OpenID。
        # AccountType是2时，对应微信的OpenID/UnionID。
        # AccountType是4时，对应手机号。
        # AccountType是8时，对应imei、idfa、imeiMD5或者idfaMD5。
        # AccountType是0时，对应账号信息。
        # AccountType是10004时，对应手机号的MD5。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserId: String
        # @param PostTime: 操作时间戳，单位秒（对应输入参数）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostTime: Integer
        # @param AssociateAccount: 对应输入参数，AccountType 是 QQ 或微信开放账号时，用于标识 QQ 或微信用户登录后关联业务自身的账号ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AssociateAccount: String
        # @param UserIp: 操作来源的外网IP（对应输入参数）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserIp: String
        # @param RiskLevel: 风险值
        # pass : 无恶意
        # review：需要人工审核
        # reject：拒绝，高风险恶意
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskLevel: String
        # @param RiskType: 风险类型，请参考官网风险类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RiskType: Array

        attr_accessor :UserId, :PostTime, :AssociateAccount, :UserIp, :RiskLevel, :RiskType
        
        def initialize(userid=nil, posttime=nil, associateaccount=nil, userip=nil, risklevel=nil, risktype=nil)
          @UserId = userid
          @PostTime = posttime
          @AssociateAccount = associateaccount
          @UserIp = userip
          @RiskLevel = risklevel
          @RiskType = risktype
        end

        def deserialize(params)
          @UserId = params['UserId']
          @PostTime = params['PostTime']
          @AssociateAccount = params['AssociateAccount']
          @UserIp = params['UserIp']
          @RiskLevel = params['RiskLevel']
          @RiskType = params['RiskType']
        end
      end

      # QQ账号信息。
      class QQAccountInfo < TencentCloud::Common::AbstractModel
        # @param QQOpenId: QQ的OpenID。
        # @type QQOpenId: String
        # @param AppIdUser: QQ分配给网站或应用的AppId，用来唯一标识网站或应用。
        # @type AppIdUser: String
        # @param AssociateAccount: 用于标识QQ用户登录后所关联业务自身的账号ID。
        # @type AssociateAccount: String
        # @param MobilePhone: 账号绑定的手机号。
        # @type MobilePhone: String
        # @param DeviceId: 用户设备号。
        # @type DeviceId: String

        attr_accessor :QQOpenId, :AppIdUser, :AssociateAccount, :MobilePhone, :DeviceId
        
        def initialize(qqopenid=nil, appiduser=nil, associateaccount=nil, mobilephone=nil, deviceid=nil)
          @QQOpenId = qqopenid
          @AppIdUser = appiduser
          @AssociateAccount = associateaccount
          @MobilePhone = mobilephone
          @DeviceId = deviceid
        end

        def deserialize(params)
          @QQOpenId = params['QQOpenId']
          @AppIdUser = params['AppIdUser']
          @AssociateAccount = params['AssociateAccount']
          @MobilePhone = params['MobilePhone']
          @DeviceId = params['DeviceId']
        end
      end

      # 网赚防刷相关参数
      class SponsorInfo < TencentCloud::Common::AbstractModel
        # @param SponsorOpenId: 助力场景建议填写：活动发起人微信OpenID。
        # @type SponsorOpenId: String
        # @param SponsorDeviceNumber: 助力场景建议填写：发起人设备号。
        # @type SponsorDeviceNumber: String
        # @param SponsorPhone: 助力场景建议填写：发起人手机号。
        # @type SponsorPhone: String
        # @param SponsorIp: 助力场景建议填写：发起人IP。
        # @type SponsorIp: String
        # @param CampaignUrl: 助力场景建议填写：活动链接。
        # @type CampaignUrl: String

        attr_accessor :SponsorOpenId, :SponsorDeviceNumber, :SponsorPhone, :SponsorIp, :CampaignUrl
        
        def initialize(sponsoropenid=nil, sponsordevicenumber=nil, sponsorphone=nil, sponsorip=nil, campaignurl=nil)
          @SponsorOpenId = sponsoropenid
          @SponsorDeviceNumber = sponsordevicenumber
          @SponsorPhone = sponsorphone
          @SponsorIp = sponsorip
          @CampaignUrl = campaignurl
        end

        def deserialize(params)
          @SponsorOpenId = params['SponsorOpenId']
          @SponsorDeviceNumber = params['SponsorDeviceNumber']
          @SponsorPhone = params['SponsorPhone']
          @SponsorIp = params['SponsorIp']
          @CampaignUrl = params['CampaignUrl']
        end
      end

      # 微信账号信息。
      class WeChatAccountInfo < TencentCloud::Common::AbstractModel
        # @param WeChatOpenId: 微信的OpenID/UnionID 。
        # @type WeChatOpenId: String
        # @param WeChatSubType: 微信开放账号类型：
        # 1：微信公众号/微信第三方登录。
        # 2：微信小程序。
        # @type WeChatSubType: Integer
        # @param RandStr: 随机串。如果WeChatSubType是2，该字段必填。Token签名随机数，建议16个字符。
        # @type RandStr: String
        # @param WeChatAccessToken: 如果WeChatSubType是1，填入授权的access_token（注意：不是普通access_token，详情请参阅官方说明文档。获取网页版本的access_token时，scope字段必需填写snsapi_userinfo。
        # 如果WeChatSubType是2，填入以session_key为密钥签名随机数RandStr（hmac_sha256签名算法）得到的字符串。
        # @type WeChatAccessToken: String
        # @param AssociateAccount: 用于标识微信用户登录后所关联业务自身的账号ID。
        # @type AssociateAccount: String
        # @param MobilePhone: 账号绑定的手机号。
        # @type MobilePhone: String
        # @param DeviceId: 用户设备号。
        # @type DeviceId: String

        attr_accessor :WeChatOpenId, :WeChatSubType, :RandStr, :WeChatAccessToken, :AssociateAccount, :MobilePhone, :DeviceId
        
        def initialize(wechatopenid=nil, wechatsubtype=nil, randstr=nil, wechataccesstoken=nil, associateaccount=nil, mobilephone=nil, deviceid=nil)
          @WeChatOpenId = wechatopenid
          @WeChatSubType = wechatsubtype
          @RandStr = randstr
          @WeChatAccessToken = wechataccesstoken
          @AssociateAccount = associateaccount
          @MobilePhone = mobilephone
          @DeviceId = deviceid
        end

        def deserialize(params)
          @WeChatOpenId = params['WeChatOpenId']
          @WeChatSubType = params['WeChatSubType']
          @RandStr = params['RandStr']
          @WeChatAccessToken = params['WeChatAccessToken']
          @AssociateAccount = params['AssociateAccount']
          @MobilePhone = params['MobilePhone']
          @DeviceId = params['DeviceId']
        end
      end

    end
  end
end

