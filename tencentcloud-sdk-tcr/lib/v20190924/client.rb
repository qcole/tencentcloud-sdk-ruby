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

require 'json'

module TencentCloud
  module Tcr
    module V20190924
      class Client < TencentCloud::Common::AbstractClient
        @@api_version = '2019-09-24'
        @@endpoint = 'tcr.tencentcloudapi.com'
        @@sdk_version = 'TCR_' + File.read(File.expand_path('../VERSION', __dir__)).strip


        # 用于在个人版镜像仓库中批量删除Tag

        # @param request: Request instance for BatchDeleteImagePersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::BatchDeleteImagePersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::BatchDeleteImagePersonalResponse`
        def BatchDeleteImagePersonal(request)
          body = send_request('BatchDeleteImagePersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDeleteImagePersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于个人版镜像仓库中批量删除镜像仓库

        # @param request: Request instance for BatchDeleteRepositoryPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::BatchDeleteRepositoryPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::BatchDeleteRepositoryPersonalResponse`
        def BatchDeleteRepositoryPersonal(request)
          body = send_request('BatchDeleteRepositoryPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = BatchDeleteRepositoryPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 检查待创建的实例名称是否符合规范

        # @param request: Request instance for CheckInstanceName.
        # @type request: :class:`Tencentcloud::tcr::V20190924::CheckInstanceNameRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::CheckInstanceNameResponse`
        def CheckInstanceName(request)
          body = send_request('CheckInstanceName', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CheckInstanceNameResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于创建应用更新触发器

        # @param request: Request instance for CreateApplicationTriggerPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::CreateApplicationTriggerPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::CreateApplicationTriggerPersonalResponse`
        def CreateApplicationTriggerPersonal(request)
          body = send_request('CreateApplicationTriggerPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateApplicationTriggerPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于在个人版中创建清理策略

        # @param request: Request instance for CreateImageLifecyclePersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::CreateImageLifecyclePersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::CreateImageLifecyclePersonalResponse`
        def CreateImageLifecyclePersonal(request)
          body = send_request('CreateImageLifecyclePersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateImageLifecyclePersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建实例

        # @param request: Request instance for CreateInstance.
        # @type request: :class:`Tencentcloud::tcr::V20190924::CreateInstanceRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::CreateInstanceResponse`
        def CreateInstance(request)
          body = send_request('CreateInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建实例的临时或长期访问凭证

        # @param request: Request instance for CreateInstanceToken.
        # @type request: :class:`Tencentcloud::tcr::V20190924::CreateInstanceTokenRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::CreateInstanceTokenResponse`
        def CreateInstanceToken(request)
          body = send_request('CreateInstanceToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateInstanceTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于在企业版中创建命名空间

        # @param request: Request instance for CreateNamespace.
        # @type request: :class:`Tencentcloud::tcr::V20190924::CreateNamespaceRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::CreateNamespaceResponse`
        def CreateNamespace(request)
          body = send_request('CreateNamespace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNamespaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建个人版镜像仓库命名空间，此命名空间全局唯一

        # @param request: Request instance for CreateNamespacePersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::CreateNamespacePersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::CreateNamespacePersonalResponse`
        def CreateNamespacePersonal(request)
          body = send_request('CreateNamespacePersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateNamespacePersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于企业版创建镜像仓库

        # @param request: Request instance for CreateRepository.
        # @type request: :class:`Tencentcloud::tcr::V20190924::CreateRepositoryRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::CreateRepositoryResponse`
        def CreateRepository(request)
          body = send_request('CreateRepository', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRepositoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于在个人版仓库中创建镜像仓库

        # @param request: Request instance for CreateRepositoryPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::CreateRepositoryPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::CreateRepositoryPersonalResponse`
        def CreateRepositoryPersonal(request)
          body = send_request('CreateRepositoryPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateRepositoryPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建个人用户

        # @param request: Request instance for CreateUserPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::CreateUserPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::CreateUserPersonalResponse`
        def CreateUserPersonal(request)
          body = send_request('CreateUserPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateUserPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 创建触发器

        # @param request: Request instance for CreateWebhookTrigger.
        # @type request: :class:`Tencentcloud::tcr::V20190924::CreateWebhookTriggerRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::CreateWebhookTriggerResponse`
        def CreateWebhookTrigger(request)
          body = send_request('CreateWebhookTrigger', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateWebhookTriggerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除应用更新触发器

        # @param request: Request instance for DeleteApplicationTriggerPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DeleteApplicationTriggerPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DeleteApplicationTriggerPersonalResponse`
        def DeleteApplicationTriggerPersonal(request)
          body = send_request('DeleteApplicationTriggerPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteApplicationTriggerPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除指定镜像

        # @param request: Request instance for DeleteImage.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DeleteImageRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DeleteImageResponse`
        def DeleteImage(request)
          body = send_request('DeleteImage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteImageResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于删除个人版全局镜像版本自动清理策略

        # @param request: Request instance for DeleteImageLifecycleGlobalPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DeleteImageLifecycleGlobalPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DeleteImageLifecycleGlobalPersonalResponse`
        def DeleteImageLifecycleGlobalPersonal(request)
          body = send_request('DeleteImageLifecycleGlobalPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteImageLifecycleGlobalPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于在个人版镜像仓库中删除仓库Tag自动清理策略

        # @param request: Request instance for DeleteImageLifecyclePersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DeleteImageLifecyclePersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DeleteImageLifecyclePersonalResponse`
        def DeleteImageLifecyclePersonal(request)
          body = send_request('DeleteImageLifecyclePersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteImageLifecyclePersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于在个人版中删除tag

        # @param request: Request instance for DeleteImagePersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DeleteImagePersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DeleteImagePersonalResponse`
        def DeleteImagePersonal(request)
          body = send_request('DeleteImagePersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteImagePersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除镜像仓库企业版实例

        # @param request: Request instance for DeleteInstance.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DeleteInstanceRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DeleteInstanceResponse`
        def DeleteInstance(request)
          body = send_request('DeleteInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除长期访问凭证

        # @param request: Request instance for DeleteInstanceToken.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DeleteInstanceTokenRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DeleteInstanceTokenResponse`
        def DeleteInstanceToken(request)
          body = send_request('DeleteInstanceToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteInstanceTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除命名空间

        # @param request: Request instance for DeleteNamespace.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DeleteNamespaceRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DeleteNamespaceResponse`
        def DeleteNamespace(request)
          body = send_request('DeleteNamespace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNamespaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除共享版命名空间

        # @param request: Request instance for DeleteNamespacePersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DeleteNamespacePersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DeleteNamespacePersonalResponse`
        def DeleteNamespacePersonal(request)
          body = send_request('DeleteNamespacePersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteNamespacePersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除镜像仓库

        # @param request: Request instance for DeleteRepository.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DeleteRepositoryRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DeleteRepositoryResponse`
        def DeleteRepository(request)
          body = send_request('DeleteRepository', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRepositoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于个人版镜像仓库中删除

        # @param request: Request instance for DeleteRepositoryPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DeleteRepositoryPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DeleteRepositoryPersonalResponse`
        def DeleteRepositoryPersonal(request)
          body = send_request('DeleteRepositoryPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteRepositoryPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 删除触发器

        # @param request: Request instance for DeleteWebhookTrigger.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DeleteWebhookTriggerRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DeleteWebhookTriggerResponse`
        def DeleteWebhookTrigger(request)
          body = send_request('DeleteWebhookTrigger', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DeleteWebhookTriggerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询应用更新触发器触发日志

        # @param request: Request instance for DescribeApplicationTriggerLogPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeApplicationTriggerLogPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeApplicationTriggerLogPersonalResponse`
        def DescribeApplicationTriggerLogPersonal(request)
          body = send_request('DescribeApplicationTriggerLogPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationTriggerLogPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询应用更新触发器

        # @param request: Request instance for DescribeApplicationTriggerPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeApplicationTriggerPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeApplicationTriggerPersonalResponse`
        def DescribeApplicationTriggerPersonal(request)
          body = send_request('DescribeApplicationTriggerPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeApplicationTriggerPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询个人收藏仓库

        # @param request: Request instance for DescribeFavorRepositoryPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeFavorRepositoryPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeFavorRepositoryPersonalResponse`
        def DescribeFavorRepositoryPersonal(request)
          body = send_request('DescribeFavorRepositoryPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeFavorRepositoryPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于在个人版中查询与指定tag镜像内容相同的tag列表

        # @param request: Request instance for DescribeImageFilterPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeImageFilterPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeImageFilterPersonalResponse`
        def DescribeImageFilterPersonal(request)
          body = send_request('DescribeImageFilterPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageFilterPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取个人版全局镜像版本自动清理策略

        # @param request: Request instance for DescribeImageLifecycleGlobalPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeImageLifecycleGlobalPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeImageLifecycleGlobalPersonalResponse`
        def DescribeImageLifecycleGlobalPersonal(request)
          body = send_request('DescribeImageLifecycleGlobalPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageLifecycleGlobalPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取个人版仓库中自动清理策略

        # @param request: Request instance for DescribeImageLifecyclePersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeImageLifecyclePersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeImageLifecyclePersonalResponse`
        def DescribeImageLifecyclePersonal(request)
          body = send_request('DescribeImageLifecyclePersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageLifecyclePersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询容器镜像Manifest信息

        # @param request: Request instance for DescribeImageManifests.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeImageManifestsRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeImageManifestsResponse`
        def DescribeImageManifests(request)
          body = send_request('DescribeImageManifests', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImageManifestsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于获取个人版镜像仓库tag列表

        # @param request: Request instance for DescribeImagePersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeImagePersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeImagePersonalResponse`
        def DescribeImagePersonal(request)
          body = send_request('DescribeImagePersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImagePersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像版本列表或指定容器镜像信息

        # @param request: Request instance for DescribeImages.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeImagesRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeImagesResponse`
        def DescribeImages(request)
          body = send_request('DescribeImages', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeImagesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例当前状态以及过程信息

        # @param request: Request instance for DescribeInstanceStatus.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeInstanceStatusRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeInstanceStatusResponse`
        def DescribeInstanceStatus(request)
          body = send_request('DescribeInstanceStatus', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceStatusResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询长期访问凭证信息

        # @param request: Request instance for DescribeInstanceToken.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeInstanceTokenRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeInstanceTokenResponse`
        def DescribeInstanceToken(request)
          body = send_request('DescribeInstanceToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstanceTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例信息

        # @param request: Request instance for DescribeInstances.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeInstancesRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeInstancesResponse`
        def DescribeInstances(request)
          body = send_request('DescribeInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询实例内网访问VPC链接

        # @param request: Request instance for DescribeInternalEndpoints.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeInternalEndpointsRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeInternalEndpointsResponse`
        def DescribeInternalEndpoints(request)
          body = send_request('DescribeInternalEndpoints', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeInternalEndpointsResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询个人版命名空间信息

        # @param request: Request instance for DescribeNamespacePersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeNamespacePersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeNamespacePersonalResponse`
        def DescribeNamespacePersonal(request)
          body = send_request('DescribeNamespacePersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNamespacePersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询命名空间列表或指定命名空间信息

        # @param request: Request instance for DescribeNamespaces.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeNamespacesRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeNamespacesResponse`
        def DescribeNamespaces(request)
          body = send_request('DescribeNamespaces', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeNamespacesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询创建从实例任务状态

        # @param request: Request instance for DescribeReplicationInstanceCreateTasks.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeReplicationInstanceCreateTasksRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeReplicationInstanceCreateTasksResponse`
        def DescribeReplicationInstanceCreateTasks(request)
          body = send_request('DescribeReplicationInstanceCreateTasks', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReplicationInstanceCreateTasksResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询从实例列表

        # @param request: Request instance for DescribeReplicationInstances.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeReplicationInstancesRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeReplicationInstancesResponse`
        def DescribeReplicationInstances(request)
          body = send_request('DescribeReplicationInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeReplicationInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询镜像仓库列表或指定镜像仓库信息

        # @param request: Request instance for DescribeRepositories.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeRepositoriesRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeRepositoriesResponse`
        def DescribeRepositories(request)
          body = send_request('DescribeRepositories', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRepositoriesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于在个人版镜像仓库中，获取满足输入搜索条件的用户镜像仓库

        # @param request: Request instance for DescribeRepositoryFilterPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeRepositoryFilterPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeRepositoryFilterPersonalResponse`
        def DescribeRepositoryFilterPersonal(request)
          body = send_request('DescribeRepositoryFilterPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRepositoryFilterPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于在个人版中获取用户全部的镜像仓库列表

        # @param request: Request instance for DescribeRepositoryOwnerPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeRepositoryOwnerPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeRepositoryOwnerPersonalResponse`
        def DescribeRepositoryOwnerPersonal(request)
          body = send_request('DescribeRepositoryOwnerPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRepositoryOwnerPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询个人版仓库信息

        # @param request: Request instance for DescribeRepositoryPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeRepositoryPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeRepositoryPersonalResponse`
        def DescribeRepositoryPersonal(request)
          body = send_request('DescribeRepositoryPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeRepositoryPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询个人用户配额

        # @param request: Request instance for DescribeUserQuotaPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeUserQuotaPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeUserQuotaPersonalResponse`
        def DescribeUserQuotaPersonal(request)
          body = send_request('DescribeUserQuotaPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeUserQuotaPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询触发器

        # @param request: Request instance for DescribeWebhookTrigger.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeWebhookTriggerRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeWebhookTriggerResponse`
        def DescribeWebhookTrigger(request)
          body = send_request('DescribeWebhookTrigger', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebhookTriggerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 获取触发器日志

        # @param request: Request instance for DescribeWebhookTriggerLog.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DescribeWebhookTriggerLogRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DescribeWebhookTriggerLogResponse`
        def DescribeWebhookTriggerLog(request)
          body = send_request('DescribeWebhookTriggerLog', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeWebhookTriggerLogResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于在个人版镜像仓库中复制镜像版本

        # @param request: Request instance for DuplicateImagePersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::DuplicateImagePersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::DuplicateImagePersonalResponse`
        def DuplicateImagePersonal(request)
          body = send_request('DuplicateImagePersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DuplicateImagePersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于设置个人版全局镜像版本自动清理策略

        # @param request: Request instance for ManageImageLifecycleGlobalPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::ManageImageLifecycleGlobalPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::ManageImageLifecycleGlobalPersonalResponse`
        def ManageImageLifecycleGlobalPersonal(request)
          body = send_request('ManageImageLifecycleGlobalPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ManageImageLifecycleGlobalPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 管理实例内网访问VPC链接

        # @param request: Request instance for ManageInternalEndpoint.
        # @type request: :class:`Tencentcloud::tcr::V20190924::ManageInternalEndpointRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::ManageInternalEndpointResponse`
        def ManageInternalEndpoint(request)
          body = send_request('ManageInternalEndpoint', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ManageInternalEndpointResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于修改应用更新触发器

        # @param request: Request instance for ModifyApplicationTriggerPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::ModifyApplicationTriggerPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::ModifyApplicationTriggerPersonalResponse`
        def ModifyApplicationTriggerPersonal(request)
          body = send_request('ModifyApplicationTriggerPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyApplicationTriggerPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新实例内指定长期访问凭证的启用状态

        # @param request: Request instance for ModifyInstanceToken.
        # @type request: :class:`Tencentcloud::tcr::V20190924::ModifyInstanceTokenRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::ModifyInstanceTokenResponse`
        def ModifyInstanceToken(request)
          body = send_request('ModifyInstanceToken', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyInstanceTokenResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新命名空间信息，当前仅支持修改命名空间访问级别

        # @param request: Request instance for ModifyNamespace.
        # @type request: :class:`Tencentcloud::tcr::V20190924::ModifyNamespaceRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::ModifyNamespaceResponse`
        def ModifyNamespace(request)
          body = send_request('ModifyNamespace', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyNamespaceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新镜像仓库信息，可修改仓库描述信息

        # @param request: Request instance for ModifyRepository.
        # @type request: :class:`Tencentcloud::tcr::V20190924::ModifyRepositoryRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::ModifyRepositoryResponse`
        def ModifyRepository(request)
          body = send_request('ModifyRepository', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRepositoryResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于更新个人版镜像仓库的访问属性

        # @param request: Request instance for ModifyRepositoryAccessPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::ModifyRepositoryAccessPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::ModifyRepositoryAccessPersonalResponse`
        def ModifyRepositoryAccessPersonal(request)
          body = send_request('ModifyRepositoryAccessPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRepositoryAccessPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于在个人版镜像仓库中更新容器镜像描述

        # @param request: Request instance for ModifyRepositoryInfoPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::ModifyRepositoryInfoPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::ModifyRepositoryInfoPersonalResponse`
        def ModifyRepositoryInfoPersonal(request)
          body = send_request('ModifyRepositoryInfoPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyRepositoryInfoPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 修改个人用户登录密码

        # @param request: Request instance for ModifyUserPasswordPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::ModifyUserPasswordPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::ModifyUserPasswordPersonalResponse`
        def ModifyUserPasswordPersonal(request)
          body = send_request('ModifyUserPasswordPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyUserPasswordPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 更新触发器

        # @param request: Request instance for ModifyWebhookTrigger.
        # @type request: :class:`Tencentcloud::tcr::V20190924::ModifyWebhookTriggerRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::ModifyWebhookTriggerResponse`
        def ModifyWebhookTrigger(request)
          body = send_request('ModifyWebhookTrigger', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ModifyWebhookTriggerResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 预付费实例续费，同时支持按量计费转包年包月

        # @param request: Request instance for RenewInstance.
        # @type request: :class:`Tencentcloud::tcr::V20190924::RenewInstanceRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::RenewInstanceResponse`
        def RenewInstance(request)
          body = send_request('RenewInstance', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = RenewInstanceResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询个人版用户命名空间是否存在

        # @param request: Request instance for ValidateNamespaceExistPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::ValidateNamespaceExistPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::ValidateNamespaceExistPersonalResponse`
        def ValidateNamespaceExistPersonal(request)
          body = send_request('ValidateNamespaceExistPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ValidateNamespaceExistPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于判断个人版仓库是否存在

        # @param request: Request instance for ValidateRepositoryExistPersonal.
        # @type request: :class:`Tencentcloud::tcr::V20190924::ValidateRepositoryExistPersonalRequest`
        # @rtype: :class:`Tencentcloud::tcr::V20190924::ValidateRepositoryExistPersonalResponse`
        def ValidateRepositoryExistPersonal(request)
          body = send_request('ValidateRepositoryExistPersonal', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ValidateRepositoryExistPersonalResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end


      end
    end
  end
end