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
  module Sqlserver
    module V20180328
      # 账号创建信息
      class AccountCreateInfo < TencentCloud::Common::AbstractModel
        # @param UserName: 实例用户名
        # @type UserName: String
        # @param Password: 实例密码
        # @type Password: String
        # @param DBPrivileges: DB权限列表
        # @type DBPrivileges: Array
        # @param Remark: 账号备注信息
        # @type Remark: String
        # @param IsAdmin: 是否为管理员账户，默认为否
        # @type IsAdmin: Boolean

        attr_accessor :UserName, :Password, :DBPrivileges, :Remark, :IsAdmin
        
        def initialize(username=nil, password=nil, dbprivileges=nil, remark=nil, isadmin=nil)
          @UserName = username
          @Password = password
          @DBPrivileges = dbprivileges
          @Remark = remark
          @IsAdmin = isadmin
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Password = params['Password']
          @DBPrivileges = params['DBPrivileges']
          @Remark = params['Remark']
          @IsAdmin = params['IsAdmin']
        end
      end

      # 账户信息详情
      class AccountDetail < TencentCloud::Common::AbstractModel
        # @param Name: 账户名
        # @type Name: String
        # @param Remark: 账户备注
        # @type Remark: String
        # @param CreateTime: 账户创建时间
        # @type CreateTime: String
        # @param Status: 账户状态，1-创建中，2-正常，3-修改中，4-密码重置中，-1-删除中
        # @type Status: Integer
        # @param UpdateTime: 账户更新时间
        # @type UpdateTime: String
        # @param PassTime: 密码更新时间
        # @type PassTime: String
        # @param InternalStatus: 账户内部状态，正常为enable
        # @type InternalStatus: String
        # @param Dbs: 该账户对相关db的读写权限信息
        # @type Dbs: Array

        attr_accessor :Name, :Remark, :CreateTime, :Status, :UpdateTime, :PassTime, :InternalStatus, :Dbs
        
        def initialize(name=nil, remark=nil, createtime=nil, status=nil, updatetime=nil, passtime=nil, internalstatus=nil, dbs=nil)
          @Name = name
          @Remark = remark
          @CreateTime = createtime
          @Status = status
          @UpdateTime = updatetime
          @PassTime = passtime
          @InternalStatus = internalstatus
          @Dbs = dbs
        end

        def deserialize(params)
          @Name = params['Name']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          @UpdateTime = params['UpdateTime']
          @PassTime = params['PassTime']
          @InternalStatus = params['InternalStatus']
          @Dbs = params['Dbs']
        end
      end

      # 实例账号密码信息
      class AccountPassword < TencentCloud::Common::AbstractModel
        # @param UserName: 用户名
        # @type UserName: String
        # @param Password: 密码
        # @type Password: String

        attr_accessor :UserName, :Password
        
        def initialize(username=nil, password=nil)
          @UserName = username
          @Password = password
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Password = params['Password']
        end
      end

      # 数据库账号权限信息。创建数据库时设置
      class AccountPrivilege < TencentCloud::Common::AbstractModel
        # @param UserName: 数据库用户名
        # @type UserName: String
        # @param Privilege: 数据库权限。ReadWrite表示可读写，ReadOnly表示只读
        # @type Privilege: String

        attr_accessor :UserName, :Privilege
        
        def initialize(username=nil, privilege=nil)
          @UserName = username
          @Privilege = privilege
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Privilege = params['Privilege']
        end
      end

      # 数据库账号权限变更信息
      class AccountPrivilegeModifyInfo < TencentCloud::Common::AbstractModel
        # @param UserName: 数据库用户名
        # @type UserName: String
        # @param DBPrivileges: 账号权限变更信息
        # @type DBPrivileges: Array

        attr_accessor :UserName, :DBPrivileges
        
        def initialize(username=nil, dbprivileges=nil)
          @UserName = username
          @DBPrivileges = dbprivileges
        end

        def deserialize(params)
          @UserName = params['UserName']
          @DBPrivileges = params['DBPrivileges']
        end
      end

      # 账户备注信息
      class AccountRemark < TencentCloud::Common::AbstractModel
        # @param UserName: 账户名
        # @type UserName: String
        # @param Remark: 对应账户新的备注信息
        # @type Remark: String

        attr_accessor :UserName, :Remark
        
        def initialize(username=nil, remark=nil)
          @UserName = username
          @Remark = remark
        end

        def deserialize(params)
          @UserName = params['UserName']
          @Remark = params['Remark']
        end
      end

      # 备份文件详细信息
      class Backup < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名
        # @type FileName: String
        # @param Size: 文件大小，单位 KB
        # @type Size: Integer
        # @param StartTime: 备份开始时间
        # @type StartTime: String
        # @param EndTime: 备份结束时间
        # @type EndTime: String
        # @param InternalAddr: 内网下载地址
        # @type InternalAddr: String
        # @param ExternalAddr: 外网下载地址
        # @type ExternalAddr: String
        # @param Id: 备份文件唯一标识，RestoreInstance接口会用到该字段
        # @type Id: Integer
        # @param Status: 备份文件状态（0-创建中；1-成功；2-失败）
        # @type Status: Integer
        # @param DBs: 多库备份时的DB列表
        # @type DBs: Array
        # @param Strategy: 备份策略（0-实例备份；1-多库备份）
        # @type Strategy: Integer
        # @param BackupWay: 备份方式，0-定时备份；1-手动临时备份
        # @type BackupWay: Integer

        attr_accessor :FileName, :Size, :StartTime, :EndTime, :InternalAddr, :ExternalAddr, :Id, :Status, :DBs, :Strategy, :BackupWay
        
        def initialize(filename=nil, size=nil, starttime=nil, endtime=nil, internaladdr=nil, externaladdr=nil, id=nil, status=nil, dbs=nil, strategy=nil, backupway=nil)
          @FileName = filename
          @Size = size
          @StartTime = starttime
          @EndTime = endtime
          @InternalAddr = internaladdr
          @ExternalAddr = externaladdr
          @Id = id
          @Status = status
          @DBs = dbs
          @Strategy = strategy
          @BackupWay = backupway
        end

        def deserialize(params)
          @FileName = params['FileName']
          @Size = params['Size']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @InternalAddr = params['InternalAddr']
          @ExternalAddr = params['ExternalAddr']
          @Id = params['Id']
          @Status = params['Status']
          @DBs = params['DBs']
          @Strategy = params['Strategy']
          @BackupWay = params['BackupWay']
        end
      end

      # CompleteExpansion请求参数结构体
      class CompleteExpansionRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-j8kv137v
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # CompleteExpansion返回参数结构体
      class CompleteExpansionResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID，可通过接口DescribeFlowStatus查询立即切换升级任务的状态。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId
        
        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # CreateAccount请求参数结构体
      class CreateAccountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据库实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param Accounts: 数据库实例账户信息
        # @type Accounts: Array

        attr_accessor :InstanceId, :Accounts
        
        def initialize(instanceid=nil, accounts=nil)
          @InstanceId = instanceid
          @Accounts = accounts
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Accounts = params['Accounts']
        end
      end

      # CreateAccount返回参数结构体
      class CreateAccountResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId
        
        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # CreateBackup请求参数结构体
      class CreateBackupRequest < TencentCloud::Common::AbstractModel
        # @param Strategy: 备份策略(0-实例备份 1-多库备份)
        # @type Strategy: Integer
        # @param DBNames: 需要备份库名的列表(多库备份才填写)
        # @type DBNames: Array
        # @param InstanceId: 实例ID，形如mssql-i1z41iwd
        # @type InstanceId: String

        attr_accessor :Strategy, :DBNames, :InstanceId
        
        def initialize(strategy=nil, dbnames=nil, instanceid=nil)
          @Strategy = strategy
          @DBNames = dbnames
          @InstanceId = instanceid
        end

        def deserialize(params)
          @Strategy = params['Strategy']
          @DBNames = params['DBNames']
          @InstanceId = params['InstanceId']
        end
      end

      # CreateBackup返回参数结构体
      class CreateBackupResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId
        
        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDBInstances请求参数结构体
      class CreateDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 实例可用区，类似ap-guangzhou-1（广州一区）；实例可售卖区域可以通过接口DescribeZones获取
        # @type Zone: String
        # @param Memory: 实例内存大小，单位GB
        # @type Memory: Integer
        # @param Storage: 实例磁盘大小，单位GB
        # @type Storage: Integer
        # @param InstanceChargeType: 付费模式，取值支持 PREPAID（预付费），POSTPAID（后付费）。
        # @type InstanceChargeType: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param GoodsNum: 本次购买几个实例，默认值为1。取值不超过10
        # @type GoodsNum: Integer
        # @param SubnetId: VPC子网ID，形如subnet-bdoe83fa；SubnetId和VpcId需同时设置或者同时不设置
        # @type SubnetId: String
        # @param VpcId: VPC网络ID，形如vpc-dsp338hz；SubnetId和VpcId需同时设置或者同时不设置
        # @type VpcId: String
        # @param Period: 购买实例周期，默认取值为1，表示一个月。取值不超过48
        # @type Period: Integer
        # @param AutoVoucher: 是否自动使用代金券；1 - 是，0 - 否，默认不使用
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID数组，目前单个订单只能使用一张
        # @type VoucherIds: Array
        # @param DBVersion: sqlserver版本，目前只支持：2008R2（SQL Server 2008 Enterprise），2012SP3（SQL Server 2012 Enterprise），2016SP1（SQL Server 2016 Enterprise），201602（SQL Server 2016 Standard）2017（SQL Server 2017 Enterprise）版本。每个地域支持售卖的版本不同，可通过DescribeProductConfig接口来拉取每个地域可售卖的版本信息。不填，默认为版本2008R2。
        # @type DBVersion: String
        # @param AutoRenewFlag: 自动续费标志：0-正常续费  1-自动续费，默认为1自动续费。只在购买预付费实例时有效。
        # @type AutoRenewFlag: Integer
        # @param SecurityGroupList: 安全组列表，填写形如sg-xxx的安全组ID
        # @type SecurityGroupList: Array
        # @param Weekly: 可维护时间窗配置，以周为单位，表示周几允许维护，1-7分别代表周一到周末
        # @type Weekly: Array
        # @param StartTime: 可维护时间窗配置，每天可维护的开始时间
        # @type StartTime: String
        # @param Span: 可维护时间窗配置，持续时间，单位：小时
        # @type Span: Integer
        # @param HAType: 购买高可用实例的类型：DUAL-双机高可用  CLUSTER-集群，默认值为DUAL
        # @type HAType: String
        # @param MultiZones: 是否跨可用区部署，默认值为false
        # @type MultiZones: Boolean

        attr_accessor :Zone, :Memory, :Storage, :InstanceChargeType, :ProjectId, :GoodsNum, :SubnetId, :VpcId, :Period, :AutoVoucher, :VoucherIds, :DBVersion, :AutoRenewFlag, :SecurityGroupList, :Weekly, :StartTime, :Span, :HAType, :MultiZones
        
        def initialize(zone=nil, memory=nil, storage=nil, instancechargetype=nil, projectid=nil, goodsnum=nil, subnetid=nil, vpcid=nil, period=nil, autovoucher=nil, voucherids=nil, dbversion=nil, autorenewflag=nil, securitygrouplist=nil, weekly=nil, starttime=nil, span=nil, hatype=nil, multizones=nil)
          @Zone = zone
          @Memory = memory
          @Storage = storage
          @InstanceChargeType = instancechargetype
          @ProjectId = projectid
          @GoodsNum = goodsnum
          @SubnetId = subnetid
          @VpcId = vpcid
          @Period = period
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @DBVersion = dbversion
          @AutoRenewFlag = autorenewflag
          @SecurityGroupList = securitygrouplist
          @Weekly = weekly
          @StartTime = starttime
          @Span = span
          @HAType = hatype
          @MultiZones = multizones
        end

        def deserialize(params)
          @Zone = params['Zone']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @InstanceChargeType = params['InstanceChargeType']
          @ProjectId = params['ProjectId']
          @GoodsNum = params['GoodsNum']
          @SubnetId = params['SubnetId']
          @VpcId = params['VpcId']
          @Period = params['Period']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @DBVersion = params['DBVersion']
          @AutoRenewFlag = params['AutoRenewFlag']
          @SecurityGroupList = params['SecurityGroupList']
          @Weekly = params['Weekly']
          @StartTime = params['StartTime']
          @Span = params['Span']
          @HAType = params['HAType']
          @MultiZones = params['MultiZones']
        end
      end

      # CreateDBInstances返回参数结构体
      class CreateDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单名称
        # @type DealName: String
        # @param DealNames: 订单名称数组
        # @type DealNames: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :DealNames, :RequestId
        
        def initialize(dealname=nil, dealnames=nil, requestid=nil)
          @DealName = dealname
          @DealNames = dealnames
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @DealNames = params['DealNames']
          @RequestId = params['RequestId']
        end
      end

      # CreateDB请求参数结构体
      class CreateDBRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param DBs: 数据库创建信息
        # @type DBs: Array

        attr_accessor :InstanceId, :DBs
        
        def initialize(instanceid=nil, dbs=nil)
          @InstanceId = instanceid
          @DBs = dbs
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DBs = params['DBs']
        end
      end

      # CreateDB返回参数结构体
      class CreateDBResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId
        
        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # CreateMigration请求参数结构体
      class CreateMigrationRequest < TencentCloud::Common::AbstractModel
        # @param MigrateName: 迁移任务的名称
        # @type MigrateName: String
        # @param MigrateType: 迁移类型（1:结构迁移 2:数据迁移 3:增量同步）
        # @type MigrateType: Integer
        # @param SourceType: 迁移源的类型 1:TencentDB for SQLServer 2:云服务器自建SQLServer数据库 4:SQLServer备份还原 5:SQLServer备份还原（COS方式）
        # @type SourceType: Integer
        # @param Source: 迁移源
        # @type Source: :class:`Tencentcloud::Sqlserver.v20180328.models.MigrateSource`
        # @param Target: 迁移目标
        # @type Target: :class:`Tencentcloud::Sqlserver.v20180328.models.MigrateTarget`
        # @param MigrateDBSet: 迁移DB对象 ，离线迁移不使用（SourceType=4或SourceType=5）。
        # @type MigrateDBSet: Array

        attr_accessor :MigrateName, :MigrateType, :SourceType, :Source, :Target, :MigrateDBSet
        
        def initialize(migratename=nil, migratetype=nil, sourcetype=nil, source=nil, target=nil, migratedbset=nil)
          @MigrateName = migratename
          @MigrateType = migratetype
          @SourceType = sourcetype
          @Source = source
          @Target = target
          @MigrateDBSet = migratedbset
        end

        def deserialize(params)
          @MigrateName = params['MigrateName']
          @MigrateType = params['MigrateType']
          @SourceType = params['SourceType']
          unless params['Source'].nil?
            @Source = MigrateSource.new.deserialize(params[Source])
          end
          unless params['Target'].nil?
            @Target = MigrateTarget.new.deserialize(params[Target])
          end
          @MigrateDBSet = params['MigrateDBSet']
        end
      end

      # CreateMigration返回参数结构体
      class CreateMigrationResponse < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务ID
        # @type MigrateId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MigrateId, :RequestId
        
        def initialize(migrateid=nil, requestid=nil)
          @MigrateId = migrateid
          @RequestId = requestid
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
          @RequestId = params['RequestId']
        end
      end

      # CreatePublishSubscribe请求参数结构体
      class CreatePublishSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param PublishInstanceId: 发布实例ID，形如mssql-j8kv137v
        # @type PublishInstanceId: String
        # @param SubscribeInstanceId: 订阅实例ID，形如mssql-j8kv137v
        # @type SubscribeInstanceId: String
        # @param DatabaseTupleSet: 数据库的订阅发布关系集合
        # @type DatabaseTupleSet: Array
        # @param PublishSubscribeName: 发布订阅的名称，默认值为：default_name
        # @type PublishSubscribeName: String

        attr_accessor :PublishInstanceId, :SubscribeInstanceId, :DatabaseTupleSet, :PublishSubscribeName
        
        def initialize(publishinstanceid=nil, subscribeinstanceid=nil, databasetupleset=nil, publishsubscribename=nil)
          @PublishInstanceId = publishinstanceid
          @SubscribeInstanceId = subscribeinstanceid
          @DatabaseTupleSet = databasetupleset
          @PublishSubscribeName = publishsubscribename
        end

        def deserialize(params)
          @PublishInstanceId = params['PublishInstanceId']
          @SubscribeInstanceId = params['SubscribeInstanceId']
          @DatabaseTupleSet = params['DatabaseTupleSet']
          @PublishSubscribeName = params['PublishSubscribeName']
        end
      end

      # CreatePublishSubscribe返回参数结构体
      class CreatePublishSubscribeResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID，可通过接口DescribeFlowStatus查询立即切换升级任务的状态。
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId
        
        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # 数据库创建信息
      class DBCreateInfo < TencentCloud::Common::AbstractModel
        # @param DBName: 数据库名
        # @type DBName: String
        # @param Charset: 字符集。可选值包括：Chinese_PRC_CI_AS, Chinese_PRC_CS_AS, Chinese_PRC_BIN, Chinese_Taiwan_Stroke_CI_AS, SQL_Latin1_General_CP1_CI_AS, SQL_Latin1_General_CP1_CS_AS。不填默认为Chinese_PRC_CI_AS
        # @type Charset: String
        # @param Accounts: 数据库账号权限信息
        # @type Accounts: Array
        # @param Remark: 备注
        # @type Remark: String

        attr_accessor :DBName, :Charset, :Accounts, :Remark
        
        def initialize(dbname=nil, charset=nil, accounts=nil, remark=nil)
          @DBName = dbname
          @Charset = charset
          @Accounts = accounts
          @Remark = remark
        end

        def deserialize(params)
          @DBName = params['DBName']
          @Charset = params['Charset']
          @Accounts = params['Accounts']
          @Remark = params['Remark']
        end
      end

      # 数据库信息
      class DBDetail < TencentCloud::Common::AbstractModel
        # @param Name: 数据库名称
        # @type Name: String
        # @param Charset: 字符集
        # @type Charset: String
        # @param Remark: 备注
        # @type Remark: String
        # @param CreateTime: 数据库创建时间
        # @type CreateTime: String
        # @param Status: 数据库状态。1--创建中， 2--运行中， 3--修改中，-1--删除中
        # @type Status: Integer
        # @param Accounts: 数据库账号权限信息
        # @type Accounts: Array
        # @param InternalStatus: 内部状态。ONLINE表示运行中
        # @type InternalStatus: String

        attr_accessor :Name, :Charset, :Remark, :CreateTime, :Status, :Accounts, :InternalStatus
        
        def initialize(name=nil, charset=nil, remark=nil, createtime=nil, status=nil, accounts=nil, internalstatus=nil)
          @Name = name
          @Charset = charset
          @Remark = remark
          @CreateTime = createtime
          @Status = status
          @Accounts = accounts
          @InternalStatus = internalstatus
        end

        def deserialize(params)
          @Name = params['Name']
          @Charset = params['Charset']
          @Remark = params['Remark']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
          @Accounts = params['Accounts']
          @InternalStatus = params['InternalStatus']
        end
      end

      # 实例详细信息
      class DBInstance < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Name: 实例名称
        # @type Name: String
        # @param ProjectId: 实例所在项目ID
        # @type ProjectId: Integer
        # @param RegionId: 实例所在地域ID
        # @type RegionId: Integer
        # @param ZoneId: 实例所在可用区ID
        # @type ZoneId: Integer
        # @param VpcId: 实例所在私有网络ID，基础网络时为 0
        # @type VpcId: Integer
        # @param SubnetId: 实例所在私有网络子网ID，基础网络时为 0
        # @type SubnetId: Integer
        # @param Status: 实例状态。取值范围： <li>1：申请中</li> <li>2：运行中</li> <li>3：受限运行中 (主备切换中)</li> <li>4：已隔离</li> <li>5：回收中</li> <li>6：已回收</li> <li>7：任务执行中 (实例做备份、回档等操作)</li> <li>8：已下线</li> <li>9：实例扩容中</li> <li>10：实例迁移中</li> <li>11：只读</li> <li>12：重启中</li>
        # @type Status: Integer
        # @param Vip: 实例访问IP
        # @type Vip: String
        # @param Vport: 实例访问端口
        # @type Vport: Integer
        # @param CreateTime: 实例创建时间
        # @type CreateTime: String
        # @param UpdateTime: 实例更新时间
        # @type UpdateTime: String
        # @param StartTime: 实例计费开始时间
        # @type StartTime: String
        # @param EndTime: 实例计费结束时间
        # @type EndTime: String
        # @param IsolateTime: 实例隔离时间
        # @type IsolateTime: String
        # @param Memory: 实例内存大小，单位G
        # @type Memory: Integer
        # @param UsedStorage: 实例已经使用存储空间大小，单位G
        # @type UsedStorage: Integer
        # @param Storage: 实例存储空间大小，单位G
        # @type Storage: Integer
        # @param VersionName: 实例版本
        # @type VersionName: String
        # @param RenewFlag: 实例续费标记，0-正常续费，1-自动续费，2-到期不续费
        # @type RenewFlag: Integer
        # @param Model: 实例高可用， 1-双机高可用，2-单机
        # @type Model: Integer
        # @param Region: 实例所在地域名称，如 ap-guangzhou
        # @type Region: String
        # @param Zone: 实例所在可用区名称，如 ap-guangzhou-1
        # @type Zone: String
        # @param BackupTime: 备份时间点
        # @type BackupTime: String
        # @param PayMode: 实例付费模式， 0-按量计费，1-包年包月
        # @type PayMode: Integer
        # @param Uid: 实例唯一UID
        # @type Uid: String
        # @param Cpu: 实例cpu核心数
        # @type Cpu: Integer
        # @param Version: 实例版本代号
        # @type Version: String
        # @param Type: 物理机代号
        # @type Type: String
        # @param Pid: 计费ID
        # @type Pid: Integer
        # @param UniqVpcId: 实例所属VPC的唯一字符串ID，格式如：vpc-xxx，基础网络时为空字符串
        # @type UniqVpcId: String
        # @param UniqSubnetId: 实例所属子网的唯一字符串ID，格式如： subnet-xxx，基础网络时为空字符串
        # @type UniqSubnetId: String
        # @param IsolateOperator: 实例隔离操作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IsolateOperator: String
        # @param SubFlag: 发布订阅标识，SUB-订阅实例，PUB-发布实例，空值-没有发布订阅的普通实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubFlag: String
        # @param ROFlag: 只读标识，RO-只读实例，MASTER-有RO实例的主实例，空值-没有只读组的非RO实例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ROFlag: String
        # @param HAFlag: 容灾类型，MIRROR-镜像，ALWAYSON-AlwaysOn, SINGLE-单例
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HAFlag: String

        attr_accessor :InstanceId, :Name, :ProjectId, :RegionId, :ZoneId, :VpcId, :SubnetId, :Status, :Vip, :Vport, :CreateTime, :UpdateTime, :StartTime, :EndTime, :IsolateTime, :Memory, :UsedStorage, :Storage, :VersionName, :RenewFlag, :Model, :Region, :Zone, :BackupTime, :PayMode, :Uid, :Cpu, :Version, :Type, :Pid, :UniqVpcId, :UniqSubnetId, :IsolateOperator, :SubFlag, :ROFlag, :HAFlag
        
        def initialize(instanceid=nil, name=nil, projectid=nil, regionid=nil, zoneid=nil, vpcid=nil, subnetid=nil, status=nil, vip=nil, vport=nil, createtime=nil, updatetime=nil, starttime=nil, endtime=nil, isolatetime=nil, memory=nil, usedstorage=nil, storage=nil, versionname=nil, renewflag=nil, model=nil, region=nil, zone=nil, backuptime=nil, paymode=nil, uid=nil, cpu=nil, version=nil, type=nil, pid=nil, uniqvpcid=nil, uniqsubnetid=nil, isolateoperator=nil, subflag=nil, roflag=nil, haflag=nil)
          @InstanceId = instanceid
          @Name = name
          @ProjectId = projectid
          @RegionId = regionid
          @ZoneId = zoneid
          @VpcId = vpcid
          @SubnetId = subnetid
          @Status = status
          @Vip = vip
          @Vport = vport
          @CreateTime = createtime
          @UpdateTime = updatetime
          @StartTime = starttime
          @EndTime = endtime
          @IsolateTime = isolatetime
          @Memory = memory
          @UsedStorage = usedstorage
          @Storage = storage
          @VersionName = versionname
          @RenewFlag = renewflag
          @Model = model
          @Region = region
          @Zone = zone
          @BackupTime = backuptime
          @PayMode = paymode
          @Uid = uid
          @Cpu = cpu
          @Version = version
          @Type = type
          @Pid = pid
          @UniqVpcId = uniqvpcid
          @UniqSubnetId = uniqsubnetid
          @IsolateOperator = isolateoperator
          @SubFlag = subflag
          @ROFlag = roflag
          @HAFlag = haflag
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Name = params['Name']
          @ProjectId = params['ProjectId']
          @RegionId = params['RegionId']
          @ZoneId = params['ZoneId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Status = params['Status']
          @Vip = params['Vip']
          @Vport = params['Vport']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @IsolateTime = params['IsolateTime']
          @Memory = params['Memory']
          @UsedStorage = params['UsedStorage']
          @Storage = params['Storage']
          @VersionName = params['VersionName']
          @RenewFlag = params['RenewFlag']
          @Model = params['Model']
          @Region = params['Region']
          @Zone = params['Zone']
          @BackupTime = params['BackupTime']
          @PayMode = params['PayMode']
          @Uid = params['Uid']
          @Cpu = params['Cpu']
          @Version = params['Version']
          @Type = params['Type']
          @Pid = params['Pid']
          @UniqVpcId = params['UniqVpcId']
          @UniqSubnetId = params['UniqSubnetId']
          @IsolateOperator = params['IsolateOperator']
          @SubFlag = params['SubFlag']
          @ROFlag = params['ROFlag']
          @HAFlag = params['HAFlag']
        end
      end

      # 账号的数据库权限信息
      class DBPrivilege < TencentCloud::Common::AbstractModel
        # @param DBName: 数据库名
        # @type DBName: String
        # @param Privilege: 数据库权限，ReadWrite表示可读写，ReadOnly表示只读
        # @type Privilege: String

        attr_accessor :DBName, :Privilege
        
        def initialize(dbname=nil, privilege=nil)
          @DBName = dbname
          @Privilege = privilege
        end

        def deserialize(params)
          @DBName = params['DBName']
          @Privilege = params['Privilege']
        end
      end

      # 数据库权限变更信息
      class DBPrivilegeModifyInfo < TencentCloud::Common::AbstractModel
        # @param DBName: 数据库名
        # @type DBName: String
        # @param Privilege: 权限变更信息。ReadWrite表示可读写，ReadOnly表示只读，Delete表示删除账号对该DB的权限
        # @type Privilege: String

        attr_accessor :DBName, :Privilege
        
        def initialize(dbname=nil, privilege=nil)
          @DBName = dbname
          @Privilege = privilege
        end

        def deserialize(params)
          @DBName = params['DBName']
          @Privilege = params['Privilege']
        end
      end

      # 数据库备注信息
      class DBRemark < TencentCloud::Common::AbstractModel
        # @param Name: 数据库名称
        # @type Name: String
        # @param Remark: 备注信息
        # @type Remark: String

        attr_accessor :Name, :Remark
        
        def initialize(name=nil, remark=nil)
          @Name = name
          @Remark = remark
        end

        def deserialize(params)
          @Name = params['Name']
          @Remark = params['Remark']
        end
      end

      # 该数据结构表示具有发布订阅关系的两个数据库。
      class DatabaseTuple < TencentCloud::Common::AbstractModel
        # @param PublishDatabase: 发布数据库名称
        # @type PublishDatabase: String
        # @param SubscribeDatabase: 订阅数据库名称
        # @type SubscribeDatabase: String

        attr_accessor :PublishDatabase, :SubscribeDatabase
        
        def initialize(publishdatabase=nil, subscribedatabase=nil)
          @PublishDatabase = publishdatabase
          @SubscribeDatabase = subscribedatabase
        end

        def deserialize(params)
          @PublishDatabase = params['PublishDatabase']
          @SubscribeDatabase = params['SubscribeDatabase']
        end
      end

      # 该数据结构表示具有发布订阅关系的两个数据库，以及其之间发布订阅的状态信息。
      class DatabaseTupleStatus < TencentCloud::Common::AbstractModel
        # @param PublishDatabase: 发布数据库名称
        # @type PublishDatabase: String
        # @param SubscribeDatabase: 订阅数据库名称
        # @type SubscribeDatabase: String
        # @param LastSyncTime: 最近一次同步时间
        # @type LastSyncTime: String
        # @param Status: 数据库之间的发布订阅状态 running，success，fail，unknow
        # @type Status: String

        attr_accessor :PublishDatabase, :SubscribeDatabase, :LastSyncTime, :Status
        
        def initialize(publishdatabase=nil, subscribedatabase=nil, lastsynctime=nil, status=nil)
          @PublishDatabase = publishdatabase
          @SubscribeDatabase = subscribedatabase
          @LastSyncTime = lastsynctime
          @Status = status
        end

        def deserialize(params)
          @PublishDatabase = params['PublishDatabase']
          @SubscribeDatabase = params['SubscribeDatabase']
          @LastSyncTime = params['LastSyncTime']
          @Status = params['Status']
        end
      end

      # 数据库可回档时间范围信息
      class DbRollbackTimeInfo < TencentCloud::Common::AbstractModel
        # @param DBName: 数据库名称
        # @type DBName: String
        # @param StartTime: 可回档开始时间
        # @type StartTime: String
        # @param EndTime: 可回档结束时间
        # @type EndTime: String

        attr_accessor :DBName, :StartTime, :EndTime
        
        def initialize(dbname=nil, starttime=nil, endtime=nil)
          @DBName = dbname
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @DBName = params['DBName']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 订单信息
      class DealInfo < TencentCloud::Common::AbstractModel
        # @param DealName: 订单名
        # @type DealName: String
        # @param Count: 商品数量
        # @type Count: Integer
        # @param FlowId: 关联的流程 ID，可用于查询流程执行状态
        # @type FlowId: Integer
        # @param InstanceIdSet: 只有创建实例的订单会填充该字段，表示该订单创建的实例的 ID。
        # @type InstanceIdSet: Array
        # @param OwnerUin: 所属账号
        # @type OwnerUin: String
        # @param InstanceChargeType: 实例付费类型
        # @type InstanceChargeType: String

        attr_accessor :DealName, :Count, :FlowId, :InstanceIdSet, :OwnerUin, :InstanceChargeType
        
        def initialize(dealname=nil, count=nil, flowid=nil, instanceidset=nil, owneruin=nil, instancechargetype=nil)
          @DealName = dealname
          @Count = count
          @FlowId = flowid
          @InstanceIdSet = instanceidset
          @OwnerUin = owneruin
          @InstanceChargeType = instancechargetype
        end

        def deserialize(params)
          @DealName = params['DealName']
          @Count = params['Count']
          @FlowId = params['FlowId']
          @InstanceIdSet = params['InstanceIdSet']
          @OwnerUin = params['OwnerUin']
          @InstanceChargeType = params['InstanceChargeType']
        end
      end

      # DeleteAccount请求参数结构体
      class DeleteAccountRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据库实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param UserNames: 实例用户名数组
        # @type UserNames: Array

        attr_accessor :InstanceId, :UserNames
        
        def initialize(instanceid=nil, usernames=nil)
          @InstanceId = instanceid
          @UserNames = usernames
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserNames = params['UserNames']
        end
      end

      # DeleteAccount返回参数结构体
      class DeleteAccountResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId
        
        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteDB请求参数结构体
      class DeleteDBRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-rljoi3bf
        # @type InstanceId: String
        # @param Names: 数据库名数组
        # @type Names: Array

        attr_accessor :InstanceId, :Names
        
        def initialize(instanceid=nil, names=nil)
          @InstanceId = instanceid
          @Names = names
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Names = params['Names']
        end
      end

      # DeleteDB返回参数结构体
      class DeleteDBResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId
        
        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # DeleteMigration请求参数结构体
      class DeleteMigrationRequest < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务ID
        # @type MigrateId: Integer

        attr_accessor :MigrateId
        
        def initialize(migrateid=nil)
          @MigrateId = migrateid
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
        end
      end

      # DeleteMigration返回参数结构体
      class DeleteMigrationResponse < TencentCloud::Common::AbstractModel
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

      # DeletePublishSubscribe请求参数结构体
      class DeletePublishSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param PublishSubscribeId: 发布订阅ID，可通过DescribePublishSubscribe接口获得
        # @type PublishSubscribeId: Integer
        # @param DatabaseTupleSet: 待删除的数据库的订阅发布关系集合
        # @type DatabaseTupleSet: Array

        attr_accessor :PublishSubscribeId, :DatabaseTupleSet
        
        def initialize(publishsubscribeid=nil, databasetupleset=nil)
          @PublishSubscribeId = publishsubscribeid
          @DatabaseTupleSet = databasetupleset
        end

        def deserialize(params)
          @PublishSubscribeId = params['PublishSubscribeId']
          @DatabaseTupleSet = params['DatabaseTupleSet']
        end
      end

      # DeletePublishSubscribe返回参数结构体
      class DeletePublishSubscribeResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAccounts请求参数结构体
      class DescribeAccountsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Limit: 分页返回，每页返回的数目，取值为1-100，默认值为20
        # @type Limit: Integer
        # @param Offset: 分页返回，页编号，默认值为第0页
        # @type Offset: Integer

        attr_accessor :InstanceId, :Limit, :Offset
        
        def initialize(instanceid=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeAccounts返回参数结构体
      class DescribeAccountsResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Accounts: 账户信息列表
        # @type Accounts: Array
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :Accounts, :TotalCount, :RequestId
        
        def initialize(instanceid=nil, accounts=nil, totalcount=nil, requestid=nil)
          @InstanceId = instanceid
          @Accounts = accounts
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Accounts = params['Accounts']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBackups请求参数结构体
      class DescribeBackupsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 开始时间(yyyy-MM-dd HH:mm:ss)
        # @type StartTime: String
        # @param EndTime: 结束时间(yyyy-MM-dd HH:mm:ss)
        # @type EndTime: String
        # @param InstanceId: 实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param Limit: 分页返回，每页返回的数目，取值为1-100，默认值为20
        # @type Limit: Integer
        # @param Offset: 分页返回，页编号，默认值为第0页
        # @type Offset: Integer

        attr_accessor :StartTime, :EndTime, :InstanceId, :Limit, :Offset
        
        def initialize(starttime=nil, endtime=nil, instanceid=nil, limit=nil, offset=nil)
          @StartTime = starttime
          @EndTime = endtime
          @InstanceId = instanceid
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @InstanceId = params['InstanceId']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeBackups返回参数结构体
      class DescribeBackupsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 备份总数量
        # @type TotalCount: Integer
        # @param Backups: 备份列表详情
        # @type Backups: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Backups, :RequestId
        
        def initialize(totalcount=nil, backups=nil, requestid=nil)
          @TotalCount = totalcount
          @Backups = backups
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Backups = params['Backups']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBInstances请求参数结构体
      class DescribeDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param Status: 实例状态。取值范围：
        # <li>1：申请中</li>
        # <li>2：运行中</li>
        # <li>3：受限运行中 (主备切换中)</li>
        # <li>4：已隔离</li>
        # <li>5：回收中</li>
        # <li>6：已回收</li>
        # <li>7：任务执行中 (实例做备份、回档等操作)</li>
        # <li>8：已下线</li>
        # <li>9：实例扩容中</li>
        # <li>10：实例迁移中</li>
        # <li>11：只读</li>
        # <li>12：重启中</li>
        # @type Status: Integer
        # @param Offset: 分页返回，页编号，默认值为第0页
        # @type Offset: Integer
        # @param Limit: 分页返回，每页返回的数目，取值为1-100，默认值为100
        # @type Limit: Integer
        # @param InstanceIdSet: 一个或者多个实例ID。实例ID，格式如：mssql-si2823jyl
        # @type InstanceIdSet: Array
        # @param PayMode: 付费类型检索 1-包年包月，0-按量计费
        # @type PayMode: Integer
        # @param VpcId: 实例所属VPC的唯一字符串ID，格式如：vpc-xxx，传空字符串(“”)则按照基础网络筛选。
        # @type VpcId: String
        # @param SubnetId: 实例所属子网的唯一字符串ID，格式如： subnet-xxx，传空字符串(“”)则按照基础网络筛选。
        # @type SubnetId: String

        attr_accessor :ProjectId, :Status, :Offset, :Limit, :InstanceIdSet, :PayMode, :VpcId, :SubnetId
        
        def initialize(projectid=nil, status=nil, offset=nil, limit=nil, instanceidset=nil, paymode=nil, vpcid=nil, subnetid=nil)
          @ProjectId = projectid
          @Status = status
          @Offset = offset
          @Limit = limit
          @InstanceIdSet = instanceidset
          @PayMode = paymode
          @VpcId = vpcid
          @SubnetId = subnetid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @Status = params['Status']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @InstanceIdSet = params['InstanceIdSet']
          @PayMode = params['PayMode']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
        end
      end

      # DescribeDBInstances返回参数结构体
      class DescribeDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的实例总数。分页返回的话，这个值指的是所有符合条件的实例的个数，而非当前根据Limit和Offset值返回的实例个数
        # @type TotalCount: Integer
        # @param DBInstances: 实例列表
        # @type DBInstances: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DBInstances, :RequestId
        
        def initialize(totalcount=nil, dbinstances=nil, requestid=nil)
          @TotalCount = totalcount
          @DBInstances = dbinstances
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @DBInstances = params['DBInstances']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDBs请求参数结构体
      class DescribeDBsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 实例ID
        # @type InstanceIdSet: Array
        # @param Limit: 分页返回，每页返回的数目，取值为1-100，默认值为20
        # @type Limit: Integer
        # @param Offset: 分页返回，页编号，默认值为第0页
        # @type Offset: Integer

        attr_accessor :InstanceIdSet, :Limit, :Offset
        
        def initialize(instanceidset=nil, limit=nil, offset=nil)
          @InstanceIdSet = instanceidset
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeDBs返回参数结构体
      class DescribeDBsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 数据库数量
        # @type TotalCount: Integer
        # @param DBInstances: 实例数据库列表
        # @type DBInstances: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DBInstances, :RequestId
        
        def initialize(totalcount=nil, dbinstances=nil, requestid=nil)
          @TotalCount = totalcount
          @DBInstances = dbinstances
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @DBInstances = params['DBInstances']
          @RequestId = params['RequestId']
        end
      end

      # DescribeFlowStatus请求参数结构体
      class DescribeFlowStatusRequest < TencentCloud::Common::AbstractModel
        # @param FlowId: 流程ID
        # @type FlowId: Integer

        attr_accessor :FlowId
        
        def initialize(flowid=nil)
          @FlowId = flowid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
        end
      end

      # DescribeFlowStatus返回参数结构体
      class DescribeFlowStatusResponse < TencentCloud::Common::AbstractModel
        # @param Status: 流程状态，0：成功，1：失败，2：运行中
        # @type Status: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :RequestId
        
        def initialize(status=nil, requestid=nil)
          @Status = status
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMaintenanceSpan请求参数结构体
      class DescribeMaintenanceSpanRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-k8voqdlz
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # DescribeMaintenanceSpan返回参数结构体
      class DescribeMaintenanceSpanResponse < TencentCloud::Common::AbstractModel
        # @param Weekly: 以周为单位，表示周几允许维护，例如：[1,2,3,4,5,6,7]表示周一到周日均为可维护日。
        # @type Weekly: Array
        # @param StartTime: 每天可维护的开始时间，例如：10:24标识可维护时间窗10点24分开始。
        # @type StartTime: String
        # @param Span: 每天可维护的持续时间，单位是h，例如：1 表示从可维护的开始时间起持续1小时。
        # @type Span: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Weekly, :StartTime, :Span, :RequestId
        
        def initialize(weekly=nil, starttime=nil, span=nil, requestid=nil)
          @Weekly = weekly
          @StartTime = starttime
          @Span = span
          @RequestId = requestid
        end

        def deserialize(params)
          @Weekly = params['Weekly']
          @StartTime = params['StartTime']
          @Span = params['Span']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMigrationDetail请求参数结构体
      class DescribeMigrationDetailRequest < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务ID
        # @type MigrateId: Integer

        attr_accessor :MigrateId
        
        def initialize(migrateid=nil)
          @MigrateId = migrateid
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
        end
      end

      # DescribeMigrationDetail返回参数结构体
      class DescribeMigrationDetailResponse < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务ID
        # @type MigrateId: Integer
        # @param MigrateName: 迁移任务名称
        # @type MigrateName: String
        # @param AppId: 迁移任务所属的用户ID
        # @type AppId: Integer
        # @param Region: 迁移任务所属的地域
        # @type Region: String
        # @param SourceType: 迁移源的类型 1:TencentDB for SQLServer 2:云服务器自建SQLServer数据库 4:SQLServer备份还原 5:SQLServer备份还原（COS方式）
        # @type SourceType: Integer
        # @param CreateTime: 迁移任务的创建时间
        # @type CreateTime: String
        # @param StartTime: 迁移任务的开始时间
        # @type StartTime: String
        # @param EndTime: 迁移任务的结束时间
        # @type EndTime: String
        # @param Status: 迁移任务的状态（1:初始化,4:迁移中,5.迁移失败,6.迁移成功）
        # @type Status: Integer
        # @param Progress: 迁移任务当前进度
        # @type Progress: Integer
        # @param MigrateType: 迁移类型（1:结构迁移 2:数据迁移 3:增量同步）
        # @type MigrateType: Integer
        # @param Source: 迁移源
        # @type Source: :class:`Tencentcloud::Sqlserver.v20180328.models.MigrateSource`
        # @param Target: 迁移目标
        # @type Target: :class:`Tencentcloud::Sqlserver.v20180328.models.MigrateTarget`
        # @param MigrateDBSet: 迁移DB对象 ，离线迁移（SourceType=4或SourceType=5）不使用。
        # @type MigrateDBSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MigrateId, :MigrateName, :AppId, :Region, :SourceType, :CreateTime, :StartTime, :EndTime, :Status, :Progress, :MigrateType, :Source, :Target, :MigrateDBSet, :RequestId
        
        def initialize(migrateid=nil, migratename=nil, appid=nil, region=nil, sourcetype=nil, createtime=nil, starttime=nil, endtime=nil, status=nil, progress=nil, migratetype=nil, source=nil, target=nil, migratedbset=nil, requestid=nil)
          @MigrateId = migrateid
          @MigrateName = migratename
          @AppId = appid
          @Region = region
          @SourceType = sourcetype
          @CreateTime = createtime
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @Progress = progress
          @MigrateType = migratetype
          @Source = source
          @Target = target
          @MigrateDBSet = migratedbset
          @RequestId = requestid
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
          @MigrateName = params['MigrateName']
          @AppId = params['AppId']
          @Region = params['Region']
          @SourceType = params['SourceType']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @Progress = params['Progress']
          @MigrateType = params['MigrateType']
          unless params['Source'].nil?
            @Source = MigrateSource.new.deserialize(params[Source])
          end
          unless params['Target'].nil?
            @Target = MigrateTarget.new.deserialize(params[Target])
          end
          @MigrateDBSet = params['MigrateDBSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMigrations请求参数结构体
      class DescribeMigrationsRequest < TencentCloud::Common::AbstractModel
        # @param StatusSet: 状态集合。只要符合集合中某一状态的迁移任务，就会查出来
        # @type StatusSet: Array
        # @param MigrateName: 迁移任务的名称，模糊匹配
        # @type MigrateName: String
        # @param Limit: 分页返回，每页返回的数目，取值为1-100，默认值为100
        # @type Limit: Integer
        # @param Offset: 分页返回，页编号，默认值为第0页
        # @type Offset: Integer
        # @param OrderBy: 查询结果按照关键字排序，可选值为name、createTime、startTime，endTime，status
        # @type OrderBy: String
        # @param OrderByType: 排序方式，可选值为desc、asc
        # @type OrderByType: String

        attr_accessor :StatusSet, :MigrateName, :Limit, :Offset, :OrderBy, :OrderByType
        
        def initialize(statusset=nil, migratename=nil, limit=nil, offset=nil, orderby=nil, orderbytype=nil)
          @StatusSet = statusset
          @MigrateName = migratename
          @Limit = limit
          @Offset = offset
          @OrderBy = orderby
          @OrderByType = orderbytype
        end

        def deserialize(params)
          @StatusSet = params['StatusSet']
          @MigrateName = params['MigrateName']
          @Limit = params['Limit']
          @Offset = params['Offset']
          @OrderBy = params['OrderBy']
          @OrderByType = params['OrderByType']
        end
      end

      # DescribeMigrations返回参数结构体
      class DescribeMigrationsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询结果的总数
        # @type TotalCount: Integer
        # @param MigrateTaskSet: 查询结果的列表
        # @type MigrateTaskSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :MigrateTaskSet, :RequestId
        
        def initialize(totalcount=nil, migratetaskset=nil, requestid=nil)
          @TotalCount = totalcount
          @MigrateTaskSet = migratetaskset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @MigrateTaskSet = params['MigrateTaskSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeOrders请求参数结构体
      class DescribeOrdersRequest < TencentCloud::Common::AbstractModel
        # @param DealNames: 订单数组。发货时会返回订单名字，利用该订单名字调用DescribeOrders接口查询发货情况
        # @type DealNames: Array

        attr_accessor :DealNames
        
        def initialize(dealnames=nil)
          @DealNames = dealnames
        end

        def deserialize(params)
          @DealNames = params['DealNames']
        end
      end

      # DescribeOrders返回参数结构体
      class DescribeOrdersResponse < TencentCloud::Common::AbstractModel
        # @param Deals: 订单信息数组
        # @type Deals: Array
        # @param TotalCount: 返回多少个订单的信息
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Deals, :TotalCount, :RequestId
        
        def initialize(deals=nil, totalcount=nil, requestid=nil)
          @Deals = deals
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @Deals = params['Deals']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProductConfig请求参数结构体
      class DescribeProductConfigRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区英文ID，形如ap-guangzhou-1
        # @type Zone: String

        attr_accessor :Zone
        
        def initialize(zone=nil)
          @Zone = zone
        end

        def deserialize(params)
          @Zone = params['Zone']
        end
      end

      # DescribeProductConfig返回参数结构体
      class DescribeProductConfigResponse < TencentCloud::Common::AbstractModel
        # @param SpecInfoList: 规格信息数组
        # @type SpecInfoList: Array
        # @param TotalCount: 返回总共多少条数据
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SpecInfoList, :TotalCount, :RequestId
        
        def initialize(specinfolist=nil, totalcount=nil, requestid=nil)
          @SpecInfoList = specinfolist
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @SpecInfoList = params['SpecInfoList']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribePublishSubscribe请求参数结构体
      class DescribePublishSubscribeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-j8kv137v
        # @type InstanceId: String
        # @param PubOrSubInstanceId: 订阅/发布实例ID，与InstanceId是发布实例还是订阅实例有关；当InstanceId为发布实例时，本字段按照订阅实例ID做筛选；当InstanceId为订阅实例时，本字段按照发布实例ID做筛选；
        # @type PubOrSubInstanceId: String
        # @param PubOrSubInstanceIp: 订阅/发布实例内网IP，与InstanceId是发布实例还是订阅实例有关；当InstanceId为发布实例时，本字段按照订阅实例内网IP做筛选；当InstanceId为订阅实例时，本字段按照发布实例内网IP做筛选；
        # @type PubOrSubInstanceIp: String
        # @param PublishSubscribeId: 订阅发布ID，用于筛选
        # @type PublishSubscribeId: Integer
        # @param PublishSubscribeName: 订阅发布名字，用于筛选
        # @type PublishSubscribeName: String
        # @param PublishDBName: 发布库名字，用于筛选
        # @type PublishDBName: String
        # @param SubscribeDBName: 订阅库名字，用于筛选
        # @type SubscribeDBName: String
        # @param Offset: 分页，页数
        # @type Offset: Integer
        # @param Limit: 分页，页大小
        # @type Limit: Integer

        attr_accessor :InstanceId, :PubOrSubInstanceId, :PubOrSubInstanceIp, :PublishSubscribeId, :PublishSubscribeName, :PublishDBName, :SubscribeDBName, :Offset, :Limit
        
        def initialize(instanceid=nil, puborsubinstanceid=nil, puborsubinstanceip=nil, publishsubscribeid=nil, publishsubscribename=nil, publishdbname=nil, subscribedbname=nil, offset=nil, limit=nil)
          @InstanceId = instanceid
          @PubOrSubInstanceId = puborsubinstanceid
          @PubOrSubInstanceIp = puborsubinstanceip
          @PublishSubscribeId = publishsubscribeid
          @PublishSubscribeName = publishsubscribename
          @PublishDBName = publishdbname
          @SubscribeDBName = subscribedbname
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @PubOrSubInstanceId = params['PubOrSubInstanceId']
          @PubOrSubInstanceIp = params['PubOrSubInstanceIp']
          @PublishSubscribeId = params['PublishSubscribeId']
          @PublishSubscribeName = params['PublishSubscribeName']
          @PublishDBName = params['PublishDBName']
          @SubscribeDBName = params['SubscribeDBName']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribePublishSubscribe返回参数结构体
      class DescribePublishSubscribeResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 总数
        # @type TotalCount: Integer
        # @param PublishSubscribeSet: 发布订阅列表
        # @type PublishSubscribeSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :PublishSubscribeSet, :RequestId
        
        def initialize(totalcount=nil, publishsubscribeset=nil, requestid=nil)
          @TotalCount = totalcount
          @PublishSubscribeSet = publishsubscribeset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @PublishSubscribeSet = params['PublishSubscribeSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegions请求参数结构体
      class DescribeRegionsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRegions返回参数结构体
      class DescribeRegionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回地域信息总的条目
        # @type TotalCount: Integer
        # @param RegionSet: 地域信息数组
        # @type RegionSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RegionSet, :RequestId
        
        def initialize(totalcount=nil, regionset=nil, requestid=nil)
          @TotalCount = totalcount
          @RegionSet = regionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RegionSet = params['RegionSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRollbackTime请求参数结构体
      class DescribeRollbackTimeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param DBs: 需要查询的数据库列表
        # @type DBs: Array

        attr_accessor :InstanceId, :DBs
        
        def initialize(instanceid=nil, dbs=nil)
          @InstanceId = instanceid
          @DBs = dbs
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DBs = params['DBs']
        end
      end

      # DescribeRollbackTime返回参数结构体
      class DescribeRollbackTimeResponse < TencentCloud::Common::AbstractModel
        # @param Details: 数据库可回档实例信息
        # @type Details: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Details, :RequestId
        
        def initialize(details=nil, requestid=nil)
          @Details = details
          @RequestId = requestid
        end

        def deserialize(params)
          @Details = params['Details']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSlowlogs请求参数结构体
      class DescribeSlowlogsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-k8voqdlz
        # @type InstanceId: String
        # @param StartTime: 查询开始时间
        # @type StartTime: String
        # @param EndTime: 查询结束时间
        # @type EndTime: String
        # @param Limit: 分页返回，每页返回的数目，取值为1-100，默认值为20
        # @type Limit: Integer
        # @param Offset: 分页返回，页编号，默认值为第0页
        # @type Offset: Integer

        attr_accessor :InstanceId, :StartTime, :EndTime, :Limit, :Offset
        
        def initialize(instanceid=nil, starttime=nil, endtime=nil, limit=nil, offset=nil)
          @InstanceId = instanceid
          @StartTime = starttime
          @EndTime = endtime
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeSlowlogs返回参数结构体
      class DescribeSlowlogsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 查询总数
        # @type TotalCount: Integer
        # @param Slowlogs: 慢查询日志信息列表
        # @type Slowlogs: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :Slowlogs, :RequestId
        
        def initialize(totalcount=nil, slowlogs=nil, requestid=nil)
          @TotalCount = totalcount
          @Slowlogs = slowlogs
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @Slowlogs = params['Slowlogs']
          @RequestId = params['RequestId']
        end
      end

      # DescribeZones请求参数结构体
      class DescribeZonesRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeZones返回参数结构体
      class DescribeZonesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回多少个可用区信息
        # @type TotalCount: Integer
        # @param ZoneSet: 可用区数组
        # @type ZoneSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ZoneSet, :RequestId
        
        def initialize(totalcount=nil, zoneset=nil, requestid=nil)
          @TotalCount = totalcount
          @ZoneSet = zoneset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ZoneSet = params['ZoneSet']
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceCreateDBInstances请求参数结构体
      class InquiryPriceCreateDBInstancesRequest < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区ID。该参数可以通过调用 DescribeZones 接口的返回值中的Zone字段来获取。
        # @type Zone: String
        # @param Memory: 内存大小，单位：GB
        # @type Memory: Integer
        # @param Storage: 实例容量大小，单位：GB。
        # @type Storage: Integer
        # @param InstanceChargeType: 计费类型，取值支持 PREPAID，POSTPAID。
        # @type InstanceChargeType: String
        # @param Period: 购买时长，单位：月。取值为1到48，默认为1
        # @type Period: Integer
        # @param GoodsNum: 一次性购买的实例数量。取值1-100，默认取值为1
        # @type GoodsNum: Integer
        # @param DBVersion: sqlserver版本，目前只支持：2008R2（SQL Server 2008 Enterprise），2012SP3（SQL Server 2012 Enterprise），2016SP1（SQL Server 2016 Enterprise），201602（SQL Server 2016 Standard）2017（SQL Server 2017 Enterprise）版本。默认为2008R2版本
        # @type DBVersion: String
        # @param Cpu: 预购买实例的CPU核心数
        # @type Cpu: Integer
        # @param InstanceType: 购买实例的类型 HA-高可用型(包括双机高可用，alwaysOn集群)，RO-只读副本，SI-基础版，默认取值HA
        # @type InstanceType: String
        # @param MachineType: 购买实例的宿主机类型，PM-物理机, CLOUD_PREMIUM-虚拟机高性能云盘，CLOUD_SSD-虚拟机SSD云盘，默认取值PM
        # @type MachineType: String

        attr_accessor :Zone, :Memory, :Storage, :InstanceChargeType, :Period, :GoodsNum, :DBVersion, :Cpu, :InstanceType, :MachineType
        
        def initialize(zone=nil, memory=nil, storage=nil, instancechargetype=nil, period=nil, goodsnum=nil, dbversion=nil, cpu=nil, instancetype=nil, machinetype=nil)
          @Zone = zone
          @Memory = memory
          @Storage = storage
          @InstanceChargeType = instancechargetype
          @Period = period
          @GoodsNum = goodsnum
          @DBVersion = dbversion
          @Cpu = cpu
          @InstanceType = instancetype
          @MachineType = machinetype
        end

        def deserialize(params)
          @Zone = params['Zone']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @InstanceChargeType = params['InstanceChargeType']
          @Period = params['Period']
          @GoodsNum = params['GoodsNum']
          @DBVersion = params['DBVersion']
          @Cpu = params['Cpu']
          @InstanceType = params['InstanceType']
          @MachineType = params['MachineType']
        end
      end

      # InquiryPriceCreateDBInstances返回参数结构体
      class InquiryPriceCreateDBInstancesResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 未打折前价格，其值除以100表示多少钱。例如10010表示100.10元
        # @type OriginalPrice: Integer
        # @param Price: 实际需要支付的价格，其值除以100表示多少钱。例如10010表示100.10元
        # @type Price: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalPrice, :Price, :RequestId
        
        def initialize(originalprice=nil, price=nil, requestid=nil)
          @OriginalPrice = originalprice
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalPrice = params['OriginalPrice']
          @Price = params['Price']
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceRenewDBInstance请求参数结构体
      class InquiryPriceRenewDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Period: 续费周期。按月续费最多48个月。默认查询续费一个月的价格
        # @type Period: Integer
        # @param TimeUnit: 续费周期单位。month表示按月续费，当前只支持按月付费查询价格
        # @type TimeUnit: String

        attr_accessor :InstanceId, :Period, :TimeUnit
        
        def initialize(instanceid=nil, period=nil, timeunit=nil)
          @InstanceId = instanceid
          @Period = period
          @TimeUnit = timeunit
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Period = params['Period']
          @TimeUnit = params['TimeUnit']
        end
      end

      # InquiryPriceRenewDBInstance返回参数结构体
      class InquiryPriceRenewDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 未打折的原价，其值除以100表示最终的价格。例如10094表示100.94元
        # @type OriginalPrice: Integer
        # @param Price: 实际需要支付价格，其值除以100表示最终的价格。例如10094表示100.94元
        # @type Price: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalPrice, :Price, :RequestId
        
        def initialize(originalprice=nil, price=nil, requestid=nil)
          @OriginalPrice = originalprice
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalPrice = params['OriginalPrice']
          @Price = params['Price']
          @RequestId = params['RequestId']
        end
      end

      # InquiryPriceUpgradeDBInstance请求参数结构体
      class InquiryPriceUpgradeDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param Memory: 实例升级后的内存大小，单位GB，其值不能比当前实例内存小
        # @type Memory: Integer
        # @param Storage: 实例升级后的磁盘大小，单位GB，其值不能比当前实例磁盘小
        # @type Storage: Integer
        # @param Cpu: 实例升级后的CPU核心数，其值不能比当前实例CPU小
        # @type Cpu: Integer

        attr_accessor :InstanceId, :Memory, :Storage, :Cpu
        
        def initialize(instanceid=nil, memory=nil, storage=nil, cpu=nil)
          @InstanceId = instanceid
          @Memory = memory
          @Storage = storage
          @Cpu = cpu
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @Cpu = params['Cpu']
        end
      end

      # InquiryPriceUpgradeDBInstance返回参数结构体
      class InquiryPriceUpgradeDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param OriginalPrice: 未打折的原价，其值除以100表示最终的价格。例如10094表示100.94元
        # @type OriginalPrice: Integer
        # @param Price: 实际需要支付价格，其值除以100表示最终的价格。例如10094表示100.94元
        # @type Price: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OriginalPrice, :Price, :RequestId
        
        def initialize(originalprice=nil, price=nil, requestid=nil)
          @OriginalPrice = originalprice
          @Price = price
          @RequestId = requestid
        end

        def deserialize(params)
          @OriginalPrice = params['OriginalPrice']
          @Price = params['Price']
          @RequestId = params['RequestId']
        end
      end

      # 实例的数据库信息
      class InstanceDBDetail < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param DBDetails: 数据库信息列表
        # @type DBDetails: Array

        attr_accessor :InstanceId, :DBDetails
        
        def initialize(instanceid=nil, dbdetails=nil)
          @InstanceId = instanceid
          @DBDetails = dbdetails
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DBDetails = params['DBDetails']
        end
      end

      # 实例续费状态信息
      class InstanceRenewInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-j8kv137v
        # @type InstanceId: String
        # @param RenewFlag: 实例续费标记。0：正常续费，1：自动续费，2：到期不续
        # @type RenewFlag: Integer

        attr_accessor :InstanceId, :RenewFlag
        
        def initialize(instanceid=nil, renewflag=nil)
          @InstanceId = instanceid
          @RenewFlag = renewflag
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RenewFlag = params['RenewFlag']
        end
      end

      # 需要迁移的DB列表
      class MigrateDB < TencentCloud::Common::AbstractModel
        # @param DBName: 迁移数据库的名称
        # @type DBName: String

        attr_accessor :DBName
        
        def initialize(dbname=nil)
          @DBName = dbname
        end

        def deserialize(params)
          @DBName = params['DBName']
        end
      end

      # 迁移的进度详情类型
      class MigrateDetail < TencentCloud::Common::AbstractModel
        # @param StepName: 当前环节的名称
        # @type StepName: String
        # @param Progress: 当前环节的进度（单位是%）
        # @type Progress: Integer

        attr_accessor :StepName, :Progress
        
        def initialize(stepname=nil, progress=nil)
          @StepName = stepname
          @Progress = progress
        end

        def deserialize(params)
          @StepName = params['StepName']
          @Progress = params['Progress']
        end
      end

      # 迁移任务的源类型
      class MigrateSource < TencentCloud::Common::AbstractModel
        # @param InstanceId: 迁移源实例的ID，MigrateType=1(TencentDB for SQLServers)时使用，格式如：mssql-si2823jyl
        # @type InstanceId: String
        # @param CvmId: 迁移源Cvm的ID，MigrateType=2(云服务器自建SQLServer数据库)时使用
        # @type CvmId: String
        # @param VpcId: 迁移源Cvm的Vpc网络标识，MigrateType=2(云服务器自建SQLServer数据库)时使用，格式如：vpc-6ys9ont9
        # @type VpcId: String
        # @param SubnetId: 迁移源Cvm的Vpc下的子网标识，MigrateType=2(云服务器自建SQLServer数据库)时使用，格式如：subnet-h9extioi
        # @type SubnetId: String
        # @param UserName: 用户名，MigrateType=1或MigrateType=2使用
        # @type UserName: String
        # @param Password: 密码，MigrateType=1或MigrateType=2使用
        # @type Password: String
        # @param Ip: 迁移源Cvm自建库的内网IP，MigrateType=2(云服务器自建SQLServer数据库)时使用
        # @type Ip: String
        # @param Port: 迁移源Cvm自建库的端口号，MigrateType=2(云服务器自建SQLServer数据库)时使用
        # @type Port: Integer
        # @param Url: 离线迁移的源备份地址，MigrateType=4或MigrateType=5使用
        # @type Url: Array
        # @param UrlPassword: 离线迁移的源备份密码，MigrateType=4或MigrateType=5使用
        # @type UrlPassword: String

        attr_accessor :InstanceId, :CvmId, :VpcId, :SubnetId, :UserName, :Password, :Ip, :Port, :Url, :UrlPassword
        
        def initialize(instanceid=nil, cvmid=nil, vpcid=nil, subnetid=nil, username=nil, password=nil, ip=nil, port=nil, url=nil, urlpassword=nil)
          @InstanceId = instanceid
          @CvmId = cvmid
          @VpcId = vpcid
          @SubnetId = subnetid
          @UserName = username
          @Password = password
          @Ip = ip
          @Port = port
          @Url = url
          @UrlPassword = urlpassword
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @CvmId = params['CvmId']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @UserName = params['UserName']
          @Password = params['Password']
          @Ip = params['Ip']
          @Port = params['Port']
          @Url = params['Url']
          @UrlPassword = params['UrlPassword']
        end
      end

      # 迁移任务的目标类型
      class MigrateTarget < TencentCloud::Common::AbstractModel
        # @param InstanceId: 迁移目标实例的ID，格式如：mssql-si2823jyl
        # @type InstanceId: String
        # @param UserName: 迁移目标实例的用户名
        # @type UserName: String
        # @param Password: 迁移目标实例的密码
        # @type Password: String

        attr_accessor :InstanceId, :UserName, :Password
        
        def initialize(instanceid=nil, username=nil, password=nil)
          @InstanceId = instanceid
          @UserName = username
          @Password = password
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @UserName = params['UserName']
          @Password = params['Password']
        end
      end

      # 查询迁移任务列表类型
      class MigrateTask < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务ID
        # @type MigrateId: Integer
        # @param MigrateName: 迁移任务名称
        # @type MigrateName: String
        # @param AppId: 迁移任务所属的用户ID
        # @type AppId: Integer
        # @param Region: 迁移任务所属的地域
        # @type Region: String
        # @param SourceType: 迁移源的类型 1:TencentDB for SQLServer 2:云服务器自建SQLServer数据库 4:SQLServer备份还原 5:SQLServer备份还原（COS方式）
        # @type SourceType: Integer
        # @param CreateTime: 迁移任务的创建时间
        # @type CreateTime: String
        # @param StartTime: 迁移任务的开始时间
        # @type StartTime: String
        # @param EndTime: 迁移任务的结束时间
        # @type EndTime: String
        # @param Status: 迁移任务的状态（1:初始化,4:迁移中,5.迁移失败,6.迁移成功）
        # @type Status: Integer
        # @param Message: 信息
        # @type Message: String
        # @param CheckFlag: 是否迁移任务经过检查（0:未校验,1:校验成功,2:校验失败,3:校验中）
        # @type CheckFlag: Integer
        # @param Progress: 迁移任务当前进度（单位%）
        # @type Progress: Integer
        # @param MigrateDetail: 迁移任务进度细节
        # @type MigrateDetail: :class:`Tencentcloud::Sqlserver.v20180328.models.MigrateDetail`

        attr_accessor :MigrateId, :MigrateName, :AppId, :Region, :SourceType, :CreateTime, :StartTime, :EndTime, :Status, :Message, :CheckFlag, :Progress, :MigrateDetail
        
        def initialize(migrateid=nil, migratename=nil, appid=nil, region=nil, sourcetype=nil, createtime=nil, starttime=nil, endtime=nil, status=nil, message=nil, checkflag=nil, progress=nil, migratedetail=nil)
          @MigrateId = migrateid
          @MigrateName = migratename
          @AppId = appid
          @Region = region
          @SourceType = sourcetype
          @CreateTime = createtime
          @StartTime = starttime
          @EndTime = endtime
          @Status = status
          @Message = message
          @CheckFlag = checkflag
          @Progress = progress
          @MigrateDetail = migratedetail
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
          @MigrateName = params['MigrateName']
          @AppId = params['AppId']
          @Region = params['Region']
          @SourceType = params['SourceType']
          @CreateTime = params['CreateTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Status = params['Status']
          @Message = params['Message']
          @CheckFlag = params['CheckFlag']
          @Progress = params['Progress']
          unless params['MigrateDetail'].nil?
            @MigrateDetail = MigrateDetail.new.deserialize(params[MigrateDetail])
          end
        end
      end

      # ModifyAccountPrivilege请求参数结构体
      class ModifyAccountPrivilegeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据库实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param Accounts: 账号权限变更信息
        # @type Accounts: Array

        attr_accessor :InstanceId, :Accounts
        
        def initialize(instanceid=nil, accounts=nil)
          @InstanceId = instanceid
          @Accounts = accounts
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Accounts = params['Accounts']
        end
      end

      # ModifyAccountPrivilege返回参数结构体
      class ModifyAccountPrivilegeResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务流程ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId
        
        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyAccountRemark请求参数结构体
      class ModifyAccountRemarkRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-j8kv137v
        # @type InstanceId: String
        # @param Accounts: 修改备注的账户信息
        # @type Accounts: Array

        attr_accessor :InstanceId, :Accounts
        
        def initialize(instanceid=nil, accounts=nil)
          @InstanceId = instanceid
          @Accounts = accounts
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Accounts = params['Accounts']
        end
      end

      # ModifyAccountRemark返回参数结构体
      class ModifyAccountRemarkResponse < TencentCloud::Common::AbstractModel
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

      # ModifyBackupStrategy请求参数结构体
      class ModifyBackupStrategyRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param BackupType: 备份类型，当前只支持按天备份，取值为daily
        # @type BackupType: String
        # @param BackupTime: 备份时间点，取值为0-23的整数
        # @type BackupTime: Integer
        # @param BackupDay: BackupType取值为daily时，表示备份间隔天数。当前取值只能为1
        # @type BackupDay: Integer

        attr_accessor :InstanceId, :BackupType, :BackupTime, :BackupDay
        
        def initialize(instanceid=nil, backuptype=nil, backuptime=nil, backupday=nil)
          @InstanceId = instanceid
          @BackupType = backuptype
          @BackupTime = backuptime
          @BackupDay = backupday
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupType = params['BackupType']
          @BackupTime = params['BackupTime']
          @BackupDay = params['BackupDay']
        end
      end

      # ModifyBackupStrategy返回参数结构体
      class ModifyBackupStrategyResponse < TencentCloud::Common::AbstractModel
        # @param Errno: 返回错误码
        # @type Errno: Integer
        # @param Msg: 返回错误信息
        # @type Msg: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Errno, :Msg, :RequestId
        
        def initialize(errno=nil, msg=nil, requestid=nil)
          @Errno = errno
          @Msg = msg
          @RequestId = requestid
        end

        def deserialize(params)
          @Errno = params['Errno']
          @Msg = params['Msg']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDBInstanceName请求参数结构体
      class ModifyDBInstanceNameRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据库实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param InstanceName: 新的数据库实例名字
        # @type InstanceName: String

        attr_accessor :InstanceId, :InstanceName
        
        def initialize(instanceid=nil, instancename=nil)
          @InstanceId = instanceid
          @InstanceName = instancename
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @InstanceName = params['InstanceName']
        end
      end

      # ModifyDBInstanceName返回参数结构体
      class ModifyDBInstanceNameResponse < TencentCloud::Common::AbstractModel
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

      # ModifyDBInstanceProject请求参数结构体
      class ModifyDBInstanceProjectRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 实例ID数组，形如mssql-j8kv137v
        # @type InstanceIdSet: Array
        # @param ProjectId: 项目ID，为0的话表示默认项目
        # @type ProjectId: Integer

        attr_accessor :InstanceIdSet, :ProjectId
        
        def initialize(instanceidset=nil, projectid=nil)
          @InstanceIdSet = instanceidset
          @ProjectId = projectid
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
          @ProjectId = params['ProjectId']
        end
      end

      # ModifyDBInstanceProject返回参数结构体
      class ModifyDBInstanceProjectResponse < TencentCloud::Common::AbstractModel
        # @param Count: 修改成功的实例个数
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :RequestId
        
        def initialize(count=nil, requestid=nil)
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDBInstanceRenewFlag请求参数结构体
      class ModifyDBInstanceRenewFlagRequest < TencentCloud::Common::AbstractModel
        # @param RenewFlags: 实例续费状态标记信息
        # @type RenewFlags: Array

        attr_accessor :RenewFlags
        
        def initialize(renewflags=nil)
          @RenewFlags = renewflags
        end

        def deserialize(params)
          @RenewFlags = params['RenewFlags']
        end
      end

      # ModifyDBInstanceRenewFlag返回参数结构体
      class ModifyDBInstanceRenewFlagResponse < TencentCloud::Common::AbstractModel
        # @param Count: 修改成功的个数
        # @type Count: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Count, :RequestId
        
        def initialize(count=nil, requestid=nil)
          @Count = count
          @RequestId = requestid
        end

        def deserialize(params)
          @Count = params['Count']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDBName请求参数结构体
      class ModifyDBNameRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param OldDBName: 旧数据库名
        # @type OldDBName: String
        # @param NewDBName: 新数据库名
        # @type NewDBName: String

        attr_accessor :InstanceId, :OldDBName, :NewDBName
        
        def initialize(instanceid=nil, olddbname=nil, newdbname=nil)
          @InstanceId = instanceid
          @OldDBName = olddbname
          @NewDBName = newdbname
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @OldDBName = params['OldDBName']
          @NewDBName = params['NewDBName']
        end
      end

      # ModifyDBName返回参数结构体
      class ModifyDBNameResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 任务流ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId
        
        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyDBRemark请求参数结构体
      class ModifyDBRemarkRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-rljoi3bf
        # @type InstanceId: String
        # @param DBRemarks: 数据库名称及备注数组，每个元素包含数据库名和对应的备注
        # @type DBRemarks: Array

        attr_accessor :InstanceId, :DBRemarks
        
        def initialize(instanceid=nil, dbremarks=nil)
          @InstanceId = instanceid
          @DBRemarks = dbremarks
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @DBRemarks = params['DBRemarks']
        end
      end

      # ModifyDBRemark返回参数结构体
      class ModifyDBRemarkResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMaintenanceSpan请求参数结构体
      class ModifyMaintenanceSpanRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-k8voqdlz
        # @type InstanceId: String
        # @param Weekly: 以周为单位，表示允许周几维护，例如：[1,2,3,4,5,6,7]表示周一到周日均为可维护日，本参数不填，则不修改此值。
        # @type Weekly: Array
        # @param StartTime: 每天可维护的开始时间，例如：10:24标识可维护时间窗10点24分开始，本参数不填，则不修改此值。
        # @type StartTime: String
        # @param Span: 每天可维护的持续时间，单位是h，例如：1 表示从可维护的开始时间起持续1小时，本参数不填，则不修改此值。
        # @type Span: Integer

        attr_accessor :InstanceId, :Weekly, :StartTime, :Span
        
        def initialize(instanceid=nil, weekly=nil, starttime=nil, span=nil)
          @InstanceId = instanceid
          @Weekly = weekly
          @StartTime = starttime
          @Span = span
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Weekly = params['Weekly']
          @StartTime = params['StartTime']
          @Span = params['Span']
        end
      end

      # ModifyMaintenanceSpan返回参数结构体
      class ModifyMaintenanceSpanResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMigration请求参数结构体
      class ModifyMigrationRequest < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务ID
        # @type MigrateId: Integer
        # @param MigrateName: 新的迁移任务的名称，若不填则不修改
        # @type MigrateName: String
        # @param MigrateType: 新的迁移类型（1:结构迁移 2:数据迁移 3:增量同步），若不填则不修改
        # @type MigrateType: Integer
        # @param SourceType: 迁移源的类型 1:TencentDB for SQLServer 2:云服务器自建SQLServer数据库 4:SQLServer备份还原 5:SQLServer备份还原（COS方式），若不填则不修改
        # @type SourceType: Integer
        # @param Source: 迁移源，若不填则不修改
        # @type Source: :class:`Tencentcloud::Sqlserver.v20180328.models.MigrateSource`
        # @param Target: 迁移目标，若不填则不修改
        # @type Target: :class:`Tencentcloud::Sqlserver.v20180328.models.MigrateTarget`
        # @param MigrateDBSet: 迁移DB对象 ，离线迁移（SourceType=4或SourceType=5）不使用，若不填则不修改
        # @type MigrateDBSet: Array

        attr_accessor :MigrateId, :MigrateName, :MigrateType, :SourceType, :Source, :Target, :MigrateDBSet
        
        def initialize(migrateid=nil, migratename=nil, migratetype=nil, sourcetype=nil, source=nil, target=nil, migratedbset=nil)
          @MigrateId = migrateid
          @MigrateName = migratename
          @MigrateType = migratetype
          @SourceType = sourcetype
          @Source = source
          @Target = target
          @MigrateDBSet = migratedbset
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
          @MigrateName = params['MigrateName']
          @MigrateType = params['MigrateType']
          @SourceType = params['SourceType']
          unless params['Source'].nil?
            @Source = MigrateSource.new.deserialize(params[Source])
          end
          unless params['Target'].nil?
            @Target = MigrateTarget.new.deserialize(params[Target])
          end
          @MigrateDBSet = params['MigrateDBSet']
        end
      end

      # ModifyMigration返回参数结构体
      class ModifyMigrationResponse < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务ID
        # @type MigrateId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MigrateId, :RequestId
        
        def initialize(migrateid=nil, requestid=nil)
          @MigrateId = migrateid
          @RequestId = requestid
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
          @RequestId = params['RequestId']
        end
      end

      # ModifyPublishSubscribeName请求参数结构体
      class ModifyPublishSubscribeNameRequest < TencentCloud::Common::AbstractModel
        # @param PublishSubscribeId: 发布订阅ID
        # @type PublishSubscribeId: Integer
        # @param PublishSubscribeName: 待修改的发布订阅名称
        # @type PublishSubscribeName: String

        attr_accessor :PublishSubscribeId, :PublishSubscribeName
        
        def initialize(publishsubscribeid=nil, publishsubscribename=nil)
          @PublishSubscribeId = publishsubscribeid
          @PublishSubscribeName = publishsubscribename
        end

        def deserialize(params)
          @PublishSubscribeId = params['PublishSubscribeId']
          @PublishSubscribeName = params['PublishSubscribeName']
        end
      end

      # ModifyPublishSubscribeName返回参数结构体
      class ModifyPublishSubscribeNameResponse < TencentCloud::Common::AbstractModel
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

      # 发布订阅对象
      class PublishSubscribe < TencentCloud::Common::AbstractModel
        # @param Id: 发布订阅ID
        # @type Id: Integer
        # @param Name: 发布订阅名称
        # @type Name: String
        # @param PublishInstanceId: 发布实例ID
        # @type PublishInstanceId: String
        # @param PublishInstanceName: 发布实例名称
        # @type PublishInstanceName: String
        # @param PublishInstanceIp: 发布实例IP
        # @type PublishInstanceIp: String
        # @param SubscribeInstanceId: 订阅实例ID
        # @type SubscribeInstanceId: String
        # @param SubscribeInstanceName: 订阅实例名称
        # @type SubscribeInstanceName: String
        # @param SubscribeInstanceIp: 订阅实例IP
        # @type SubscribeInstanceIp: String
        # @param DatabaseTupleSet: 数据库的订阅发布关系集合
        # @type DatabaseTupleSet: Array

        attr_accessor :Id, :Name, :PublishInstanceId, :PublishInstanceName, :PublishInstanceIp, :SubscribeInstanceId, :SubscribeInstanceName, :SubscribeInstanceIp, :DatabaseTupleSet
        
        def initialize(id=nil, name=nil, publishinstanceid=nil, publishinstancename=nil, publishinstanceip=nil, subscribeinstanceid=nil, subscribeinstancename=nil, subscribeinstanceip=nil, databasetupleset=nil)
          @Id = id
          @Name = name
          @PublishInstanceId = publishinstanceid
          @PublishInstanceName = publishinstancename
          @PublishInstanceIp = publishinstanceip
          @SubscribeInstanceId = subscribeinstanceid
          @SubscribeInstanceName = subscribeinstancename
          @SubscribeInstanceIp = subscribeinstanceip
          @DatabaseTupleSet = databasetupleset
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @PublishInstanceId = params['PublishInstanceId']
          @PublishInstanceName = params['PublishInstanceName']
          @PublishInstanceIp = params['PublishInstanceIp']
          @SubscribeInstanceId = params['SubscribeInstanceId']
          @SubscribeInstanceName = params['SubscribeInstanceName']
          @SubscribeInstanceIp = params['SubscribeInstanceIp']
          @DatabaseTupleSet = params['DatabaseTupleSet']
        end
      end

      # 地域信息
      class RegionInfo < TencentCloud::Common::AbstractModel
        # @param Region: 地域英文ID，类似ap-guanghou
        # @type Region: String
        # @param RegionName: 地域中文名称
        # @type RegionName: String
        # @param RegionId: 地域数字ID
        # @type RegionId: Integer
        # @param RegionState: 该地域目前是否可以售卖，UNAVAILABLE-不可售卖；AVAILABLE-可售卖
        # @type RegionState: String

        attr_accessor :Region, :RegionName, :RegionId, :RegionState
        
        def initialize(region=nil, regionname=nil, regionid=nil, regionstate=nil)
          @Region = region
          @RegionName = regionname
          @RegionId = regionid
          @RegionState = regionstate
        end

        def deserialize(params)
          @Region = params['Region']
          @RegionName = params['RegionName']
          @RegionId = params['RegionId']
          @RegionState = params['RegionState']
        end
      end

      # RemoveBackups请求参数结构体
      class RemoveBackupsRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-j8kv137v
        # @type InstanceId: String
        # @param BackupNames: 待删除的备份名称，备份名称可通过DescribeBackups接口的FileName字段获得。单次请求批量删除备份数不能超过10个。
        # @type BackupNames: Array

        attr_accessor :InstanceId, :BackupNames
        
        def initialize(instanceid=nil, backupnames=nil)
          @InstanceId = instanceid
          @BackupNames = backupnames
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupNames = params['BackupNames']
        end
      end

      # RemoveBackups返回参数结构体
      class RemoveBackupsResponse < TencentCloud::Common::AbstractModel
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

      # RenewDBInstance请求参数结构体
      class RenewDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-j8kv137v
        # @type InstanceId: String
        # @param Period: 续费多少个月，取值范围为1-48，默认为1
        # @type Period: Integer
        # @param AutoVoucher: 是否自动使用代金券，0-不使用；1-使用；默认不实用
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID数组，目前只支持使用1张代金券
        # @type VoucherIds: Array

        attr_accessor :InstanceId, :Period, :AutoVoucher, :VoucherIds
        
        def initialize(instanceid=nil, period=nil, autovoucher=nil, voucherids=nil)
          @InstanceId = instanceid
          @Period = period
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Period = params['Period']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
        end
      end

      # RenewDBInstance返回参数结构体
      class RenewDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单名称
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :RequestId
        
        def initialize(dealname=nil, requestid=nil)
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # ResetAccountPassword请求参数结构体
      class ResetAccountPasswordRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据库实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String
        # @param Accounts: 更新后的账户密码信息数组
        # @type Accounts: Array

        attr_accessor :InstanceId, :Accounts
        
        def initialize(instanceid=nil, accounts=nil)
          @InstanceId = instanceid
          @Accounts = accounts
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Accounts = params['Accounts']
        end
      end

      # ResetAccountPassword返回参数结构体
      class ResetAccountPasswordResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 修改帐号密码的异步任务流程ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId
        
        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # RestartDBInstance请求参数结构体
      class RestartDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 数据库实例ID，形如mssql-njj2mtpl
        # @type InstanceId: String

        attr_accessor :InstanceId
        
        def initialize(instanceid=nil)
          @InstanceId = instanceid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
        end
      end

      # RestartDBInstance返回参数结构体
      class RestartDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务流程ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId
        
        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # RestoreInstance请求参数结构体
      class RestoreInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-j8kv137v
        # @type InstanceId: String
        # @param BackupId: 备份文件ID，该ID可以通过DescribeBackups接口返回数据中的Id字段获得
        # @type BackupId: Integer

        attr_accessor :InstanceId, :BackupId
        
        def initialize(instanceid=nil, backupid=nil)
          @InstanceId = instanceid
          @BackupId = backupid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @BackupId = params['BackupId']
        end
      end

      # RestoreInstance返回参数结构体
      class RestoreInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步流程任务ID，使用FlowId调用DescribeFlowStatus接口获取任务执行状态
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId
        
        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # RollbackInstance请求参数结构体
      class RollbackInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID
        # @type InstanceId: String
        # @param Type: 回档类型，0-回档的数据库覆盖原库；1-回档的数据库以重命名的形式生成，不覆盖原库
        # @type Type: Integer
        # @param DBs: 需要回档的数据库
        # @type DBs: Array
        # @param Time: 回档目标时间点
        # @type Time: String

        attr_accessor :InstanceId, :Type, :DBs, :Time
        
        def initialize(instanceid=nil, type=nil, dbs=nil, time=nil)
          @InstanceId = instanceid
          @Type = type
          @DBs = dbs
          @Time = time
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Type = params['Type']
          @DBs = params['DBs']
          @Time = params['Time']
        end
      end

      # RollbackInstance返回参数结构体
      class RollbackInstanceResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 异步任务ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId
        
        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # RunMigration请求参数结构体
      class RunMigrationRequest < TencentCloud::Common::AbstractModel
        # @param MigrateId: 迁移任务ID
        # @type MigrateId: Integer

        attr_accessor :MigrateId
        
        def initialize(migrateid=nil)
          @MigrateId = migrateid
        end

        def deserialize(params)
          @MigrateId = params['MigrateId']
        end
      end

      # RunMigration返回参数结构体
      class RunMigrationResponse < TencentCloud::Common::AbstractModel
        # @param FlowId: 迁移流程启动后，返回流程ID
        # @type FlowId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FlowId, :RequestId
        
        def initialize(flowid=nil, requestid=nil)
          @FlowId = flowid
          @RequestId = requestid
        end

        def deserialize(params)
          @FlowId = params['FlowId']
          @RequestId = params['RequestId']
        end
      end

      # 慢查询日志文件信息
      class SlowlogInfo < TencentCloud::Common::AbstractModel
        # @param Id: 慢查询日志文件唯一标识
        # @type Id: Integer
        # @param StartTime: 文件生成的开始时间
        # @type StartTime: String
        # @param EndTime: 文件生成的结束时间
        # @type EndTime: String
        # @param Size: 文件大小（KB）
        # @type Size: Integer
        # @param Count: 文件中log条数
        # @type Count: Integer
        # @param InternalAddr: 内网下载地址
        # @type InternalAddr: String
        # @param ExternalAddr: 外网下载地址
        # @type ExternalAddr: String
        # @param Status: 状态（1成功 2失败）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :Id, :StartTime, :EndTime, :Size, :Count, :InternalAddr, :ExternalAddr, :Status
        
        def initialize(id=nil, starttime=nil, endtime=nil, size=nil, count=nil, internaladdr=nil, externaladdr=nil, status=nil)
          @Id = id
          @StartTime = starttime
          @EndTime = endtime
          @Size = size
          @Count = count
          @InternalAddr = internaladdr
          @ExternalAddr = externaladdr
          @Status = status
        end

        def deserialize(params)
          @Id = params['Id']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Size = params['Size']
          @Count = params['Count']
          @InternalAddr = params['InternalAddr']
          @ExternalAddr = params['ExternalAddr']
          @Status = params['Status']
        end
      end

      # 实例可售卖的规格信息
      class SpecInfo < TencentCloud::Common::AbstractModel
        # @param SpecId: 实例规格ID，利用DescribeZones返回的SpecId，结合DescribeProductConfig返回的可售卖规格信息，可获悉某个可用区下可购买什么规格的实例
        # @type SpecId: Integer
        # @param MachineType: 机型ID
        # @type MachineType: String
        # @param MachineTypeName: 机型中文名称
        # @type MachineTypeName: String
        # @param Version: 数据库版本信息。取值为2008R2（表示SQL Server 2008 R2），2012SP3（表示SQL Server 2012），2016SP1（表示SQL Server 2016 SP1）
        # @type Version: String
        # @param VersionName: Version字段对应的版本名称
        # @type VersionName: String
        # @param Memory: 内存大小，单位GB
        # @type Memory: Integer
        # @param CPU: CPU核数
        # @type CPU: Integer
        # @param MinStorage: 此规格下最小的磁盘大小，单位GB
        # @type MinStorage: Integer
        # @param MaxStorage: 此规格下最大的磁盘大小，单位GB
        # @type MaxStorage: Integer
        # @param QPS: 此规格对应的QPS大小
        # @type QPS: Integer
        # @param SuitInfo: 此规格的中文描述信息
        # @type SuitInfo: String
        # @param Pid: 此规格对应的包年包月Pid
        # @type Pid: Integer
        # @param PostPid: 此规格对应的按量计费Pid列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PostPid: Array
        # @param PayModeStatus: 此规格下支持的付费模式，POST-仅支持按量计费 PRE-仅支持包年包月 ALL-支持所有
        # @type PayModeStatus: String

        attr_accessor :SpecId, :MachineType, :MachineTypeName, :Version, :VersionName, :Memory, :CPU, :MinStorage, :MaxStorage, :QPS, :SuitInfo, :Pid, :PostPid, :PayModeStatus
        
        def initialize(specid=nil, machinetype=nil, machinetypename=nil, version=nil, versionname=nil, memory=nil, cpu=nil, minstorage=nil, maxstorage=nil, qps=nil, suitinfo=nil, pid=nil, postpid=nil, paymodestatus=nil)
          @SpecId = specid
          @MachineType = machinetype
          @MachineTypeName = machinetypename
          @Version = version
          @VersionName = versionname
          @Memory = memory
          @CPU = cpu
          @MinStorage = minstorage
          @MaxStorage = maxstorage
          @QPS = qps
          @SuitInfo = suitinfo
          @Pid = pid
          @PostPid = postpid
          @PayModeStatus = paymodestatus
        end

        def deserialize(params)
          @SpecId = params['SpecId']
          @MachineType = params['MachineType']
          @MachineTypeName = params['MachineTypeName']
          @Version = params['Version']
          @VersionName = params['VersionName']
          @Memory = params['Memory']
          @CPU = params['CPU']
          @MinStorage = params['MinStorage']
          @MaxStorage = params['MaxStorage']
          @QPS = params['QPS']
          @SuitInfo = params['SuitInfo']
          @Pid = params['Pid']
          @PostPid = params['PostPid']
          @PayModeStatus = params['PayModeStatus']
        end
      end

      # TerminateDBInstance请求参数结构体
      class TerminateDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIdSet: 主动销毁的实例ID列表，格式如：[mssql-3l3fgqn7]。与云数据库控制台页面中显示的实例ID相同
        # @type InstanceIdSet: Array

        attr_accessor :InstanceIdSet
        
        def initialize(instanceidset=nil)
          @InstanceIdSet = instanceidset
        end

        def deserialize(params)
          @InstanceIdSet = params['InstanceIdSet']
        end
      end

      # TerminateDBInstance返回参数结构体
      class TerminateDBInstanceResponse < TencentCloud::Common::AbstractModel
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

      # UpgradeDBInstance请求参数结构体
      class UpgradeDBInstanceRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: 实例ID，形如mssql-j8kv137v
        # @type InstanceId: String
        # @param Memory: 实例升级后内存大小，单位GB，其值不能小于当前实例内存大小
        # @type Memory: Integer
        # @param Storage: 实例升级后磁盘大小，单位GB，其值不能小于当前实例磁盘大小
        # @type Storage: Integer
        # @param AutoVoucher: 是否自动使用代金券，0 - 不使用；1 - 默认使用。取值默认为0
        # @type AutoVoucher: Integer
        # @param VoucherIds: 代金券ID，目前单个订单只能使用一张代金券
        # @type VoucherIds: Array
        # @param Cpu: 实例升级后的CPU核心数
        # @type Cpu: Integer

        attr_accessor :InstanceId, :Memory, :Storage, :AutoVoucher, :VoucherIds, :Cpu
        
        def initialize(instanceid=nil, memory=nil, storage=nil, autovoucher=nil, voucherids=nil, cpu=nil)
          @InstanceId = instanceid
          @Memory = memory
          @Storage = storage
          @AutoVoucher = autovoucher
          @VoucherIds = voucherids
          @Cpu = cpu
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Memory = params['Memory']
          @Storage = params['Storage']
          @AutoVoucher = params['AutoVoucher']
          @VoucherIds = params['VoucherIds']
          @Cpu = params['Cpu']
        end
      end

      # UpgradeDBInstance返回参数结构体
      class UpgradeDBInstanceResponse < TencentCloud::Common::AbstractModel
        # @param DealName: 订单名称
        # @type DealName: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DealName, :RequestId
        
        def initialize(dealname=nil, requestid=nil)
          @DealName = dealname
          @RequestId = requestid
        end

        def deserialize(params)
          @DealName = params['DealName']
          @RequestId = params['RequestId']
        end
      end

      # 可用区信息
      class ZoneInfo < TencentCloud::Common::AbstractModel
        # @param Zone: 可用区英文ID，形如ap-guangzhou-1，表示广州一区
        # @type Zone: String
        # @param ZoneName: 可用区中文名称
        # @type ZoneName: String
        # @param ZoneId: 可用区数字ID
        # @type ZoneId: Integer
        # @param SpecId: 该可用区目前可售卖的规格ID，利用SpecId，结合接口DescribeProductConfig返回的数据，可获悉该可用区目前可售卖的规格大小
        # @type SpecId: Integer
        # @param Version: 当前可用区与规格下，可售卖的数据库版本，形如2008R2（表示SQL Server 2008 R2）。其可选值有2008R2（表示SQL Server 2008 R2），2012SP3（表示SQL Server 2012），2016SP1（表示SQL Server 2016 SP1）
        # @type Version: String

        attr_accessor :Zone, :ZoneName, :ZoneId, :SpecId, :Version
        
        def initialize(zone=nil, zonename=nil, zoneid=nil, specid=nil, version=nil)
          @Zone = zone
          @ZoneName = zonename
          @ZoneId = zoneid
          @SpecId = specid
          @Version = version
        end

        def deserialize(params)
          @Zone = params['Zone']
          @ZoneName = params['ZoneName']
          @ZoneId = params['ZoneId']
          @SpecId = params['SpecId']
          @Version = params['Version']
        end
      end

    end
  end
end
