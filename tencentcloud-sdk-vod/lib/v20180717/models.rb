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
  module Vod
    module V20180717
      # AI 智能分析模板详情
      class AIAnalysisTemplateItem < TencentCloud::Common::AbstractModel
        # @param Definition: 智能分析模板唯一标识。
        # @type Definition: Integer
        # @param Name: 智能分析模板名称。
        # @type Name: String
        # @param Comment: 智能分析模板描述信息。
        # @type Comment: String
        # @param ClassificationConfigure: 智能分类任务控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassificationConfigure: :class:`Tencentcloud::Vod.v20180717.models.ClassificationConfigureInfo`
        # @param TagConfigure: 智能标签任务控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagConfigure: :class:`Tencentcloud::Vod.v20180717.models.TagConfigureInfo`
        # @param CoverConfigure: 智能封面任务控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoverConfigure: :class:`Tencentcloud::Vod.v20180717.models.CoverConfigureInfo`
        # @param FrameTagConfigure: 智能按帧标签任务控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameTagConfigure: :class:`Tencentcloud::Vod.v20180717.models.FrameTagConfigureInfo`
        # @param HighlightConfigure: 智能精彩集锦任务控制参数。
        # @type HighlightConfigure: :class:`Tencentcloud::Vod.v20180717.models.HighlightsConfigureInfo`
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String

        attr_accessor :Definition, :Name, :Comment, :ClassificationConfigure, :TagConfigure, :CoverConfigure, :FrameTagConfigure, :HighlightConfigure, :CreateTime, :UpdateTime
        
        def initialize(definition=nil, name=nil, comment=nil, classificationconfigure=nil, tagconfigure=nil, coverconfigure=nil, frametagconfigure=nil, highlightconfigure=nil, createtime=nil, updatetime=nil)
          @Definition = definition
          @Name = name
          @Comment = comment
          @ClassificationConfigure = classificationconfigure
          @TagConfigure = tagconfigure
          @CoverConfigure = coverconfigure
          @FrameTagConfigure = frametagconfigure
          @HighlightConfigure = highlightconfigure
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['ClassificationConfigure'].nil?
            @ClassificationConfigure = ClassificationConfigureInfo.new.deserialize(params[ClassificationConfigure])
          end
          unless params['TagConfigure'].nil?
            @TagConfigure = TagConfigureInfo.new.deserialize(params[TagConfigure])
          end
          unless params['CoverConfigure'].nil?
            @CoverConfigure = CoverConfigureInfo.new.deserialize(params[CoverConfigure])
          end
          unless params['FrameTagConfigure'].nil?
            @FrameTagConfigure = FrameTagConfigureInfo.new.deserialize(params[FrameTagConfigure])
          end
          unless params['HighlightConfigure'].nil?
            @HighlightConfigure = HighlightsConfigureInfo.new.deserialize(params[HighlightConfigure])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 视频内容识别模板详情
      class AIRecognitionTemplateItem < TencentCloud::Common::AbstractModel
        # @param Definition: 视频内容识别模板唯一标识。
        # @type Definition: Integer
        # @param Name: 视频内容识别模板名称。
        # @type Name: String
        # @param Comment: 视频内容识别模板描述信息。
        # @type Comment: String
        # @param HeadTailConfigure: 头尾识别控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeadTailConfigure: :class:`Tencentcloud::Vod.v20180717.models.HeadTailConfigureInfo`
        # @param SegmentConfigure: 拆条识别控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentConfigure: :class:`Tencentcloud::Vod.v20180717.models.SegmentConfigureInfo`
        # @param FaceConfigure: 人脸识别控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaceConfigure: :class:`Tencentcloud::Vod.v20180717.models.FaceConfigureInfo`
        # @param OcrFullTextConfigure: 文本全文识别控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrFullTextConfigure: :class:`Tencentcloud::Vod.v20180717.models.OcrFullTextConfigureInfo`
        # @param OcrWordsConfigure: 文本关键词识别控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrWordsConfigure: :class:`Tencentcloud::Vod.v20180717.models.OcrWordsConfigureInfo`
        # @param AsrFullTextConfigure: 语音全文识别控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrFullTextConfigure: :class:`Tencentcloud::Vod.v20180717.models.AsrFullTextConfigureInfo`
        # @param AsrWordsConfigure: 语音关键词识别控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrWordsConfigure: :class:`Tencentcloud::Vod.v20180717.models.AsrWordsConfigureInfo`
        # @param ObjectConfigure: 物体识别控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectConfigure: :class:`Tencentcloud::Vod.v20180717.models.ObjectConfigureInfo`
        # @param ScreenshotInterval: 截图时间间隔，单位：秒。
        # @type ScreenshotInterval: Float
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String

        attr_accessor :Definition, :Name, :Comment, :HeadTailConfigure, :SegmentConfigure, :FaceConfigure, :OcrFullTextConfigure, :OcrWordsConfigure, :AsrFullTextConfigure, :AsrWordsConfigure, :ObjectConfigure, :ScreenshotInterval, :CreateTime, :UpdateTime
        
        def initialize(definition=nil, name=nil, comment=nil, headtailconfigure=nil, segmentconfigure=nil, faceconfigure=nil, ocrfulltextconfigure=nil, ocrwordsconfigure=nil, asrfulltextconfigure=nil, asrwordsconfigure=nil, objectconfigure=nil, screenshotinterval=nil, createtime=nil, updatetime=nil)
          @Definition = definition
          @Name = name
          @Comment = comment
          @HeadTailConfigure = headtailconfigure
          @SegmentConfigure = segmentconfigure
          @FaceConfigure = faceconfigure
          @OcrFullTextConfigure = ocrfulltextconfigure
          @OcrWordsConfigure = ocrwordsconfigure
          @AsrFullTextConfigure = asrfulltextconfigure
          @AsrWordsConfigure = asrwordsconfigure
          @ObjectConfigure = objectconfigure
          @ScreenshotInterval = screenshotinterval
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['HeadTailConfigure'].nil?
            @HeadTailConfigure = HeadTailConfigureInfo.new.deserialize(params[HeadTailConfigure])
          end
          unless params['SegmentConfigure'].nil?
            @SegmentConfigure = SegmentConfigureInfo.new.deserialize(params[SegmentConfigure])
          end
          unless params['FaceConfigure'].nil?
            @FaceConfigure = FaceConfigureInfo.new.deserialize(params[FaceConfigure])
          end
          unless params['OcrFullTextConfigure'].nil?
            @OcrFullTextConfigure = OcrFullTextConfigureInfo.new.deserialize(params[OcrFullTextConfigure])
          end
          unless params['OcrWordsConfigure'].nil?
            @OcrWordsConfigure = OcrWordsConfigureInfo.new.deserialize(params[OcrWordsConfigure])
          end
          unless params['AsrFullTextConfigure'].nil?
            @AsrFullTextConfigure = AsrFullTextConfigureInfo.new.deserialize(params[AsrFullTextConfigure])
          end
          unless params['AsrWordsConfigure'].nil?
            @AsrWordsConfigure = AsrWordsConfigureInfo.new.deserialize(params[AsrWordsConfigure])
          end
          unless params['ObjectConfigure'].nil?
            @ObjectConfigure = ObjectConfigureInfo.new.deserialize(params[ObjectConfigure])
          end
          @ScreenshotInterval = params['ScreenshotInterval']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 转自适应码流信息
      class AdaptiveDynamicStreamingInfoItem < TencentCloud::Common::AbstractModel
        # @param Definition: 转自适应码流规格。
        # @type Definition: Integer
        # @param Package: 打包格式，只能为 HLS。
        # @type Package: String
        # @param DrmType: 加密类型。
        # @type DrmType: String
        # @param Url: 播放地址。
        # @type Url: String

        attr_accessor :Definition, :Package, :DrmType, :Url
        
        def initialize(definition=nil, package=nil, drmtype=nil, url=nil)
          @Definition = definition
          @Package = package
          @DrmType = drmtype
          @Url = url
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Package = params['Package']
          @DrmType = params['DrmType']
          @Url = params['Url']
        end
      end

      # 对视频转自适应码流的输入参数类型
      class AdaptiveDynamicStreamingTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 转自适应码流模板 ID。
        # @type Definition: Integer
        # @param WatermarkSet: 水印列表，支持多张图片或文字水印，最大可支持 10 张。
        # @type WatermarkSet: Array

        attr_accessor :Definition, :WatermarkSet
        
        def initialize(definition=nil, watermarkset=nil)
          @Definition = definition
          @WatermarkSet = watermarkset
        end

        def deserialize(params)
          @Definition = params['Definition']
          @WatermarkSet = params['WatermarkSet']
        end
      end

      # 转自适应码流模板详情
      class AdaptiveDynamicStreamingTemplate < TencentCloud::Common::AbstractModel
        # @param Definition: 转自适应码流模板唯一标识。
        # @type Definition: Integer
        # @param Type: 模板类型，取值范围：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param Name: 转自适应码流模板名称。
        # @type Name: String
        # @param Comment: 转自适应码流模板描述信息。
        # @type Comment: String
        # @param Format: 自适应转码格式，取值范围：
        # <li>HLS。</li>
        # @type Format: String
        # @param DrmType: DRM 类型，取值范围：
        # <li>FairPlay；</li>
        # <li>SimpleAES；</li>
        # <li>Widevine。</li>
        # 如果取值为空字符串，代表不对视频做 DRM 保护。
        # @type DrmType: String
        # @param StreamInfos: 自适应转码输入流参数信息，最多输入10路流。
        # @type StreamInfos: Array
        # @param DisableHigherVideoBitrate: 是否禁止视频低码率转高码率，取值范围：
        # <li>0：否，</li>
        # <li>1：是。</li>
        # @type DisableHigherVideoBitrate: Integer
        # @param DisableHigherVideoResolution: 是否禁止视频分辨率转高分辨率，取值范围：
        # <li>0：否，</li>
        # <li>1：是。</li>
        # @type DisableHigherVideoResolution: Integer
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String

        attr_accessor :Definition, :Type, :Name, :Comment, :Format, :DrmType, :StreamInfos, :DisableHigherVideoBitrate, :DisableHigherVideoResolution, :CreateTime, :UpdateTime
        
        def initialize(definition=nil, type=nil, name=nil, comment=nil, format=nil, drmtype=nil, streaminfos=nil, disablehighervideobitrate=nil, disablehighervideoresolution=nil, createtime=nil, updatetime=nil)
          @Definition = definition
          @Type = type
          @Name = name
          @Comment = comment
          @Format = format
          @DrmType = drmtype
          @StreamInfos = streaminfos
          @DisableHigherVideoBitrate = disablehighervideobitrate
          @DisableHigherVideoResolution = disablehighervideoresolution
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Type = params['Type']
          @Name = params['Name']
          @Comment = params['Comment']
          @Format = params['Format']
          @DrmType = params['DrmType']
          @StreamInfos = params['StreamInfos']
          @DisableHigherVideoBitrate = params['DisableHigherVideoBitrate']
          @DisableHigherVideoResolution = params['DisableHigherVideoResolution']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 自适应转码流参数模板
      class AdaptiveStreamTemplate < TencentCloud::Common::AbstractModel
        # @param Video: 视频参数信息。
        # @type Video: :class:`Tencentcloud::Vod.v20180717.models.VideoTemplateInfo`
        # @param Audio: 音频参数信息。
        # @type Audio: :class:`Tencentcloud::Vod.v20180717.models.AudioTemplateInfo`
        # @param RemoveAudio: 是否移除音频流，取值范围：
        # <li>0：否，</li>
        # <li>1：是。</li>
        # @type RemoveAudio: Integer

        attr_accessor :Video, :Audio, :RemoveAudio
        
        def initialize(video=nil, audio=nil, removeaudio=nil)
          @Video = video
          @Audio = audio
          @RemoveAudio = removeaudio
        end

        def deserialize(params)
          unless params['Video'].nil?
            @Video = VideoTemplateInfo.new.deserialize(params[Video])
          end
          unless params['Audio'].nil?
            @Audio = AudioTemplateInfo.new.deserialize(params[Audio])
          end
          @RemoveAudio = params['RemoveAudio']
        end
      end

      # 智能分析结果
      class AiAnalysisResult < TencentCloud::Common::AbstractModel
        # @param Type: 任务的类型，可以取的值有：
        # <li>Classification：智能分类</li>
        # <li>Cover：智能封面</li>
        # <li>Tag：智能标签</li>
        # <li>FrameTag：智能按帧标签</li>
        # <li>Highlight：智能精彩集锦</li>
        # @type Type: String
        # @param ClassificationTask: 视频内容分析智能分类任务的查询结果，当任务类型为 Classification 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassificationTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskClassificationResult`
        # @param CoverTask: 视频内容分析智能封面任务的查询结果，当任务类型为 Cover 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoverTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskCoverResult`
        # @param TagTask: 视频内容分析智能标签任务的查询结果，当任务类型为 Tag 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskTagResult`
        # @param FrameTagTask: 视频内容分析智能按帧标签任务的查询结果，当任务类型为 FrameTag 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FrameTagTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskFrameTagResult`
        # @param HighlightTask: 视频内容分析智能精彩集锦任务的查询结果，当任务类型为 Highlight 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HighlightTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskHighlightResult`

        attr_accessor :Type, :ClassificationTask, :CoverTask, :TagTask, :FrameTagTask, :HighlightTask
        
        def initialize(type=nil, classificationtask=nil, covertask=nil, tagtask=nil, frametagtask=nil, highlighttask=nil)
          @Type = type
          @ClassificationTask = classificationtask
          @CoverTask = covertask
          @TagTask = tagtask
          @FrameTagTask = frametagtask
          @HighlightTask = highlighttask
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['ClassificationTask'].nil?
            @ClassificationTask = AiAnalysisTaskClassificationResult.new.deserialize(params[ClassificationTask])
          end
          unless params['CoverTask'].nil?
            @CoverTask = AiAnalysisTaskCoverResult.new.deserialize(params[CoverTask])
          end
          unless params['TagTask'].nil?
            @TagTask = AiAnalysisTaskTagResult.new.deserialize(params[TagTask])
          end
          unless params['FrameTagTask'].nil?
            @FrameTagTask = AiAnalysisTaskFrameTagResult.new.deserialize(params[FrameTagTask])
          end
          unless params['HighlightTask'].nil?
            @HighlightTask = AiAnalysisTaskHighlightResult.new.deserialize(params[HighlightTask])
          end
        end
      end

      # 智能分类任务输入类型
      class AiAnalysisTaskClassificationInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频智能分类模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 智能分类结果信息
      class AiAnalysisTaskClassificationOutput < TencentCloud::Common::AbstractModel
        # @param ClassificationSet: 视频智能分类列表。
        # @type ClassificationSet: Array

        attr_accessor :ClassificationSet
        
        def initialize(classificationset=nil)
          @ClassificationSet = classificationset
        end

        def deserialize(params)
          @ClassificationSet = params['ClassificationSet']
        end
      end

      # 智能分类任务结果类型
      class AiAnalysisTaskClassificationResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0：成功，其他值：失败。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 智能分类任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskClassificationInput`
        # @param Output: 智能分类任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskClassificationOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiAnalysisTaskClassificationInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiAnalysisTaskClassificationOutput.new.deserialize(params[Output])
          end
        end
      end

      # 智能分类任务输入类型
      class AiAnalysisTaskCoverInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频智能封面模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 智能封面结果信息
      class AiAnalysisTaskCoverOutput < TencentCloud::Common::AbstractModel
        # @param CoverSet: 智能封面列表。
        # @type CoverSet: Array

        attr_accessor :CoverSet
        
        def initialize(coverset=nil)
          @CoverSet = coverset
        end

        def deserialize(params)
          @CoverSet = params['CoverSet']
        end
      end

      # 智能封面结果类型
      class AiAnalysisTaskCoverResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0：成功，其他值：失败。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 智能封面任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskCoverInput`
        # @param Output: 智能封面任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskCoverOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiAnalysisTaskCoverInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiAnalysisTaskCoverOutput.new.deserialize(params[Output])
          end
        end
      end

      # 智能按帧标签任务输入类型
      class AiAnalysisTaskFrameTagInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频智能按帧标签模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 智能按帧标签结果信息
      class AiAnalysisTaskFrameTagOutput < TencentCloud::Common::AbstractModel
        # @param SegmentSet: 视频按帧标签列表。
        # @type SegmentSet: Array

        attr_accessor :SegmentSet
        
        def initialize(segmentset=nil)
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @SegmentSet = params['SegmentSet']
        end
      end

      # 智能按帧标签结果类型
      class AiAnalysisTaskFrameTagResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0：成功，其他值：失败。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 智能按帧标签任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskFrameTagInput`
        # @param Output: 智能按帧标签任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskFrameTagOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiAnalysisTaskFrameTagInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiAnalysisTaskFrameTagOutput.new.deserialize(params[Output])
          end
        end
      end

      # 智能精彩片段任务输入类型
      class AiAnalysisTaskHighlightInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频智能精彩片段模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 智能精彩片段结果信息
      class AiAnalysisTaskHighlightOutput < TencentCloud::Common::AbstractModel
        # @param HighlightSet: 视频智能精彩片段列表。
        # @type HighlightSet: Array

        attr_accessor :HighlightSet
        
        def initialize(highlightset=nil)
          @HighlightSet = highlightset
        end

        def deserialize(params)
          @HighlightSet = params['HighlightSet']
        end
      end

      # 智能精彩片段结果类型
      class AiAnalysisTaskHighlightResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0：成功，其他值：失败。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 智能精彩片段任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskHighlightInput`
        # @param Output: 智能精彩片段任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskHighlightOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiAnalysisTaskHighlightInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiAnalysisTaskHighlightOutput.new.deserialize(params[Output])
          end
        end
      end

      # AI 视频智能分析输入参数类型
      class AiAnalysisTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频内容分析模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 智能标签任务输入类型
      class AiAnalysisTaskTagInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频智能标签模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 智能标签结果信息
      class AiAnalysisTaskTagOutput < TencentCloud::Common::AbstractModel
        # @param TagSet: 视频智能标签列表。
        # @type TagSet: Array

        attr_accessor :TagSet
        
        def initialize(tagset=nil)
          @TagSet = tagset
        end

        def deserialize(params)
          @TagSet = params['TagSet']
        end
      end

      # 智能标签结果类型
      class AiAnalysisTaskTagResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0：成功，其他值：失败。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 智能标签任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskTagInput`
        # @param Output: 智能标签任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskTagOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiAnalysisTaskTagInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiAnalysisTaskTagOutput.new.deserialize(params[Output])
          end
        end
      end

      # 内容审核结果
      class AiContentReviewResult < TencentCloud::Common::AbstractModel
        # @param Type: 任务的类型，可以取的值有：
        # <li>Porn：图片鉴黄</li>
        # <li>Terrorism：图片鉴恐</li>
        # <li>Political：图片鉴政</li>
        # <li>Porn.Asr：Asr 文字鉴黄</li>
        # <li>Porn.Ocr：Ocr 文字鉴黄</li>
        # <li>Political.Asr：Asr 文字鉴政</li>
        # <li>Political.Ocr：Ocr 文字鉴政</li>
        # <li>Terrorism.Ocr：Ocr 文字鉴恐</li>
        # <li>Prohibited.Asr：Asr 文字鉴违禁</li>
        # <li>Prohibited.Ocr：Ocr 文字鉴违禁</li>
        # @type Type: String
        # @param PornTask: 视频内容审核智能画面鉴黄任务的查询结果，当任务类型为 Porn 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PornTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskPornResult`
        # @param TerrorismTask: 视频内容审核智能画面鉴恐任务的查询结果，当任务类型为 Terrorism 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerrorismTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskTerrorismResult`
        # @param PoliticalTask: 视频内容审核智能画面鉴政任务的查询结果，当任务类型为 Political 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PoliticalTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskPoliticalResult`
        # @param PornAsrTask: 视频内容审核 Asr 文字鉴黄任务的查询结果，当任务类型为 Porn.Asr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PornAsrTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskPornAsrResult`
        # @param PornOcrTask: 视频内容审核 Ocr 文字鉴黄任务的查询结果，当任务类型为 Porn.Ocr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PornOcrTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskPornOcrResult`
        # @param PoliticalAsrTask: 视频内容审核 Asr 文字鉴政任务的查询结果，当任务类型为 Political.Asr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PoliticalAsrTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskPoliticalAsrResult`
        # @param PoliticalOcrTask: 视频内容审核 Ocr 文字鉴政任务的查询结果，当任务类型为 Political.Ocr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PoliticalOcrTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskPoliticalOcrResult`
        # @param TerrorismOcrTask: 视频内容审核 Ocr 文字鉴恐任务的查询结果，当任务类型为 Terrorism.Ocr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerrorismOcrTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskTerrorismOcrResult`
        # @param ProhibitedAsrTask: 视频内容审核 Asr 文字鉴违禁任务的查询结果，当任务类型为 Prohibited.Asr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProhibitedAsrTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskProhibitedAsrResult`
        # @param ProhibitedOcrTask: 视频内容审核 Ocr 文字鉴违禁任务的查询结果，当任务类型为 Prohibited.Ocr 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProhibitedOcrTask: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTaskProhibitedOcrResult`

        attr_accessor :Type, :PornTask, :TerrorismTask, :PoliticalTask, :PornAsrTask, :PornOcrTask, :PoliticalAsrTask, :PoliticalOcrTask, :TerrorismOcrTask, :ProhibitedAsrTask, :ProhibitedOcrTask
        
        def initialize(type=nil, porntask=nil, terrorismtask=nil, politicaltask=nil, pornasrtask=nil, pornocrtask=nil, politicalasrtask=nil, politicalocrtask=nil, terrorismocrtask=nil, prohibitedasrtask=nil, prohibitedocrtask=nil)
          @Type = type
          @PornTask = porntask
          @TerrorismTask = terrorismtask
          @PoliticalTask = politicaltask
          @PornAsrTask = pornasrtask
          @PornOcrTask = pornocrtask
          @PoliticalAsrTask = politicalasrtask
          @PoliticalOcrTask = politicalocrtask
          @TerrorismOcrTask = terrorismocrtask
          @ProhibitedAsrTask = prohibitedasrtask
          @ProhibitedOcrTask = prohibitedocrtask
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['PornTask'].nil?
            @PornTask = AiReviewTaskPornResult.new.deserialize(params[PornTask])
          end
          unless params['TerrorismTask'].nil?
            @TerrorismTask = AiReviewTaskTerrorismResult.new.deserialize(params[TerrorismTask])
          end
          unless params['PoliticalTask'].nil?
            @PoliticalTask = AiReviewTaskPoliticalResult.new.deserialize(params[PoliticalTask])
          end
          unless params['PornAsrTask'].nil?
            @PornAsrTask = AiReviewTaskPornAsrResult.new.deserialize(params[PornAsrTask])
          end
          unless params['PornOcrTask'].nil?
            @PornOcrTask = AiReviewTaskPornOcrResult.new.deserialize(params[PornOcrTask])
          end
          unless params['PoliticalAsrTask'].nil?
            @PoliticalAsrTask = AiReviewTaskPoliticalAsrResult.new.deserialize(params[PoliticalAsrTask])
          end
          unless params['PoliticalOcrTask'].nil?
            @PoliticalOcrTask = AiReviewTaskPoliticalOcrResult.new.deserialize(params[PoliticalOcrTask])
          end
          unless params['TerrorismOcrTask'].nil?
            @TerrorismOcrTask = AiReviewTaskTerrorismOcrResult.new.deserialize(params[TerrorismOcrTask])
          end
          unless params['ProhibitedAsrTask'].nil?
            @ProhibitedAsrTask = AiReviewTaskProhibitedAsrResult.new.deserialize(params[ProhibitedAsrTask])
          end
          unless params['ProhibitedOcrTask'].nil?
            @ProhibitedOcrTask = AiReviewTaskProhibitedOcrResult.new.deserialize(params[ProhibitedOcrTask])
          end
        end
      end

      # 智能内容审核任务类型
      class AiContentReviewTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频内容审核模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 智能识别结果。
      class AiRecognitionResult < TencentCloud::Common::AbstractModel
        # @param Type: 任务的类型，取值范围：
        # <li>FaceRecognition：人脸识别，</li>
        # <li>AsrWordsRecognition：语音关键词识别，</li>
        # <li>OcrWordsRecognition：文本关键词识别，</li>
        # <li>AsrFullTextRecognition：语音全文识别，</li>
        # <li>OcrFullTextRecognition：文本全文识别，</li>
        # <li>HeadTailRecognition：视频片头片尾识别，</li>
        # <li>ObjectRecognition：物体识别。</li>
        # @type Type: String
        # @param HeadTailTask: 视频片头片尾识别结果，当 Type 为
        #  HeadTailRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HeadTailTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskHeadTailResult`
        # @param SegmentTask: 视频拆条识别结果，当 Type 为
        #  SegmentRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SegmentTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskSegmentResult`
        # @param FaceTask: 人脸识别结果，当 Type 为
        #  FaceRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaceTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskFaceResult`
        # @param AsrWordsTask: 语音关键词识别结果，当 Type 为
        #  AsrWordsRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrWordsTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskAsrWordsResult`
        # @param AsrFullTextTask: 语音全文识别结果，当 Type 为
        #  AsrFullTextRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrFullTextTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskAsrFullTextResult`
        # @param OcrWordsTask: 文本关键词识别结果，当 Type 为
        #  OcrWordsRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrWordsTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskOcrWordsResult`
        # @param OcrFullTextTask: 文本全文识别结果，当 Type 为
        #  OcrFullTextRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrFullTextTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskOcrFullTextResult`
        # @param ObjectTask: 物体识别结果，当 Type 为
        #  ObjectRecognition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskObjectResult`

        attr_accessor :Type, :HeadTailTask, :SegmentTask, :FaceTask, :AsrWordsTask, :AsrFullTextTask, :OcrWordsTask, :OcrFullTextTask, :ObjectTask
        
        def initialize(type=nil, headtailtask=nil, segmenttask=nil, facetask=nil, asrwordstask=nil, asrfulltexttask=nil, ocrwordstask=nil, ocrfulltexttask=nil, objecttask=nil)
          @Type = type
          @HeadTailTask = headtailtask
          @SegmentTask = segmenttask
          @FaceTask = facetask
          @AsrWordsTask = asrwordstask
          @AsrFullTextTask = asrfulltexttask
          @OcrWordsTask = ocrwordstask
          @OcrFullTextTask = ocrfulltexttask
          @ObjectTask = objecttask
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['HeadTailTask'].nil?
            @HeadTailTask = AiRecognitionTaskHeadTailResult.new.deserialize(params[HeadTailTask])
          end
          unless params['SegmentTask'].nil?
            @SegmentTask = AiRecognitionTaskSegmentResult.new.deserialize(params[SegmentTask])
          end
          unless params['FaceTask'].nil?
            @FaceTask = AiRecognitionTaskFaceResult.new.deserialize(params[FaceTask])
          end
          unless params['AsrWordsTask'].nil?
            @AsrWordsTask = AiRecognitionTaskAsrWordsResult.new.deserialize(params[AsrWordsTask])
          end
          unless params['AsrFullTextTask'].nil?
            @AsrFullTextTask = AiRecognitionTaskAsrFullTextResult.new.deserialize(params[AsrFullTextTask])
          end
          unless params['OcrWordsTask'].nil?
            @OcrWordsTask = AiRecognitionTaskOcrWordsResult.new.deserialize(params[OcrWordsTask])
          end
          unless params['OcrFullTextTask'].nil?
            @OcrFullTextTask = AiRecognitionTaskOcrFullTextResult.new.deserialize(params[OcrFullTextTask])
          end
          unless params['ObjectTask'].nil?
            @ObjectTask = AiRecognitionTaskObjectResult.new.deserialize(params[ObjectTask])
          end
        end
      end

      # 语音全文识别结果。
      class AiRecognitionTaskAsrFullTextResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0：成功，其他值：失败。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 语音全文识别任务输入信息。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskAsrFullTextResultInput`
        # @param Output: 语音全文识别任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskAsrFullTextResultOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiRecognitionTaskAsrFullTextResultInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiRecognitionTaskAsrFullTextResultOutput.new.deserialize(params[Output])
          end
        end
      end

      # 语音全文识别的输入。
      class AiRecognitionTaskAsrFullTextResultInput < TencentCloud::Common::AbstractModel
        # @param Definition: 语音全文识别模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 语音全文识别结果。
      class AiRecognitionTaskAsrFullTextResultOutput < TencentCloud::Common::AbstractModel
        # @param SegmentSet: 语音全文识别片段列表。
        # @type SegmentSet: Array
        # @param SubtitleUrl: 字幕文件 Url。
        # @type SubtitleUrl: String

        attr_accessor :SegmentSet, :SubtitleUrl
        
        def initialize(segmentset=nil, subtitleurl=nil)
          @SegmentSet = segmentset
          @SubtitleUrl = subtitleurl
        end

        def deserialize(params)
          @SegmentSet = params['SegmentSet']
          @SubtitleUrl = params['SubtitleUrl']
        end
      end

      # 语音全文识别片段。
      class AiRecognitionTaskAsrFullTextSegmentItem < TencentCloud::Common::AbstractModel
        # @param Confidence: 识别片段置信度。取值：0~100。
        # @type Confidence: Float
        # @param StartTimeOffset: 识别片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 识别片段终止的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Text: 识别文本。
        # @type Text: String

        attr_accessor :Confidence, :StartTimeOffset, :EndTimeOffset, :Text
        
        def initialize(confidence=nil, starttimeoffset=nil, endtimeoffset=nil, text=nil)
          @Confidence = confidence
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Text = text
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Text = params['Text']
        end
      end

      # 语音关键词识别结果。
      class AiRecognitionTaskAsrWordsResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0：成功，其他值：失败。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 语音关键词识别任务输入信息。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskAsrWordsResultInput`
        # @param Output: 语音关键词识别任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskAsrWordsResultOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiRecognitionTaskAsrWordsResultInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiRecognitionTaskAsrWordsResultOutput.new.deserialize(params[Output])
          end
        end
      end

      # 语音关键词识别输入。
      class AiRecognitionTaskAsrWordsResultInput < TencentCloud::Common::AbstractModel
        # @param Definition: 语音关键词识别模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 语音关键词识别结果。
      class AiRecognitionTaskAsrWordsResultItem < TencentCloud::Common::AbstractModel
        # @param Word: 语音关键词。
        # @type Word: String
        # @param SegmentSet: 语音关键词出现的时间片段列表。
        # @type SegmentSet: Array

        attr_accessor :Word, :SegmentSet
        
        def initialize(word=nil, segmentset=nil)
          @Word = word
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Word = params['Word']
          @SegmentSet = params['SegmentSet']
        end
      end

      # 语音关键词识别输出。
      class AiRecognitionTaskAsrWordsResultOutput < TencentCloud::Common::AbstractModel
        # @param ResultSet: 语音关键词识别结果集。
        # @type ResultSet: Array

        attr_accessor :ResultSet
        
        def initialize(resultset=nil)
          @ResultSet = resultset
        end

        def deserialize(params)
          @ResultSet = params['ResultSet']
        end
      end

      # 语音识别片段。
      class AiRecognitionTaskAsrWordsSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 识别片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 识别片段终止的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 识别片段置信度。取值：0~100。
        # @type Confidence: Float

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
        end
      end

      # 人脸识别结果。
      class AiRecognitionTaskFaceResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0：成功，其他值：失败。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 人脸识别任务输入信息。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskFaceResultInput`
        # @param Output: 人脸识别任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskFaceResultOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiRecognitionTaskFaceResultInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiRecognitionTaskFaceResultOutput.new.deserialize(params[Output])
          end
        end
      end

      # 人脸识别输入。
      class AiRecognitionTaskFaceResultInput < TencentCloud::Common::AbstractModel
        # @param Definition: 人脸识别模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 人脸识别结果
      class AiRecognitionTaskFaceResultItem < TencentCloud::Common::AbstractModel
        # @param Id: 人物唯一标识 ID。
        # @type Id: String
        # @param Type: 人物库类型，表示识别出的人物来自哪个人物库：
        # <li>Default：默认人物库；</li>
        # <li>UserDefine：用户自定义人物库。</li>
        # @type Type: String
        # @param Name: 人物名称。
        # @type Name: String
        # @param SegmentSet: 人物出现的片段结果集。
        # @type SegmentSet: Array

        attr_accessor :Id, :Type, :Name, :SegmentSet
        
        def initialize(id=nil, type=nil, name=nil, segmentset=nil)
          @Id = id
          @Type = type
          @Name = name
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Id = params['Id']
          @Type = params['Type']
          @Name = params['Name']
          @SegmentSet = params['SegmentSet']
        end
      end

      # 智能人脸识别输出。
      class AiRecognitionTaskFaceResultOutput < TencentCloud::Common::AbstractModel
        # @param ResultSet: 智能人脸识别结果集。
        # @type ResultSet: Array

        attr_accessor :ResultSet
        
        def initialize(resultset=nil)
          @ResultSet = resultset
        end

        def deserialize(params)
          @ResultSet = params['ResultSet']
        end
      end

      # 人脸识别结果片段
      class AiRecognitionTaskFaceSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 识别片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 识别片段终止的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 识别片段置信度。取值：0~100。
        # @type Confidence: Float
        # @param AreaCoordSet: 识别结果的区域坐标。数组包含 4 个元素 [x1,y1,x2,y2]，依次表示区域左上点、右下点的横纵坐标。
        # @type AreaCoordSet: Array

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence, :AreaCoordSet
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil, areacoordset=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
          @AreaCoordSet = areacoordset
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
          @AreaCoordSet = params['AreaCoordSet']
        end
      end

      # 视频片头片尾识别结果。
      class AiRecognitionTaskHeadTailResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0：成功，其他值：失败。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 视频片头片尾识别任务输入信息。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskHeadTailResultInput`
        # @param Output: 视频片头片尾识别任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskHeadTailResultOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiRecognitionTaskHeadTailResultInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiRecognitionTaskHeadTailResultOutput.new.deserialize(params[Output])
          end
        end
      end

      # 视频片头片尾识别的输入。
      class AiRecognitionTaskHeadTailResultInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频片头片尾识别模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 视频片头片尾识别输出。
      class AiRecognitionTaskHeadTailResultOutput < TencentCloud::Common::AbstractModel
        # @param HeadConfidence: 片头识别置信度。取值：0~100。
        # @type HeadConfidence: Float
        # @param HeadTimeOffset: 视频片头的结束时间点，单位：秒。
        # @type HeadTimeOffset: Float
        # @param TailConfidence: 片尾识别置信度。取值：0~100。
        # @type TailConfidence: Float
        # @param TailTimeOffset: 视频片尾的开始时间点，单位：秒。
        # @type TailTimeOffset: Float

        attr_accessor :HeadConfidence, :HeadTimeOffset, :TailConfidence, :TailTimeOffset
        
        def initialize(headconfidence=nil, headtimeoffset=nil, tailconfidence=nil, tailtimeoffset=nil)
          @HeadConfidence = headconfidence
          @HeadTimeOffset = headtimeoffset
          @TailConfidence = tailconfidence
          @TailTimeOffset = tailtimeoffset
        end

        def deserialize(params)
          @HeadConfidence = params['HeadConfidence']
          @HeadTimeOffset = params['HeadTimeOffset']
          @TailConfidence = params['TailConfidence']
          @TailTimeOffset = params['TailTimeOffset']
        end
      end

      # 视频内容识别输入参数类型
      class AiRecognitionTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频智能识别模板 ID 。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 物体识别结果。
      class AiRecognitionTaskObjectResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0：成功，其他值：失败。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 物体识别任务输入信息。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskObjectResultInput`
        # @param Output: 物体识别任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskObjectResultOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiRecognitionTaskObjectResultInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiRecognitionTaskObjectResultOutput.new.deserialize(params[Output])
          end
        end
      end

      # 物体识别任务输入类型。
      class AiRecognitionTaskObjectResultInput < TencentCloud::Common::AbstractModel
        # @param Definition: 物体识别模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 单个物体识别结果。
      class AiRecognitionTaskObjectResultItem < TencentCloud::Common::AbstractModel
        # @param Name: 识别的物体名称。
        # @type Name: String
        # @param SegmentSet: 物体出现的片段列表。
        # @type SegmentSet: Array

        attr_accessor :Name, :SegmentSet
        
        def initialize(name=nil, segmentset=nil)
          @Name = name
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Name = params['Name']
          @SegmentSet = params['SegmentSet']
        end
      end

      # 智能物体识别输出。
      class AiRecognitionTaskObjectResultOutput < TencentCloud::Common::AbstractModel
        # @param ResultSet: 智能物体识别结果集。
        # @type ResultSet: Array

        attr_accessor :ResultSet
        
        def initialize(resultset=nil)
          @ResultSet = resultset
        end

        def deserialize(params)
          @ResultSet = params['ResultSet']
        end
      end

      # 物体识别结果片段。
      class AiRecognitionTaskObjectSeqmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 识别片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 识别片段终止的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 识别片段置信度。取值：0~100。
        # @type Confidence: Float
        # @param AreaCoordSet: 识别结果的区域坐标。数组包含 4 个元素 [x1,y1,x2,y2]，依次表示区域左上点、右下点的横纵坐标。
        # @type AreaCoordSet: Array

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence, :AreaCoordSet
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil, areacoordset=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
          @AreaCoordSet = areacoordset
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
          @AreaCoordSet = params['AreaCoordSet']
        end
      end

      # 文本全文识别结果。
      class AiRecognitionTaskOcrFullTextResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0：成功，其他值：失败。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 文本全文识别任务输入信息。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskOcrFullTextResultInput`
        # @param Output: 文本全文识别任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskOcrFullTextResultOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiRecognitionTaskOcrFullTextResultInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiRecognitionTaskOcrFullTextResultOutput.new.deserialize(params[Output])
          end
        end
      end

      # 文本全文识别输入。
      class AiRecognitionTaskOcrFullTextResultInput < TencentCloud::Common::AbstractModel
        # @param Definition: 文本全文识别模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 文本全文识别输出。
      class AiRecognitionTaskOcrFullTextResultOutput < TencentCloud::Common::AbstractModel
        # @param SegmentSet: 文本全文识别结果集。
        # @type SegmentSet: Array

        attr_accessor :SegmentSet
        
        def initialize(segmentset=nil)
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @SegmentSet = params['SegmentSet']
        end
      end

      # 文本全文识别片段。
      class AiRecognitionTaskOcrFullTextSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 识别片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 识别片段终止的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param TextSet: 识别片段结果集。
        # @type TextSet: Array

        attr_accessor :StartTimeOffset, :EndTimeOffset, :TextSet
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, textset=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @TextSet = textset
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @TextSet = params['TextSet']
        end
      end

      # 文本全文识别片段。
      class AiRecognitionTaskOcrFullTextSegmentTextItem < TencentCloud::Common::AbstractModel
        # @param Confidence: 识别片段置信度。取值：0~100。
        # @type Confidence: Float
        # @param AreaCoordSet: 识别结果的区域坐标。数组包含 4 个元素 [x1,y1,x2,y2]，依次表示区域左上点、右下点的横纵坐标。
        # @type AreaCoordSet: Array
        # @param Text: 识别文本。
        # @type Text: String

        attr_accessor :Confidence, :AreaCoordSet, :Text
        
        def initialize(confidence=nil, areacoordset=nil, text=nil)
          @Confidence = confidence
          @AreaCoordSet = areacoordset
          @Text = text
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @AreaCoordSet = params['AreaCoordSet']
          @Text = params['Text']
        end
      end

      # 文本关键识别结果。
      class AiRecognitionTaskOcrWordsResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0：成功，其他值：失败。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 文本关键词识别任务输入信息。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskOcrWordsResultInput`
        # @param Output: 文本关键词识别任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskOcrWordsResultOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiRecognitionTaskOcrWordsResultInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiRecognitionTaskOcrWordsResultOutput.new.deserialize(params[Output])
          end
        end
      end

      # 文本关键词识别输入。
      class AiRecognitionTaskOcrWordsResultInput < TencentCloud::Common::AbstractModel
        # @param Definition: 文本关键词识别模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 文本关键词识别结果。
      class AiRecognitionTaskOcrWordsResultItem < TencentCloud::Common::AbstractModel
        # @param Word: 文本关键词。
        # @type Word: String
        # @param SegmentSet: 文本关键出现的片段列表。
        # @type SegmentSet: Array

        attr_accessor :Word, :SegmentSet
        
        def initialize(word=nil, segmentset=nil)
          @Word = word
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Word = params['Word']
          @SegmentSet = params['SegmentSet']
        end
      end

      # 文本关键词识别输出。
      class AiRecognitionTaskOcrWordsResultOutput < TencentCloud::Common::AbstractModel
        # @param ResultSet: 文本关键词识别结果集。
        # @type ResultSet: Array

        attr_accessor :ResultSet
        
        def initialize(resultset=nil)
          @ResultSet = resultset
        end

        def deserialize(params)
          @ResultSet = params['ResultSet']
        end
      end

      # 文本识别片段。
      class AiRecognitionTaskOcrWordsSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 识别片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 识别片段终止的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 识别片段置信度。取值：0~100。
        # @type Confidence: Float
        # @param AreaCoordSet: 识别结果的区域坐标。数组包含 4 个元素 [x1,y1,x2,y2]，依次表示区域左上点、右下点的横纵坐标。
        # @type AreaCoordSet: Array

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence, :AreaCoordSet
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil, areacoordset=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
          @AreaCoordSet = areacoordset
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
          @AreaCoordSet = params['AreaCoordSet']
        end
      end

      # 视频拆条结果。
      class AiRecognitionTaskSegmentResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0：成功，其他值：失败。
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 视频拆条任务输入信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskSegmentResultInput`
        # @param Output: 视频拆条任务输出信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskSegmentResultOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiRecognitionTaskSegmentResultInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiRecognitionTaskSegmentResultOutput.new.deserialize(params[Output])
          end
        end
      end

      # 视频拆条输入。
      class AiRecognitionTaskSegmentResultInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频拆条模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 视频拆条输出。
      class AiRecognitionTaskSegmentResultOutput < TencentCloud::Common::AbstractModel
        # @param SegmentSet: 视频拆条片段列表。
        # @type SegmentSet: Array

        attr_accessor :SegmentSet
        
        def initialize(segmentset=nil)
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @SegmentSet = params['SegmentSet']
        end
      end

      # 视频拆条片段。
      class AiRecognitionTaskSegmentSegmentItem < TencentCloud::Common::AbstractModel
        # @param FileId: 文件 ID。仅当处理的是点播文件并且拆条生成的子片段为点播文件时有效。
        # @type FileId: String
        # @param SegmentUrl: 视频拆条片段 Url。
        # @type SegmentUrl: String
        # @param Confidence: 拆条片段置信度。取值：0~100。
        # @type Confidence: Float
        # @param StartTimeOffset: 拆条片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 拆条片段终止的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param CovImgUrl: 拆条封面图片 Url。
        # @type CovImgUrl: String
        # @param SpecialInfo: 特殊字段，请忽略。
        # @type SpecialInfo: String

        attr_accessor :FileId, :SegmentUrl, :Confidence, :StartTimeOffset, :EndTimeOffset, :CovImgUrl, :SpecialInfo
        
        def initialize(fileid=nil, segmenturl=nil, confidence=nil, starttimeoffset=nil, endtimeoffset=nil, covimgurl=nil, specialinfo=nil)
          @FileId = fileid
          @SegmentUrl = segmenturl
          @Confidence = confidence
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @CovImgUrl = covimgurl
          @SpecialInfo = specialinfo
        end

        def deserialize(params)
          @FileId = params['FileId']
          @SegmentUrl = params['SegmentUrl']
          @Confidence = params['Confidence']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @CovImgUrl = params['CovImgUrl']
          @SpecialInfo = params['SpecialInfo']
        end
      end

      # 内容审核 Asr 文字鉴政、敏感任务输入参数类型
      class AiReviewPoliticalAsrTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴政模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # Asr 文字涉政信息
      class AiReviewPoliticalAsrTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: Asr 文字涉政、敏感评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Asr 文字涉政、敏感结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param SegmentSet: Asr 文字有涉政、敏感嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @SegmentSet = params['SegmentSet']
        end
      end

      # 内容审核 Ocr 文字鉴政任务输入参数类型
      class AiReviewPoliticalOcrTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴政模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # Ocr 文字涉政信息
      class AiReviewPoliticalOcrTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: Ocr 文字涉政、敏感评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Ocr 文字涉政、敏感结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param SegmentSet: Ocr 文字有涉政、敏感嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @SegmentSet = params['SegmentSet']
        end
      end

      # 内容审核鉴政任务输入参数类型
      class AiReviewPoliticalTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴政模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 涉政信息
      class AiReviewPoliticalTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: 视频涉政评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: 涉政结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param Label: 视频鉴政结果标签。内容审核模板[画面鉴政任务控制参数](https://cloud.tencent.com/document/api/266/31773#PoliticalImgReviewTemplateInfo)里 LabelSet 参数与此参数取值范围的对应关系：
        # violation_photo：
        # <li>violation_photo：违规图标。</li>
        # 其他（即 politician/entertainment/sport/entrepreneur/scholar/celebrity/military）：
        # <li>politician：政治人物。</li>
        # @type Label: String
        # @param SegmentSet: 有涉政嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :Label, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, label=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @Label = label
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @SegmentSet = params['SegmentSet']
        end
      end

      # 内容审核 Asr 文字鉴黄任务输入参数类型
      class AiReviewPornAsrTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴黄模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # Asr 文字涉黄信息
      class AiReviewPornAsrTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: Asr 文字涉黄评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Asr 文字涉黄结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param SegmentSet: Asr 文字有涉黄嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @SegmentSet = params['SegmentSet']
        end
      end

      # 内容审核 Ocr 文字鉴黄任务输入参数类型
      class AiReviewPornOcrTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴黄模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # Ocr 文字涉黄信息
      class AiReviewPornOcrTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: Ocr 文字涉黄评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Ocr 文字涉黄结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param SegmentSet: Ocr 文字有涉黄嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @SegmentSet = params['SegmentSet']
        end
      end

      # 内容审核鉴黄任务输入参数类型
      class AiReviewPornTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴黄模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 鉴黄结果信息
      class AiReviewPornTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: 视频鉴黄评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: 鉴黄结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param Label: 视频鉴黄结果标签，取值范围：
        # <li>porn：色情。</li>
        # <li>sexy：性感。</li>
        # <li>vulgar：低俗。</li>
        # <li>intimacy：亲密行为。</li>
        # @type Label: String
        # @param SegmentSet: 有涉黄嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :Label, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, label=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @Label = label
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @SegmentSet = params['SegmentSet']
        end
      end

      # 内容审核 Asr 文字鉴违禁任务输入参数类型
      class AiReviewProhibitedAsrTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴违禁模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # Asr 文字涉违禁信息
      class AiReviewProhibitedAsrTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: Asr 文字涉违禁评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Asr 文字涉违禁结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param SegmentSet: Asr 文字有涉违禁嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @SegmentSet = params['SegmentSet']
        end
      end

      # 内容审核 Ocr 文字鉴违禁任务输入参数类型
      class AiReviewProhibitedOcrTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴违禁模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # Ocr 文字涉违禁信息
      class AiReviewProhibitedOcrTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: Ocr 文字涉违禁评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Ocr 文字涉违禁结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param SegmentSet: Ocr 文字有涉违禁嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @SegmentSet = params['SegmentSet']
        end
      end

      # 内容审核 Asr 文字鉴政、敏感任务结果类型
      class AiReviewTaskPoliticalAsrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核 Asr 文字鉴政任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPoliticalAsrTaskInput`
        # @param Output: 内容审核 Asr 文字鉴政任务输出。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPoliticalAsrTaskOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewPoliticalAsrTaskInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiReviewPoliticalAsrTaskOutput.new.deserialize(params[Output])
          end
        end
      end

      # 内容审核 Ocr 文字鉴政、敏感任务结果类型
      class AiReviewTaskPoliticalOcrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核 Ocr 文字鉴政任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPoliticalOcrTaskInput`
        # @param Output: 内容审核 Ocr 文字鉴政任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPoliticalOcrTaskOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewPoliticalOcrTaskInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiReviewPoliticalOcrTaskOutput.new.deserialize(params[Output])
          end
        end
      end

      # 内容审核鉴政任务结果类型
      class AiReviewTaskPoliticalResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核鉴政任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPoliticalTaskInput`
        # @param Output: 内容审核鉴政任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPoliticalTaskOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewPoliticalTaskInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiReviewPoliticalTaskOutput.new.deserialize(params[Output])
          end
        end
      end

      # 内容审核 Asr 文字鉴黄任务结果类型
      class AiReviewTaskPornAsrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核 Asr 文字鉴黄任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPornAsrTaskInput`
        # @param Output: 内容审核 Asr 文字鉴黄任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPornAsrTaskOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewPornAsrTaskInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiReviewPornAsrTaskOutput.new.deserialize(params[Output])
          end
        end
      end

      # 内容审核 Ocr 文字鉴黄任务结果类型
      class AiReviewTaskPornOcrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核 Ocr 文字鉴黄任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPornOcrTaskInput`
        # @param Output: 内容审核 Ocr 文字鉴黄任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPornOcrTaskOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewPornOcrTaskInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiReviewPornOcrTaskOutput.new.deserialize(params[Output])
          end
        end
      end

      # 内容审核鉴黄任务结果类型
      class AiReviewTaskPornResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核鉴黄任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPornTaskInput`
        # @param Output: 内容审核鉴黄任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewPornTaskOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewPornTaskInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiReviewPornTaskOutput.new.deserialize(params[Output])
          end
        end
      end

      # 内容审核 Asr 文字鉴任违禁务结果类型
      class AiReviewTaskProhibitedAsrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核 Asr 文字鉴违禁任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewProhibitedAsrTaskInput`
        # @param Output: 内容审核 Asr 文字鉴违禁任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewProhibitedAsrTaskOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewProhibitedAsrTaskInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiReviewProhibitedAsrTaskOutput.new.deserialize(params[Output])
          end
        end
      end

      # 内容审核 Ocr 文字鉴任违禁务结果类型
      class AiReviewTaskProhibitedOcrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核 Ocr 文字鉴违禁任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewProhibitedOcrTaskInput`
        # @param Output: 内容审核 Ocr 文字鉴违禁任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewProhibitedOcrTaskOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewProhibitedOcrTaskInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiReviewProhibitedOcrTaskOutput.new.deserialize(params[Output])
          end
        end
      end

      # 内容审核 Ocr 文字鉴恐任务结果类型
      class AiReviewTaskTerrorismOcrResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核 Ocr 文字鉴恐任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTerrorismOcrTaskInput`
        # @param Output: 内容审核 Ocr 文字鉴恐任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTerrorismOcrTaskOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewTerrorismOcrTaskInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiReviewTerrorismOcrTaskOutput.new.deserialize(params[Output])
          end
        end
      end

      # 内容审核鉴恐任务结果类型
      class AiReviewTaskTerrorismResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 内容审核鉴恐任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTerrorismTaskInput`
        # @param Output: 内容审核鉴恐任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AiReviewTerrorismTaskOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AiReviewTerrorismTaskInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AiReviewTerrorismTaskOutput.new.deserialize(params[Output])
          end
        end
      end

      # 内容审核 Ocr 文字鉴恐任务输入参数类型
      class AiReviewTerrorismOcrTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴恐模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # Ocr 文字涉恐信息
      class AiReviewTerrorismOcrTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: Ocr 文字涉恐评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: Ocr 文字涉恐结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param SegmentSet: Ocr 文字有涉恐嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @SegmentSet = params['SegmentSet']
        end
      end

      # 内容审核鉴恐任务输入参数类型
      class AiReviewTerrorismTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 鉴恐模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 暴恐信息
      class AiReviewTerrorismTaskOutput < TencentCloud::Common::AbstractModel
        # @param Confidence: 视频暴恐评分，分值为0到100。
        # @type Confidence: Float
        # @param Suggestion: 暴恐结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param Label: 视频暴恐结果标签，取值范围：
        # <li>guns：武器枪支。</li>
        # <li>crowd：人群聚集。</li>
        # <li>police：警察部队。</li>
        # <li>bloody：血腥画面。</li>
        # <li>banners：暴恐旗帜。</li>
        # <li>militant：武装分子。</li>
        # <li>explosion：爆炸火灾。</li>
        # <li>terrorists：暴恐人物。</li>
        # @type Label: String
        # @param SegmentSet: 有暴恐嫌疑的视频片段列表。
        # @type SegmentSet: Array

        attr_accessor :Confidence, :Suggestion, :Label, :SegmentSet
        
        def initialize(confidence=nil, suggestion=nil, label=nil, segmentset=nil)
          @Confidence = confidence
          @Suggestion = suggestion
          @Label = label
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @SegmentSet = params['SegmentSet']
        end
      end

      # AI 样本管理，人脸信息。
      class AiSampleFaceInfo < TencentCloud::Common::AbstractModel
        # @param FaceId: 人脸图片 ID。
        # @type FaceId: String
        # @param Url: 人脸图片地址。
        # @type Url: String

        attr_accessor :FaceId, :Url
        
        def initialize(faceid=nil, url=nil)
          @FaceId = faceid
          @Url = url
        end

        def deserialize(params)
          @FaceId = params['FaceId']
          @Url = params['Url']
        end
      end

      # AI 样本管理，人脸数据操作。
      class AiSampleFaceOperation < TencentCloud::Common::AbstractModel
        # @param Type: 操作类型，可选值：add（添加）、delete（删除）、reset（重置）。重置操作将清空该人物已有人脸数据，并添加 FaceContents 指定人脸数据。
        # @type Type: String
        # @param FaceIds: 人脸 ID 集合，当 Type为delete 时，该字段必填。
        # @type FaceIds: Array
        # @param FaceContents: 人脸图片 [Base64](https://tools.ietf.org/html/rfc4648) 编码后的字符串集合。
        # <li>当 Type为add 或 reset 时，该字段必填；</li>
        # <li>数组长度限制：5 张图片。</li>
        # 注意：图片必须是单人像正面人脸较清晰的照片，像素不低于 200*200。
        # @type FaceContents: Array

        attr_accessor :Type, :FaceIds, :FaceContents
        
        def initialize(type=nil, faceids=nil, facecontents=nil)
          @Type = type
          @FaceIds = faceids
          @FaceContents = facecontents
        end

        def deserialize(params)
          @Type = params['Type']
          @FaceIds = params['FaceIds']
          @FaceContents = params['FaceContents']
        end
      end

      # AI 样本管理，处理失败的人脸信息
      class AiSampleFailFaceInfo < TencentCloud::Common::AbstractModel
        # @param Index: 对应入参 FaceContents 中错误图片下标，从 0 开始。
        # @type Index: Integer
        # @param ErrCode: 错误码，取值：
        # <li>0：成功；</li>
        # <li>其他：失败。</li>
        # @type ErrCode: Integer
        # @param Message: 错误描述。
        # @type Message: String

        attr_accessor :Index, :ErrCode, :Message
        
        def initialize(index=nil, errcode=nil, message=nil)
          @Index = index
          @ErrCode = errcode
          @Message = message
        end

        def deserialize(params)
          @Index = params['Index']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
        end
      end

      # AI 样本管理，人物信息。
      class AiSamplePerson < TencentCloud::Common::AbstractModel
        # @param PersonId: 人物 ID。
        # @type PersonId: String
        # @param Name: 人物名称。
        # @type Name: String
        # @param Description: 人物描述。
        # @type Description: String
        # @param FaceInfoSet: 人脸信息。
        # @type FaceInfoSet: Array
        # @param TagSet: 人物标签。
        # @type TagSet: Array
        # @param UsageSet: 应用场景。
        # @type UsageSet: Array
        # @param CreateTime: 创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String

        attr_accessor :PersonId, :Name, :Description, :FaceInfoSet, :TagSet, :UsageSet, :CreateTime, :UpdateTime
        
        def initialize(personid=nil, name=nil, description=nil, faceinfoset=nil, tagset=nil, usageset=nil, createtime=nil, updatetime=nil)
          @PersonId = personid
          @Name = name
          @Description = description
          @FaceInfoSet = faceinfoset
          @TagSet = tagset
          @UsageSet = usageset
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @Name = params['Name']
          @Description = params['Description']
          @FaceInfoSet = params['FaceInfoSet']
          @TagSet = params['TagSet']
          @UsageSet = params['UsageSet']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # AI 样本管理，标签操作。
      class AiSampleTagOperation < TencentCloud::Common::AbstractModel
        # @param Type: 操作类型，可选值：add（添加）、delete（删除）、reset（重置）。
        # @type Type: String
        # @param Tags: 标签，长度限制：128 个字符。
        # @type Tags: Array

        attr_accessor :Type, :Tags
        
        def initialize(type=nil, tags=nil)
          @Type = type
          @Tags = tags
        end

        def deserialize(params)
          @Type = params['Type']
          @Tags = params['Tags']
        end
      end

      # AI 样本管理，关键词输出信息。
      class AiSampleWord < TencentCloud::Common::AbstractModel
        # @param Keyword: 关键词。
        # @type Keyword: String
        # @param TagSet: 关键词标签。
        # @type TagSet: Array
        # @param UsageSet: 关键词应用场景。
        # @type UsageSet: Array
        # @param CreateTime: 创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String

        attr_accessor :Keyword, :TagSet, :UsageSet, :CreateTime, :UpdateTime
        
        def initialize(keyword=nil, tagset=nil, usageset=nil, createtime=nil, updatetime=nil)
          @Keyword = keyword
          @TagSet = tagset
          @UsageSet = usageset
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Keyword = params['Keyword']
          @TagSet = params['TagSet']
          @UsageSet = params['UsageSet']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # AI 样本管理，关键词输入信息。
      class AiSampleWordInfo < TencentCloud::Common::AbstractModel
        # @param Keyword: 关键词，长度限制：20 个字符。
        # @type Keyword: String
        # @param Tags: 关键词标签
        # <li>数组长度限制：20 个标签；</li>
        # <li>单个标签长度限制：128 个字符。</li>
        # @type Tags: Array

        attr_accessor :Keyword, :Tags
        
        def initialize(keyword=nil, tags=nil)
          @Keyword = keyword
          @Tags = tags
        end

        def deserialize(params)
          @Keyword = params['Keyword']
          @Tags = params['Tags']
        end
      end

      # 转动图任务类型
      class AnimatedGraphicTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频转动图模板 ID
        # @type Definition: Integer
        # @param StartTimeOffset: 动图在视频中的开始时间，单位为秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 动图在视频中的结束时间，单位为秒。
        # @type EndTimeOffset: Float

        attr_accessor :Definition, :StartTimeOffset, :EndTimeOffset
        
        def initialize(definition=nil, starttimeoffset=nil, endtimeoffset=nil)
          @Definition = definition
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
        end

        def deserialize(params)
          @Definition = params['Definition']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
        end
      end

      # 转动图模板详情。
      class AnimatedGraphicsTemplate < TencentCloud::Common::AbstractModel
        # @param Definition: 转动图模板唯一标识。
        # @type Definition: Integer
        # @param Type: 模板类型，取值范围：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param Name: 转动图模板名称。
        # @type Name: String
        # @param Comment: 转动图模板描述信息。
        # @type Comment: String
        # @param Width: 动图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 动图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param Format: 动图格式。
        # @type Format: String
        # @param Fps: 帧率。
        # @type Fps: Integer
        # @param Quality: 图片质量。
        # @type Quality: Float
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String

        attr_accessor :Definition, :Type, :Name, :Comment, :Width, :Height, :ResolutionAdaptive, :Format, :Fps, :Quality, :CreateTime, :UpdateTime
        
        def initialize(definition=nil, type=nil, name=nil, comment=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, fps=nil, quality=nil, createtime=nil, updatetime=nil)
          @Definition = definition
          @Type = type
          @Name = name
          @Comment = comment
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @Format = format
          @Fps = fps
          @Quality = quality
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Type = params['Type']
          @Name = params['Name']
          @Comment = params['Comment']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Format = params['Format']
          @Fps = params['Fps']
          @Quality = params['Quality']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # ApplyUpload请求参数结构体
      class ApplyUploadRequest < TencentCloud::Common::AbstractModel
        # @param MediaType: 媒体类型，可选值请参考 [上传能力综述](/document/product/266/9760#.E6.96.87.E4.BB.B6.E7.B1.BB.E5.9E.8B)。
        # @type MediaType: String
        # @param MediaName: 媒体名称。
        # @type MediaName: String
        # @param CoverType: 封面类型，可选值请参考 [上传能力综述](/document/product/266/9760#.E6.96.87.E4.BB.B6.E7.B1.BB.E5.9E.8B)。
        # @type CoverType: String
        # @param Procedure: 媒体后续任务处理操作，即完成媒体上传后，可自动发起任务流操作。参数值为任务流模板名，云点播支持 [创建任务流模板](/document/product/266/33819) 并为模板命名。
        # @type Procedure: String
        # @param ExpireTime: 媒体文件过期时间，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](/document/product/266/11732#iso-.E6.97.A5.E6.9C.9F.E6.A0.BC.E5.BC.8F)。
        # @type ExpireTime: String
        # @param StorageRegion: 指定上传园区，仅适用于对上传地域有特殊需求的用户。
        # @type StorageRegion: String
        # @param ClassId: 分类ID，用于对媒体进行分类管理，可通过 [创建分类](/document/product/266/7812) 接口，创建分类，获得分类 ID。
        # <li>默认值：0，表示其他分类。</li>
        # @type ClassId: Integer
        # @param SourceContext: 来源上下文，用于透传用户请求信息，[上传完成回调](/document/product/266/7830) 将返回该字段值，最长 250 个字符。
        # @type SourceContext: String
        # @param SessionContext: 会话上下文，用于透传用户请求信息，当指定 Procedure 参数后，[任务流状态变更回调](/document/product/266/9636) 将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param ExtInfo: 保留字段，特殊用途时使用。
        # @type ExtInfo: String
        # @param SubAppId: 点播 [子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :MediaType, :MediaName, :CoverType, :Procedure, :ExpireTime, :StorageRegion, :ClassId, :SourceContext, :SessionContext, :ExtInfo, :SubAppId
        
        def initialize(mediatype=nil, medianame=nil, covertype=nil, procedure=nil, expiretime=nil, storageregion=nil, classid=nil, sourcecontext=nil, sessioncontext=nil, extinfo=nil, subappid=nil)
          @MediaType = mediatype
          @MediaName = medianame
          @CoverType = covertype
          @Procedure = procedure
          @ExpireTime = expiretime
          @StorageRegion = storageregion
          @ClassId = classid
          @SourceContext = sourcecontext
          @SessionContext = sessioncontext
          @ExtInfo = extinfo
          @SubAppId = subappid
        end

        def deserialize(params)
          @MediaType = params['MediaType']
          @MediaName = params['MediaName']
          @CoverType = params['CoverType']
          @Procedure = params['Procedure']
          @ExpireTime = params['ExpireTime']
          @StorageRegion = params['StorageRegion']
          @ClassId = params['ClassId']
          @SourceContext = params['SourceContext']
          @SessionContext = params['SessionContext']
          @ExtInfo = params['ExtInfo']
          @SubAppId = params['SubAppId']
        end
      end

      # ApplyUpload返回参数结构体
      class ApplyUploadResponse < TencentCloud::Common::AbstractModel
        # @param StorageBucket: 存储桶，用于上传接口 URL 的 bucket_name。
        # @type StorageBucket: String
        # @param StorageRegion: 存储园区，用于上传接口 Host 的 Region。
        # @type StorageRegion: String
        # @param VodSessionKey: 点播会话，用于确认上传接口的参数 VodSessionKey。
        # @type VodSessionKey: String
        # @param MediaStoragePath: 媒体存储路径，用于上传接口存储媒体的对象键（Key）。
        # @type MediaStoragePath: String
        # @param CoverStoragePath: 封面存储路径，用于上传接口存储封面的对象键（Key）。
        # @type CoverStoragePath: String
        # @param TempCertificate: 临时凭证，用于上传接口的权限验证。
        # @type TempCertificate: :class:`Tencentcloud::Vod.v20180717.models.TempCertificate`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StorageBucket, :StorageRegion, :VodSessionKey, :MediaStoragePath, :CoverStoragePath, :TempCertificate, :RequestId
        
        def initialize(storagebucket=nil, storageregion=nil, vodsessionkey=nil, mediastoragepath=nil, coverstoragepath=nil, tempcertificate=nil, requestid=nil)
          @StorageBucket = storagebucket
          @StorageRegion = storageregion
          @VodSessionKey = vodsessionkey
          @MediaStoragePath = mediastoragepath
          @CoverStoragePath = coverstoragepath
          @TempCertificate = tempcertificate
          @RequestId = requestid
        end

        def deserialize(params)
          @StorageBucket = params['StorageBucket']
          @StorageRegion = params['StorageRegion']
          @VodSessionKey = params['VodSessionKey']
          @MediaStoragePath = params['MediaStoragePath']
          @CoverStoragePath = params['CoverStoragePath']
          unless params['TempCertificate'].nil?
            @TempCertificate = TempCertificate.new.deserialize(params[TempCertificate])
          end
          @RequestId = params['RequestId']
        end
      end

      # 语音全文识别任务控制参数
      class AsrFullTextConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 语音全文识别任务开关，可选值：
        # <li>ON：开启智能语音全文识别任务；</li>
        # <li>OFF：关闭智能语音全文识别任务。</li>
        # @type Switch: String
        # @param SubtitleFormat: 生成的字幕文件格式，不填或者填空字符串表示不生成字幕文件，可选值：
        # <li>vtt：生成 WebVTT 字幕文件。</li>
        # @type SubtitleFormat: String

        attr_accessor :Switch, :SubtitleFormat
        
        def initialize(switch=nil, subtitleformat=nil)
          @Switch = switch
          @SubtitleFormat = subtitleformat
        end

        def deserialize(params)
          @Switch = params['Switch']
          @SubtitleFormat = params['SubtitleFormat']
        end
      end

      # 语音全文识别任务控制参数
      class AsrFullTextConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 语音全文识别任务开关，可选值：
        # <li>ON：开启智能语音全文识别任务；</li>
        # <li>OFF：关闭智能语音全文识别任务。</li>
        # @type Switch: String
        # @param SubtitleFormat: 生成的字幕文件格式，填空字符串表示不生成字幕文件，可选值：
        # <li>vtt：生成 WebVTT 字幕文件。</li>
        # @type SubtitleFormat: String

        attr_accessor :Switch, :SubtitleFormat
        
        def initialize(switch=nil, subtitleformat=nil)
          @Switch = switch
          @SubtitleFormat = subtitleformat
        end

        def deserialize(params)
          @Switch = params['Switch']
          @SubtitleFormat = params['SubtitleFormat']
        end
      end

      # 语音关键词识别控制参数。
      class AsrWordsConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 语音关键词识别任务开关，可选值：
        # <li>ON：开启语音关键词识别任务；</li>
        # <li>OFF：关闭语音关键词识别任务。</li>
        # @type Switch: String
        # @param LabelSet: 关键词过滤标签，指定需要返回的关键词的标签。如果未填或者为空，则全部结果都返回。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array

        attr_accessor :Switch, :LabelSet
        
        def initialize(switch=nil, labelset=nil)
          @Switch = switch
          @LabelSet = labelset
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
        end
      end

      # 语音关键词识别控制参数。
      class AsrWordsConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 语音关键词识别任务开关，可选值：
        # <li>ON：开启语音关键词识别任务；</li>
        # <li>OFF：关闭语音关键词识别任务。</li>
        # @type Switch: String
        # @param LabelSet: 关键词过滤标签，指定需要返回的关键词的标签。如果未填或者为空，则全部结果都返回。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array

        attr_accessor :Switch, :LabelSet
        
        def initialize(switch=nil, labelset=nil)
          @Switch = switch
          @LabelSet = labelset
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
        end
      end

      # 音频流配置参数
      class AudioTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Codec: 音频流的编码格式。
        # 当外层参数 Container 为 mp3 时，可选值为：
        # <li>libmp3lame。</li>
        # 当外层参数 Container 为 ogg 或 flac 时，可选值为：
        # <li>flac。</li>
        # 当外层参数 Container 为 m4a 时，可选值为：
        # <li>libfdk_aac；</li>
        # <li>libmp3lame；</li>
        # <li>ac3。</li>
        # 当外层参数 Container 为 mp4 或 flv 时，可选值为：
        # <li>libfdk_aac：更适合 mp4；</li>
        # <li>libmp3lame：更适合 flv；</li>
        # <li>mp2。</li>
        # 当外层参数 Container 为 hls 时，可选值为：
        # <li>libfdk_aac；</li>
        # <li>libmp3lame。</li>
        # @type Codec: String
        # @param Bitrate: 音频流的码率，取值范围：0 和 [26, 256]，单位：kbps。
        # 当取值为 0，表示音频码率和原始音频保持一致。
        # @type Bitrate: Integer
        # @param SampleRate: 音频流的采样率，可选值：
        # <li>32000</li>
        # <li>44100</li>
        # <li>48000</li>
        # 单位：Hz。
        # @type SampleRate: Integer
        # @param AudioChannel: 音频通道方式，可选值：
        # <li>1：单通道</li>
        # <li>2：双通道</li>
        # <li>6：立体声</li>
        # 默认值：2。
        # @type AudioChannel: Integer

        attr_accessor :Codec, :Bitrate, :SampleRate, :AudioChannel
        
        def initialize(codec=nil, bitrate=nil, samplerate=nil, audiochannel=nil)
          @Codec = codec
          @Bitrate = bitrate
          @SampleRate = samplerate
          @AudioChannel = audiochannel
        end

        def deserialize(params)
          @Codec = params['Codec']
          @Bitrate = params['Bitrate']
          @SampleRate = params['SampleRate']
          @AudioChannel = params['AudioChannel']
        end
      end

      # 音频流配置参数
      class AudioTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Codec: 音频流的编码格式。
        # 当外层参数 Container 为 mp3 时，可选值为：
        # <li>libmp3lame。</li>
        # 当外层参数 Container 为 ogg 或 flac 时，可选值为：
        # <li>flac。</li>
        # 当外层参数 Container 为 m4a 时，可选值为：
        # <li>libfdk_aac；</li>
        # <li>libmp3lame；</li>
        # <li>ac3。</li>
        # 当外层参数 Container 为 mp4 或 flv 时，可选值为：
        # <li>libfdk_aac：更适合 mp4；</li>
        # <li>libmp3lame：更适合 flv；</li>
        # <li>mp2。</li>
        # 当外层参数 Container 为 hls 时，可选值为：
        # <li>libfdk_aac；</li>
        # <li>libmp3lame。</li>
        # @type Codec: String
        # @param Bitrate: 音频流的码率，取值范围：0 和 [26, 256]，单位：kbps。 当取值为 0，表示音频码率和原始音频保持一致。
        # @type Bitrate: Integer
        # @param SampleRate: 音频流的采样率，可选值：
        # <li>32000</li>
        # <li>44100</li>
        # <li>48000</li>
        # 单位：Hz。
        # @type SampleRate: Integer
        # @param AudioChannel: 音频通道方式，可选值：
        # <li>1：单通道</li>
        # <li>2：双通道</li>
        # <li>6：立体声</li>
        # @type AudioChannel: Integer

        attr_accessor :Codec, :Bitrate, :SampleRate, :AudioChannel
        
        def initialize(codec=nil, bitrate=nil, samplerate=nil, audiochannel=nil)
          @Codec = codec
          @Bitrate = bitrate
          @SampleRate = samplerate
          @AudioChannel = audiochannel
        end

        def deserialize(params)
          @Codec = params['Codec']
          @Bitrate = params['Bitrate']
          @SampleRate = params['SampleRate']
          @AudioChannel = params['AudioChannel']
        end
      end

      # 音频轨道上的音频片段信息。
      class AudioTrackItem < TencentCloud::Common::AbstractModel
        # @param SourceMedia: 音频素材的媒体文件来源。可以是点播的文件 ID，也可以是其它文件的 URL。
        # @type SourceMedia: String
        # @param SourceMediaStartTime: 音频片段取自素材文件的起始时间，单位为秒。0 表示从素材开始位置截取。默认为0。
        # @type SourceMediaStartTime: Float
        # @param Duration: 音频片段的时长，单位为秒。默认和素材本身长度一致，表示截取全部素材。
        # @type Duration: Float
        # @param AudioOperations: 对音频片段进行的操作，如音量调节等。
        # @type AudioOperations: Array

        attr_accessor :SourceMedia, :SourceMediaStartTime, :Duration, :AudioOperations
        
        def initialize(sourcemedia=nil, sourcemediastarttime=nil, duration=nil, audiooperations=nil)
          @SourceMedia = sourcemedia
          @SourceMediaStartTime = sourcemediastarttime
          @Duration = duration
          @AudioOperations = audiooperations
        end

        def deserialize(params)
          @SourceMedia = params['SourceMedia']
          @SourceMediaStartTime = params['SourceMediaStartTime']
          @Duration = params['Duration']
          @AudioOperations = params['AudioOperations']
        end
      end

      # 音频操作
      class AudioTransform < TencentCloud::Common::AbstractModel
        # @param Type: 音频操作类型，取值有：
        # <li>Volume：音量调节。</li>
        # @type Type: String
        # @param VolumeParam: 音量调节参数， 当 Type = Volume 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VolumeParam: :class:`Tencentcloud::Vod.v20180717.models.AudioVolumeParam`

        attr_accessor :Type, :VolumeParam
        
        def initialize(type=nil, volumeparam=nil)
          @Type = type
          @VolumeParam = volumeparam
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['VolumeParam'].nil?
            @VolumeParam = AudioVolumeParam.new.deserialize(params[VolumeParam])
          end
        end
      end

      # 音频增益调节参数
      class AudioVolumeParam < TencentCloud::Common::AbstractModel
        # @param Mute: 是否静音，取值范围0或1。
        # <li>0表示不静音。</li>
        # <li>1表示静音。</li>
        # 默认是0。
        # @type Mute: Integer
        # @param Gain: 音频增益，取值范围0~10。
        # <li>大于1表示增加音量。</li>
        # <li>小于1表示降低音量。</li>
        # <li>0和1：表示不改变。</li>
        # 默认是0。
        # @type Gain: Float

        attr_accessor :Mute, :Gain
        
        def initialize(mute=nil, gain=nil)
          @Mute = mute
          @Gain = gain
        end

        def deserialize(params)
          @Mute = params['Mute']
          @Gain = params['Gain']
        end
      end

      # 画布信息。制作视频时，如果源素材（视频或者图片）不能填满输出的视频窗口，将用设置的画布进行背景绘制。
      class Canvas < TencentCloud::Common::AbstractModel
        # @param Color: 背景颜色，取值有：
        # <li>Black：黑色背景</li>
        # <li>White：白色背景</li>
        # 默认值：Black。
        # @type Color: String
        # @param Width: 画布宽度，即输出视频的宽度，取值范围：0~ 4096，单位：px。
        # 默认值：0，表示和第一个视频轨的第一个视频片段的视频宽度一致。
        # @type Width: Integer
        # @param Height: 画布高度，即输出视频的高度（或长边），取值范围：0~ 4096，单位：px。
        # 默认值：0，表示和第一个视频轨的第一个视频片段的视频高度一致。
        # @type Height: Integer

        attr_accessor :Color, :Width, :Height
        
        def initialize(color=nil, width=nil, height=nil)
          @Color = color
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @Color = params['Color']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # 智能分类任务控制参数
      class ClassificationConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 智能分类任务开关，可选值：
        # <li>ON：开启智能分类任务；</li>
        # <li>OFF：关闭智能分类任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 智能分类任务控制参数
      class ClassificationConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 智能分类任务开关，可选值：
        # <li>ON：开启智能分类任务；</li>
        # <li>OFF：关闭智能分类任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 视频裁剪结果文件信息（2017 版）
      class ClipFileInfo2017 < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码
        # <li>0：成功；</li>
        # <li>其他值：失败。</li>
        # @type ErrCode: Integer
        # @param Message: 错误描述。
        # @type Message: String
        # @param FileId: 输出目标文件的文件 ID。
        # @type FileId: String
        # @param FileUrl: 输出目标文件的文件地址。
        # @type FileUrl: String
        # @param FileType: 输出目标文件的文件类型。
        # @type FileType: String

        attr_accessor :ErrCode, :Message, :FileId, :FileUrl, :FileType
        
        def initialize(errcode=nil, message=nil, fileid=nil, fileurl=nil, filetype=nil)
          @ErrCode = errcode
          @Message = message
          @FileId = fileid
          @FileUrl = fileurl
          @FileType = filetype
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          @FileId = params['FileId']
          @FileUrl = params['FileUrl']
          @FileType = params['FileType']
        end
      end

      # 视频剪辑任务信息，该结构仅用于对 2017 版[视频剪辑](https://cloud.tencent.com/document/product/266/10156)接口发起的任务。
      class ClipTask2017 < TencentCloud::Common::AbstractModel
        # @param TaskId: 视频剪辑任务 ID。
        # @type TaskId: String
        # @param SrcFileId: 视频剪辑任务源文件 ID。
        # @type SrcFileId: String
        # @param FileInfo: 视频剪辑输出的文件信息。
        # @type FileInfo: :class:`Tencentcloud::Vod.v20180717.models.ClipFileInfo2017`

        attr_accessor :TaskId, :SrcFileId, :FileInfo
        
        def initialize(taskid=nil, srcfileid=nil, fileinfo=nil)
          @TaskId = taskid
          @SrcFileId = srcfileid
          @FileInfo = fileinfo
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @SrcFileId = params['SrcFileId']
          unless params['FileInfo'].nil?
            @FileInfo = ClipFileInfo2017.new.deserialize(params[FileInfo])
          end
        end
      end

      # CommitUpload请求参数结构体
      class CommitUploadRequest < TencentCloud::Common::AbstractModel
        # @param VodSessionKey: 点播会话，取申请上传接口的返回值 VodSessionKey。
        # @type VodSessionKey: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :VodSessionKey, :SubAppId
        
        def initialize(vodsessionkey=nil, subappid=nil)
          @VodSessionKey = vodsessionkey
          @SubAppId = subappid
        end

        def deserialize(params)
          @VodSessionKey = params['VodSessionKey']
          @SubAppId = params['SubAppId']
        end
      end

      # CommitUpload返回参数结构体
      class CommitUploadResponse < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件的唯一标识。
        # @type FileId: String
        # @param MediaUrl: 媒体播放地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaUrl: String
        # @param CoverUrl: 媒体封面地址。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoverUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FileId, :MediaUrl, :CoverUrl, :RequestId
        
        def initialize(fileid=nil, mediaurl=nil, coverurl=nil, requestid=nil)
          @FileId = fileid
          @MediaUrl = mediaurl
          @CoverUrl = coverurl
          @RequestId = requestid
        end

        def deserialize(params)
          @FileId = params['FileId']
          @MediaUrl = params['MediaUrl']
          @CoverUrl = params['CoverUrl']
          @RequestId = params['RequestId']
        end
      end

      # 输出的媒体文件信息。
      class ComposeMediaOutput < TencentCloud::Common::AbstractModel
        # @param FileName: 文件名称，最长 64 个字符。
        # @type FileName: String
        # @param Description: 描述信息，最长 128 个字符。
        # @type Description: String
        # @param ClassId: 分类ID，用于对媒体进行分类管理，可通过 [创建分类](/document/product/266/7812) 接口，创建分类，获得分类 ID。
        # <li>默认值：0，表示其他分类。</li>
        # @type ClassId: Integer
        # @param ExpireTime: 输出文件的过期时间，超过该时间文件将被删除，默认为永久不过期，格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type ExpireTime: String
        # @param Container: 封装格式，可选值：mp4、mp3。其中，mp3 为纯音频文件。
        # @type Container: String
        # @param VideoStream: 输出的视频信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoStream: :class:`Tencentcloud::Vod.v20180717.models.OutputVideoStream`
        # @param AudioStream: 输出的音频信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioStream: :class:`Tencentcloud::Vod.v20180717.models.OutputAudioStream`
        # @param RemoveVideo: 是否去除视频数据，可选值：
        # <li>0：保留</li>
        # <li>1：去除</li>
        # 默认值：0。
        # @type RemoveVideo: Integer
        # @param RemoveAudio: 是否去除音频数据，可选值：
        # <li>0：保留</li>
        # <li>1：去除</li>
        # 默认值：0。
        # @type RemoveAudio: Integer

        attr_accessor :FileName, :Description, :ClassId, :ExpireTime, :Container, :VideoStream, :AudioStream, :RemoveVideo, :RemoveAudio
        
        def initialize(filename=nil, description=nil, classid=nil, expiretime=nil, container=nil, videostream=nil, audiostream=nil, removevideo=nil, removeaudio=nil)
          @FileName = filename
          @Description = description
          @ClassId = classid
          @ExpireTime = expiretime
          @Container = container
          @VideoStream = videostream
          @AudioStream = audiostream
          @RemoveVideo = removevideo
          @RemoveAudio = removeaudio
        end

        def deserialize(params)
          @FileName = params['FileName']
          @Description = params['Description']
          @ClassId = params['ClassId']
          @ExpireTime = params['ExpireTime']
          @Container = params['Container']
          unless params['VideoStream'].nil?
            @VideoStream = OutputVideoStream.new.deserialize(params[VideoStream])
          end
          unless params['AudioStream'].nil?
            @AudioStream = OutputAudioStream.new.deserialize(params[AudioStream])
          end
          @RemoveVideo = params['RemoveVideo']
          @RemoveAudio = params['RemoveAudio']
        end
      end

      # ComposeMedia请求参数结构体
      class ComposeMediaRequest < TencentCloud::Common::AbstractModel
        # @param Tracks: 输入的媒体轨道列表，包括视频、音频、图片等素材组成的多个轨道信息。输入的多个轨道在时间轴上和输出媒体文件的时间轴对齐，时间轴上相同时间点的各个轨道的素材进行重叠，视频或者图片按轨道顺序进行图像的叠加，轨道顺序高的素材叠加在上面；音频素材进行混音。
        # @type Tracks: Array
        # @param Output: 输出的媒体文件信息。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.ComposeMediaOutput`
        # @param Canvas: 制作视频文件时使用的画布。
        # @type Canvas: :class:`Tencentcloud::Vod.v20180717.models.Canvas`
        # @param SessionContext: 标识来源上下文，用于透传用户请求信息，在ComposeMediaComplete回调将返回该字段值，最长 1000个字符。
        # @type SessionContext: String
        # @param SessionId: 用于任务去重的识别码，如果一天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Tracks, :Output, :Canvas, :SessionContext, :SessionId, :SubAppId
        
        def initialize(tracks=nil, output=nil, canvas=nil, sessioncontext=nil, sessionid=nil, subappid=nil)
          @Tracks = tracks
          @Output = output
          @Canvas = canvas
          @SessionContext = sessioncontext
          @SessionId = sessionid
          @SubAppId = subappid
        end

        def deserialize(params)
          @Tracks = params['Tracks']
          unless params['Output'].nil?
            @Output = ComposeMediaOutput.new.deserialize(params[Output])
          end
          unless params['Canvas'].nil?
            @Canvas = Canvas.new.deserialize(params[Canvas])
          end
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
          @SubAppId = params['SubAppId']
        end
      end

      # ComposeMedia返回参数结构体
      class ComposeMediaResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 制作媒体文件的任务 ID，可以通过该 ID 查询制作任务（任务类型为 MakeMedia）的状态。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 制作媒体文件任务信息
      class ComposeMediaTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: String
        # @param Status: 任务流状态，取值：
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param ErrCode: 错误码
        # <li>0：成功；</li>
        # <li>其他值：失败。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 制作媒体文件任务的输入。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.ComposeMediaTaskInput`
        # @param Output: 制作媒体文件任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.ComposeMediaTaskOutput`

        attr_accessor :TaskId, :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(taskid=nil, status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @TaskId = taskid
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = ComposeMediaTaskInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = ComposeMediaTaskOutput.new.deserialize(params[Output])
          end
        end
      end

      # 制作媒体文件任务的输入。
      class ComposeMediaTaskInput < TencentCloud::Common::AbstractModel
        # @param Tracks: 输入的媒体轨道列表，包括视频、音频、图片等素材组成的多个轨道信息。
        # @type Tracks: Array
        # @param Canvas: 制作视频文件时使用的画布。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Canvas: :class:`Tencentcloud::Vod.v20180717.models.Canvas`
        # @param Output: 输出的媒体文件信息。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.ComposeMediaOutput`

        attr_accessor :Tracks, :Canvas, :Output
        
        def initialize(tracks=nil, canvas=nil, output=nil)
          @Tracks = tracks
          @Canvas = canvas
          @Output = output
        end

        def deserialize(params)
          @Tracks = params['Tracks']
          unless params['Canvas'].nil?
            @Canvas = Canvas.new.deserialize(params[Canvas])
          end
          unless params['Output'].nil?
            @Output = ComposeMediaOutput.new.deserialize(params[Output])
          end
        end
      end

      # 制作媒体文件任务的输出。
      class ComposeMediaTaskOutput < TencentCloud::Common::AbstractModel
        # @param FileType: 文件类型，例如 mp4、mp3 等。
        # @type FileType: String
        # @param FileId: 媒体文件 ID。
        # @type FileId: String
        # @param FileUrl: 媒体文件播放地址。
        # @type FileUrl: String
        # @param MediaName: 文件名称，最长 64 个字符。
        # @type MediaName: String
        # @param ClassId: 分类ID，用于对媒体进行分类管理，可通过 [创建分类](/document/product/266/7812) 接口，创建分类，获得分类 ID。
        # <li>默认值：0，表示其他分类。</li>
        # @type ClassId: Integer
        # @param ExpireTime: 输出文件的过期时间，超过该时间文件将被删除，默认为永久不过期，格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type ExpireTime: String

        attr_accessor :FileType, :FileId, :FileUrl, :MediaName, :ClassId, :ExpireTime
        
        def initialize(filetype=nil, fileid=nil, fileurl=nil, medianame=nil, classid=nil, expiretime=nil)
          @FileType = filetype
          @FileId = fileid
          @FileUrl = fileurl
          @MediaName = medianame
          @ClassId = classid
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @FileType = params['FileType']
          @FileId = params['FileId']
          @FileUrl = params['FileUrl']
          @MediaName = params['MediaName']
          @ClassId = params['ClassId']
          @ExpireTime = params['ExpireTime']
        end
      end

      # 视频拼接源文件信息（2017 版）
      class ConcatFileInfo2017 < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码
        # <li>0：成功；</li>
        # <li>其他值：失败。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param FileId: 视频拼接源文件的 ID。
        # @type FileId: String
        # @param FileUrl: 视频拼接源文件的地址。
        # @type FileUrl: String
        # @param FileType: 视频拼接源文件的格式。
        # @type FileType: String

        attr_accessor :ErrCode, :Message, :FileId, :FileUrl, :FileType
        
        def initialize(errcode=nil, message=nil, fileid=nil, fileurl=nil, filetype=nil)
          @ErrCode = errcode
          @Message = message
          @FileId = fileid
          @FileUrl = fileurl
          @FileType = filetype
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          @FileId = params['FileId']
          @FileUrl = params['FileUrl']
          @FileType = params['FileType']
        end
      end

      # 视频拼接任务信息，该结构仅用于对 2017 版[视频拼接](https://cloud.tencent.com/document/product/266/7821)接口发起的任务。
      class ConcatTask2017 < TencentCloud::Common::AbstractModel
        # @param TaskId: 视频拼接任务 ID。
        # @type TaskId: String
        # @param FileInfoSet: 视频拼接源文件信息。
        # @type FileInfoSet: Array

        attr_accessor :TaskId, :FileInfoSet
        
        def initialize(taskid=nil, fileinfoset=nil)
          @TaskId = taskid
          @FileInfoSet = fileinfoset
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @FileInfoSet = params['FileInfoSet']
        end
      end

      # ConfirmEvents请求参数结构体
      class ConfirmEventsRequest < TencentCloud::Common::AbstractModel
        # @param EventHandles: 事件句柄，即 [拉取事件通知](/document/product/266/33433) 接口输出参数中的 EventSet. EventHandle 字段。
        # 数组长度限制：16。
        # @type EventHandles: Array
        # @param ExtInfo: 保留字段，特殊用途时使用。
        # @type ExtInfo: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :EventHandles, :ExtInfo, :SubAppId
        
        def initialize(eventhandles=nil, extinfo=nil, subappid=nil)
          @EventHandles = eventhandles
          @ExtInfo = extinfo
          @SubAppId = subappid
        end

        def deserialize(params)
          @EventHandles = params['EventHandles']
          @ExtInfo = params['ExtInfo']
          @SubAppId = params['SubAppId']
        end
      end

      # ConfirmEvents返回参数结构体
      class ConfirmEventsResponse < TencentCloud::Common::AbstractModel
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

      # 内容审核模板详情
      class ContentReviewTemplateItem < TencentCloud::Common::AbstractModel
        # @param Definition: 内容审核模板唯一标识。
        # @type Definition: Integer
        # @param Name: 内容审核模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 内容审核模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param PornConfigure: 鉴黄控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PornConfigure: :class:`Tencentcloud::Vod.v20180717.models.PornConfigureInfo`
        # @param TerrorismConfigure: 鉴恐控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TerrorismConfigure: :class:`Tencentcloud::Vod.v20180717.models.TerrorismConfigureInfo`
        # @param PoliticalConfigure: 鉴政控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PoliticalConfigure: :class:`Tencentcloud::Vod.v20180717.models.PoliticalConfigureInfo`
        # @param ProhibitedConfigure: 违禁控制参数。违禁内容包括：
        # <li>谩骂；</li>
        # <li>涉毒违法。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProhibitedConfigure: :class:`Tencentcloud::Vod.v20180717.models.ProhibitedConfigureInfo`
        # @param UserDefineConfigure: 用户自定义内容审核控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UserDefineConfigure: :class:`Tencentcloud::Vod.v20180717.models.UserDefineConfigureInfo`
        # @param ReviewWallSwitch: 审核结果是否进入审核墙（对审核结果进行人工复核）的开关。
        # <li>ON：是；</li>
        # <li>OFF：否。</li>
        # @type ReviewWallSwitch: String
        # @param ScreenshotInterval: 截帧间隔，单位为秒。当不填时，默认截帧间隔为 1 秒，最小值为 0.5 秒。
        # @type ScreenshotInterval: Float
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String

        attr_accessor :Definition, :Name, :Comment, :PornConfigure, :TerrorismConfigure, :PoliticalConfigure, :ProhibitedConfigure, :UserDefineConfigure, :ReviewWallSwitch, :ScreenshotInterval, :CreateTime, :UpdateTime
        
        def initialize(definition=nil, name=nil, comment=nil, pornconfigure=nil, terrorismconfigure=nil, politicalconfigure=nil, prohibitedconfigure=nil, userdefineconfigure=nil, reviewwallswitch=nil, screenshotinterval=nil, createtime=nil, updatetime=nil)
          @Definition = definition
          @Name = name
          @Comment = comment
          @PornConfigure = pornconfigure
          @TerrorismConfigure = terrorismconfigure
          @PoliticalConfigure = politicalconfigure
          @ProhibitedConfigure = prohibitedconfigure
          @UserDefineConfigure = userdefineconfigure
          @ReviewWallSwitch = reviewwallswitch
          @ScreenshotInterval = screenshotinterval
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['PornConfigure'].nil?
            @PornConfigure = PornConfigureInfo.new.deserialize(params[PornConfigure])
          end
          unless params['TerrorismConfigure'].nil?
            @TerrorismConfigure = TerrorismConfigureInfo.new.deserialize(params[TerrorismConfigure])
          end
          unless params['PoliticalConfigure'].nil?
            @PoliticalConfigure = PoliticalConfigureInfo.new.deserialize(params[PoliticalConfigure])
          end
          unless params['ProhibitedConfigure'].nil?
            @ProhibitedConfigure = ProhibitedConfigureInfo.new.deserialize(params[ProhibitedConfigure])
          end
          unless params['UserDefineConfigure'].nil?
            @UserDefineConfigure = UserDefineConfigureInfo.new.deserialize(params[UserDefineConfigure])
          end
          @ReviewWallSwitch = params['ReviewWallSwitch']
          @ScreenshotInterval = params['ScreenshotInterval']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 对视频截图做封面任务输入参数类型
      class CoverBySnapshotTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 指定时间点截图模板 ID。
        # @type Definition: Integer
        # @param PositionType: 截图方式。包含：
        # <li>Time：依照时间点截图</li>
        # <li>Percent：依照百分比截图</li>
        # @type PositionType: String
        # @param PositionValue: 截图位置：
        # <li>对于依照时间点截图，该值表示指定视频第几秒的截图作为封面</li>
        # <li>对于依照百分比截图，该值表示使用视频百分之多少的截图作为封面</li>
        # @type PositionValue: Float
        # @param WatermarkSet: 水印列表，支持多张图片或文字水印，最大可支持 10 张。
        # @type WatermarkSet: Array

        attr_accessor :Definition, :PositionType, :PositionValue, :WatermarkSet
        
        def initialize(definition=nil, positiontype=nil, positionvalue=nil, watermarkset=nil)
          @Definition = definition
          @PositionType = positiontype
          @PositionValue = positionvalue
          @WatermarkSet = watermarkset
        end

        def deserialize(params)
          @Definition = params['Definition']
          @PositionType = params['PositionType']
          @PositionValue = params['PositionValue']
          @WatermarkSet = params['WatermarkSet']
        end
      end

      # 对视频截图做封面任务输出类型
      class CoverBySnapshotTaskOutput < TencentCloud::Common::AbstractModel
        # @param CoverUrl: 封面 URL。
        # @type CoverUrl: String

        attr_accessor :CoverUrl
        
        def initialize(coverurl=nil)
          @CoverUrl = coverurl
        end

        def deserialize(params)
          @CoverUrl = params['CoverUrl']
        end
      end

      # 智能封面任务控制参数
      class CoverConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 智能封面任务开关，可选值：
        # <li>ON：开启智能封面任务；</li>
        # <li>OFF：关闭智能封面任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 智能封面任务控制参数
      class CoverConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 智能封面任务开关，可选值：
        # <li>ON：开启智能封面任务；</li>
        # <li>OFF：关闭智能封面任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # CreateAIAnalysisTemplate请求参数结构体
      class CreateAIAnalysisTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 视频内容分析模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 视频内容分析模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param ClassificationConfigure: 智能分类任务控制参数。
        # @type ClassificationConfigure: :class:`Tencentcloud::Vod.v20180717.models.ClassificationConfigureInfo`
        # @param TagConfigure: 智能标签任务控制参数。
        # @type TagConfigure: :class:`Tencentcloud::Vod.v20180717.models.TagConfigureInfo`
        # @param CoverConfigure: 智能封面任务控制参数。
        # @type CoverConfigure: :class:`Tencentcloud::Vod.v20180717.models.CoverConfigureInfo`
        # @param FrameTagConfigure: 智能按帧标签任务控制参数。
        # @type FrameTagConfigure: :class:`Tencentcloud::Vod.v20180717.models.FrameTagConfigureInfo`
        # @param HighlightConfigure: 智能精彩集锦任务控制参数。
        # @type HighlightConfigure: :class:`Tencentcloud::Vod.v20180717.models.HighlightsConfigureInfo`
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Name, :Comment, :ClassificationConfigure, :TagConfigure, :CoverConfigure, :FrameTagConfigure, :HighlightConfigure, :SubAppId
        
        def initialize(name=nil, comment=nil, classificationconfigure=nil, tagconfigure=nil, coverconfigure=nil, frametagconfigure=nil, highlightconfigure=nil, subappid=nil)
          @Name = name
          @Comment = comment
          @ClassificationConfigure = classificationconfigure
          @TagConfigure = tagconfigure
          @CoverConfigure = coverconfigure
          @FrameTagConfigure = frametagconfigure
          @HighlightConfigure = highlightconfigure
          @SubAppId = subappid
        end

        def deserialize(params)
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['ClassificationConfigure'].nil?
            @ClassificationConfigure = ClassificationConfigureInfo.new.deserialize(params[ClassificationConfigure])
          end
          unless params['TagConfigure'].nil?
            @TagConfigure = TagConfigureInfo.new.deserialize(params[TagConfigure])
          end
          unless params['CoverConfigure'].nil?
            @CoverConfigure = CoverConfigureInfo.new.deserialize(params[CoverConfigure])
          end
          unless params['FrameTagConfigure'].nil?
            @FrameTagConfigure = FrameTagConfigureInfo.new.deserialize(params[FrameTagConfigure])
          end
          unless params['HighlightConfigure'].nil?
            @HighlightConfigure = HighlightsConfigureInfo.new.deserialize(params[HighlightConfigure])
          end
          @SubAppId = params['SubAppId']
        end
      end

      # CreateAIAnalysisTemplate返回参数结构体
      class CreateAIAnalysisTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 视频内容分析模板唯一标识。
        # @type Definition: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :RequestId
        
        def initialize(definition=nil, requestid=nil)
          @Definition = definition
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @RequestId = params['RequestId']
        end
      end

      # CreateAIRecognitionTemplate请求参数结构体
      class CreateAIRecognitionTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 视频内容识别模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 视频内容识别模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param HeadTailConfigure: 视频片头片尾识别控制参数。
        # @type HeadTailConfigure: :class:`Tencentcloud::Vod.v20180717.models.HeadTailConfigureInfo`
        # @param SegmentConfigure: 视频拆条识别控制参数。
        # @type SegmentConfigure: :class:`Tencentcloud::Vod.v20180717.models.SegmentConfigureInfo`
        # @param FaceConfigure: 人脸识别控制参数。
        # @type FaceConfigure: :class:`Tencentcloud::Vod.v20180717.models.FaceConfigureInfo`
        # @param OcrFullTextConfigure: 文本全文识别控制参数。
        # @type OcrFullTextConfigure: :class:`Tencentcloud::Vod.v20180717.models.OcrFullTextConfigureInfo`
        # @param OcrWordsConfigure: 文本关键词识别控制参数。
        # @type OcrWordsConfigure: :class:`Tencentcloud::Vod.v20180717.models.OcrWordsConfigureInfo`
        # @param AsrFullTextConfigure: 语音全文识别控制参数。
        # @type AsrFullTextConfigure: :class:`Tencentcloud::Vod.v20180717.models.AsrFullTextConfigureInfo`
        # @param AsrWordsConfigure: 语音关键词识别控制参数。
        # @type AsrWordsConfigure: :class:`Tencentcloud::Vod.v20180717.models.AsrWordsConfigureInfo`
        # @param ObjectConfigure: 物体识别控制参数。
        # @type ObjectConfigure: :class:`Tencentcloud::Vod.v20180717.models.ObjectConfigureInfo`
        # @param ScreenshotInterval: 截帧间隔，单位为秒。当不填时，默认截帧间隔为 1 秒，最小值为 0.5 秒。
        # @type ScreenshotInterval: Float
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Name, :Comment, :HeadTailConfigure, :SegmentConfigure, :FaceConfigure, :OcrFullTextConfigure, :OcrWordsConfigure, :AsrFullTextConfigure, :AsrWordsConfigure, :ObjectConfigure, :ScreenshotInterval, :SubAppId
        
        def initialize(name=nil, comment=nil, headtailconfigure=nil, segmentconfigure=nil, faceconfigure=nil, ocrfulltextconfigure=nil, ocrwordsconfigure=nil, asrfulltextconfigure=nil, asrwordsconfigure=nil, objectconfigure=nil, screenshotinterval=nil, subappid=nil)
          @Name = name
          @Comment = comment
          @HeadTailConfigure = headtailconfigure
          @SegmentConfigure = segmentconfigure
          @FaceConfigure = faceconfigure
          @OcrFullTextConfigure = ocrfulltextconfigure
          @OcrWordsConfigure = ocrwordsconfigure
          @AsrFullTextConfigure = asrfulltextconfigure
          @AsrWordsConfigure = asrwordsconfigure
          @ObjectConfigure = objectconfigure
          @ScreenshotInterval = screenshotinterval
          @SubAppId = subappid
        end

        def deserialize(params)
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['HeadTailConfigure'].nil?
            @HeadTailConfigure = HeadTailConfigureInfo.new.deserialize(params[HeadTailConfigure])
          end
          unless params['SegmentConfigure'].nil?
            @SegmentConfigure = SegmentConfigureInfo.new.deserialize(params[SegmentConfigure])
          end
          unless params['FaceConfigure'].nil?
            @FaceConfigure = FaceConfigureInfo.new.deserialize(params[FaceConfigure])
          end
          unless params['OcrFullTextConfigure'].nil?
            @OcrFullTextConfigure = OcrFullTextConfigureInfo.new.deserialize(params[OcrFullTextConfigure])
          end
          unless params['OcrWordsConfigure'].nil?
            @OcrWordsConfigure = OcrWordsConfigureInfo.new.deserialize(params[OcrWordsConfigure])
          end
          unless params['AsrFullTextConfigure'].nil?
            @AsrFullTextConfigure = AsrFullTextConfigureInfo.new.deserialize(params[AsrFullTextConfigure])
          end
          unless params['AsrWordsConfigure'].nil?
            @AsrWordsConfigure = AsrWordsConfigureInfo.new.deserialize(params[AsrWordsConfigure])
          end
          unless params['ObjectConfigure'].nil?
            @ObjectConfigure = ObjectConfigureInfo.new.deserialize(params[ObjectConfigure])
          end
          @ScreenshotInterval = params['ScreenshotInterval']
          @SubAppId = params['SubAppId']
        end
      end

      # CreateAIRecognitionTemplate返回参数结构体
      class CreateAIRecognitionTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 视频内容识别模板唯一标识。
        # @type Definition: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :RequestId
        
        def initialize(definition=nil, requestid=nil)
          @Definition = definition
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @RequestId = params['RequestId']
        end
      end

      # CreateAdaptiveDynamicStreamingTemplate请求参数结构体
      class CreateAdaptiveDynamicStreamingTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Format: 自适应转码格式，取值范围：
        # <li>HLS。</li>
        # @type Format: String
        # @param StreamInfos: 自适应转码输出子流参数信息，最多输出10路子流。
        # 注意：各个子流的帧率必须保持一致；如果不一致，采用第一个子流的帧率作为输出帧率。
        # @type StreamInfos: Array
        # @param Name: 模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param DrmType: DRM方案类型，取值范围：
        # <li>SimpleAES。</li>
        # 如果取值为空字符串，代表不对视频做 DRM 保护。
        # @type DrmType: String
        # @param DisableHigherVideoBitrate: 是否禁止视频低码率转高码率，取值范围：
        # <li>0：否，</li>
        # <li>1：是。</li>
        # 默认为否。
        # @type DisableHigherVideoBitrate: Integer
        # @param DisableHigherVideoResolution: 是否禁止视频分辨率转高分辨率，取值范围：
        # <li>0：否，</li>
        # <li>1：是。</li>
        # 默认为否。
        # @type DisableHigherVideoResolution: Integer
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Format, :StreamInfos, :Name, :DrmType, :DisableHigherVideoBitrate, :DisableHigherVideoResolution, :Comment, :SubAppId
        
        def initialize(format=nil, streaminfos=nil, name=nil, drmtype=nil, disablehighervideobitrate=nil, disablehighervideoresolution=nil, comment=nil, subappid=nil)
          @Format = format
          @StreamInfos = streaminfos
          @Name = name
          @DrmType = drmtype
          @DisableHigherVideoBitrate = disablehighervideobitrate
          @DisableHigherVideoResolution = disablehighervideoresolution
          @Comment = comment
          @SubAppId = subappid
        end

        def deserialize(params)
          @Format = params['Format']
          @StreamInfos = params['StreamInfos']
          @Name = params['Name']
          @DrmType = params['DrmType']
          @DisableHigherVideoBitrate = params['DisableHigherVideoBitrate']
          @DisableHigherVideoResolution = params['DisableHigherVideoResolution']
          @Comment = params['Comment']
          @SubAppId = params['SubAppId']
        end
      end

      # CreateAdaptiveDynamicStreamingTemplate返回参数结构体
      class CreateAdaptiveDynamicStreamingTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 自适应转码模板唯一标识。
        # @type Definition: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :RequestId
        
        def initialize(definition=nil, requestid=nil)
          @Definition = definition
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @RequestId = params['RequestId']
        end
      end

      # CreateAnimatedGraphicsTemplate请求参数结构体
      class CreateAnimatedGraphicsTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Fps: 帧率，取值范围：[1, 30]，单位：Hz。
        # @type Fps: Integer
        # @param Width: 动图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 动图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param Format: 动图格式，取值为 gif 和 webp。默认为 gif。
        # @type Format: String
        # @param Quality: 图片质量，取值范围：[1, 100]，默认值为 75。
        # @type Quality: Float
        # @param Name: 转动图模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Fps, :Width, :Height, :ResolutionAdaptive, :Format, :Quality, :Name, :Comment, :SubAppId
        
        def initialize(fps=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, quality=nil, name=nil, comment=nil, subappid=nil)
          @Fps = fps
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @Format = format
          @Quality = quality
          @Name = name
          @Comment = comment
          @SubAppId = subappid
        end

        def deserialize(params)
          @Fps = params['Fps']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Format = params['Format']
          @Quality = params['Quality']
          @Name = params['Name']
          @Comment = params['Comment']
          @SubAppId = params['SubAppId']
        end
      end

      # CreateAnimatedGraphicsTemplate返回参数结构体
      class CreateAnimatedGraphicsTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 转动图模板唯一标识。
        # @type Definition: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :RequestId
        
        def initialize(definition=nil, requestid=nil)
          @Definition = definition
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @RequestId = params['RequestId']
        end
      end

      # CreateClass请求参数结构体
      class CreateClassRequest < TencentCloud::Common::AbstractModel
        # @param ParentId: 父类 ID，一级分类填写 -1。
        # @type ParentId: Integer
        # @param ClassName: 分类名称，长度限制：1-64 个字符。
        # @type ClassName: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :ParentId, :ClassName, :SubAppId
        
        def initialize(parentid=nil, classname=nil, subappid=nil)
          @ParentId = parentid
          @ClassName = classname
          @SubAppId = subappid
        end

        def deserialize(params)
          @ParentId = params['ParentId']
          @ClassName = params['ClassName']
          @SubAppId = params['SubAppId']
        end
      end

      # CreateClass返回参数结构体
      class CreateClassResponse < TencentCloud::Common::AbstractModel
        # @param ClassId: 分类 ID
        # @type ClassId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClassId, :RequestId
        
        def initialize(classid=nil, requestid=nil)
          @ClassId = classid
          @RequestId = requestid
        end

        def deserialize(params)
          @ClassId = params['ClassId']
          @RequestId = params['RequestId']
        end
      end

      # CreateContentReviewTemplate请求参数结构体
      class CreateContentReviewTemplateRequest < TencentCloud::Common::AbstractModel
        # @param ReviewWallSwitch: 审核结果是否进入审核墙（对审核结果进行人工复核）的开关。
        # <li>ON：是；</li>
        # <li>OFF：否。</li>
        # @type ReviewWallSwitch: String
        # @param Name: 内容审核模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 内容审核模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param PornConfigure: 鉴黄控制参数。
        # @type PornConfigure: :class:`Tencentcloud::Vod.v20180717.models.PornConfigureInfo`
        # @param TerrorismConfigure: 鉴恐控制参数。
        # @type TerrorismConfigure: :class:`Tencentcloud::Vod.v20180717.models.TerrorismConfigureInfo`
        # @param PoliticalConfigure: 鉴政控制参数。
        # @type PoliticalConfigure: :class:`Tencentcloud::Vod.v20180717.models.PoliticalConfigureInfo`
        # @param ProhibitedConfigure: 违禁控制参数。违禁内容包括：
        # <li>谩骂；</li>
        # <li>涉毒违法。</li>
        # @type ProhibitedConfigure: :class:`Tencentcloud::Vod.v20180717.models.ProhibitedConfigureInfo`
        # @param UserDefineConfigure: 用户自定义内容审核控制参数。
        # @type UserDefineConfigure: :class:`Tencentcloud::Vod.v20180717.models.UserDefineConfigureInfo`
        # @param ScreenshotInterval: 截帧间隔，单位为秒。当不填时，默认截帧间隔为 1 秒，最小值为 0.5 秒。
        # @type ScreenshotInterval: Float
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :ReviewWallSwitch, :Name, :Comment, :PornConfigure, :TerrorismConfigure, :PoliticalConfigure, :ProhibitedConfigure, :UserDefineConfigure, :ScreenshotInterval, :SubAppId
        
        def initialize(reviewwallswitch=nil, name=nil, comment=nil, pornconfigure=nil, terrorismconfigure=nil, politicalconfigure=nil, prohibitedconfigure=nil, userdefineconfigure=nil, screenshotinterval=nil, subappid=nil)
          @ReviewWallSwitch = reviewwallswitch
          @Name = name
          @Comment = comment
          @PornConfigure = pornconfigure
          @TerrorismConfigure = terrorismconfigure
          @PoliticalConfigure = politicalconfigure
          @ProhibitedConfigure = prohibitedconfigure
          @UserDefineConfigure = userdefineconfigure
          @ScreenshotInterval = screenshotinterval
          @SubAppId = subappid
        end

        def deserialize(params)
          @ReviewWallSwitch = params['ReviewWallSwitch']
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['PornConfigure'].nil?
            @PornConfigure = PornConfigureInfo.new.deserialize(params[PornConfigure])
          end
          unless params['TerrorismConfigure'].nil?
            @TerrorismConfigure = TerrorismConfigureInfo.new.deserialize(params[TerrorismConfigure])
          end
          unless params['PoliticalConfigure'].nil?
            @PoliticalConfigure = PoliticalConfigureInfo.new.deserialize(params[PoliticalConfigure])
          end
          unless params['ProhibitedConfigure'].nil?
            @ProhibitedConfigure = ProhibitedConfigureInfo.new.deserialize(params[ProhibitedConfigure])
          end
          unless params['UserDefineConfigure'].nil?
            @UserDefineConfigure = UserDefineConfigureInfo.new.deserialize(params[UserDefineConfigure])
          end
          @ScreenshotInterval = params['ScreenshotInterval']
          @SubAppId = params['SubAppId']
        end
      end

      # CreateContentReviewTemplate返回参数结构体
      class CreateContentReviewTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 内容审核模板唯一标识。
        # @type Definition: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :RequestId
        
        def initialize(definition=nil, requestid=nil)
          @Definition = definition
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @RequestId = params['RequestId']
        end
      end

      # 视频截取雪碧图任务，该结构仅用于对 2017 版[截取雪碧图](https://cloud.tencent.com/document/product/266/8101)接口发起的任务。
      class CreateImageSpriteTask2017 < TencentCloud::Common::AbstractModel
        # @param TaskId: 截图雪碧图任务 ID。
        # @type TaskId: String
        # @param ErrCode: 错误码
        # <li>0：成功；</li>
        # <li>其他值：失败。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param FileId: 截取雪碧图文件 ID。
        # @type FileId: String
        # @param Definition: 雪碧图规格，参见[雪碧图截图模板](https://cloud.tencent.com/document/product/266/33480#.E9.9B.AA.E7.A2.A7.E5.9B.BE.E6.A8.A1.E6.9D.BF)。
        # @type Definition: Integer
        # @param TotalCount: 雪碧图小图总数量。
        # @type TotalCount: Integer
        # @param ImageSpriteUrlSet: 截取雪碧图输出的地址。
        # @type ImageSpriteUrlSet: Array
        # @param WebVttUrl: 雪碧图子图位置与时间关系 WebVtt 文件地址。
        # @type WebVttUrl: String

        attr_accessor :TaskId, :ErrCode, :Message, :FileId, :Definition, :TotalCount, :ImageSpriteUrlSet, :WebVttUrl
        
        def initialize(taskid=nil, errcode=nil, message=nil, fileid=nil, definition=nil, totalcount=nil, imagespriteurlset=nil, webvtturl=nil)
          @TaskId = taskid
          @ErrCode = errcode
          @Message = message
          @FileId = fileid
          @Definition = definition
          @TotalCount = totalcount
          @ImageSpriteUrlSet = imagespriteurlset
          @WebVttUrl = webvtturl
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          @FileId = params['FileId']
          @Definition = params['Definition']
          @TotalCount = params['TotalCount']
          @ImageSpriteUrlSet = params['ImageSpriteUrlSet']
          @WebVttUrl = params['WebVttUrl']
        end
      end

      # CreateImageSpriteTemplate请求参数结构体
      class CreateImageSpriteTemplateRequest < TencentCloud::Common::AbstractModel
        # @param SampleType: 采样类型，取值：
        # <li>Percent：按百分比。</li>
        # <li>Time：按时间间隔。</li>
        # @type SampleType: String
        # @param SampleInterval: 采样间隔。
        # <li>当 SampleType 为 Percent 时，指定采样间隔的百分比。</li>
        # <li>当 SampleType 为 Time 时，指定采样间隔的时间，单位为秒。</li>
        # @type SampleInterval: Integer
        # @param RowCount: 雪碧图中小图的行数。
        # @type RowCount: Integer
        # @param ColumnCount: 雪碧图中小图的列数。
        # @type ColumnCount: Integer
        # @param Name: 雪碧图模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # 默认值：black 。
        # @type FillType: String
        # @param Width: 雪碧图中小图的宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 雪碧图中小图的高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :SampleType, :SampleInterval, :RowCount, :ColumnCount, :Name, :Comment, :FillType, :Width, :Height, :ResolutionAdaptive, :SubAppId
        
        def initialize(sampletype=nil, sampleinterval=nil, rowcount=nil, columncount=nil, name=nil, comment=nil, filltype=nil, width=nil, height=nil, resolutionadaptive=nil, subappid=nil)
          @SampleType = sampletype
          @SampleInterval = sampleinterval
          @RowCount = rowcount
          @ColumnCount = columncount
          @Name = name
          @Comment = comment
          @FillType = filltype
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @SubAppId = subappid
        end

        def deserialize(params)
          @SampleType = params['SampleType']
          @SampleInterval = params['SampleInterval']
          @RowCount = params['RowCount']
          @ColumnCount = params['ColumnCount']
          @Name = params['Name']
          @Comment = params['Comment']
          @FillType = params['FillType']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @SubAppId = params['SubAppId']
        end
      end

      # CreateImageSpriteTemplate返回参数结构体
      class CreateImageSpriteTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 雪碧图模板唯一标识。
        # @type Definition: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :RequestId
        
        def initialize(definition=nil, requestid=nil)
          @Definition = definition
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @RequestId = params['RequestId']
        end
      end

      # CreatePersonSample请求参数结构体
      class CreatePersonSampleRequest < TencentCloud::Common::AbstractModel
        # @param Name: 人物名称，长度限制：20 个字符。
        # @type Name: String
        # @param Usages: 人物应用场景，可选值：
        # 1. Recognition：用于内容识别，等价于 Recognition.Face。
        # 2. Review：用于内容审核，等价于 Review.Face。
        # 3. All：用于内容识别、内容审核，等价于 1+2。
        # @type Usages: Array
        # @param Description: 人物描述，长度限制：1024 个字符。
        # @type Description: String
        # @param FaceContents: 人脸图片 [Base64](https://tools.ietf.org/html/rfc4648) 编码后的字符串，仅支持 jpeg、png 图片格式。数组长度限制：5 张图片。
        # 注意：图片必须是单人像正面人脸较清晰的照片，像素不低于 200*200。
        # @type FaceContents: Array
        # @param Tags: 人物标签
        # <li>数组长度限制：20 个标签；</li>
        # <li>单个标签长度限制：128 个字符。</li>
        # @type Tags: Array
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Name, :Usages, :Description, :FaceContents, :Tags, :SubAppId
        
        def initialize(name=nil, usages=nil, description=nil, facecontents=nil, tags=nil, subappid=nil)
          @Name = name
          @Usages = usages
          @Description = description
          @FaceContents = facecontents
          @Tags = tags
          @SubAppId = subappid
        end

        def deserialize(params)
          @Name = params['Name']
          @Usages = params['Usages']
          @Description = params['Description']
          @FaceContents = params['FaceContents']
          @Tags = params['Tags']
          @SubAppId = params['SubAppId']
        end
      end

      # CreatePersonSample返回参数结构体
      class CreatePersonSampleResponse < TencentCloud::Common::AbstractModel
        # @param Person: 人物信息。
        # @type Person: :class:`Tencentcloud::Vod.v20180717.models.AiSamplePerson`
        # @param FailFaceInfoSet: 处理失败的人脸信息。
        # @type FailFaceInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Person, :FailFaceInfoSet, :RequestId
        
        def initialize(person=nil, failfaceinfoset=nil, requestid=nil)
          @Person = person
          @FailFaceInfoSet = failfaceinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Person'].nil?
            @Person = AiSamplePerson.new.deserialize(params[Person])
          end
          @FailFaceInfoSet = params['FailFaceInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # CreateProcedureTemplate请求参数结构体
      class CreateProcedureTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 任务流名字（支持中文，不超过20个字）。
        # @type Name: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param MediaProcessTask: 视频处理类型任务参数。
        # @type MediaProcessTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskInput`
        # @param AiContentReviewTask: AI 智能内容审核类型任务参数。
        # @type AiContentReviewTask: :class:`Tencentcloud::Vod.v20180717.models.AiContentReviewTaskInput`
        # @param AiAnalysisTask: AI 智能内容分析类型任务参数。
        # @type AiAnalysisTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskInput`
        # @param AiRecognitionTask: AI 内容识别类型任务参数。
        # @type AiRecognitionTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskInput`
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Name, :Comment, :MediaProcessTask, :AiContentReviewTask, :AiAnalysisTask, :AiRecognitionTask, :SubAppId
        
        def initialize(name=nil, comment=nil, mediaprocesstask=nil, aicontentreviewtask=nil, aianalysistask=nil, airecognitiontask=nil, subappid=nil)
          @Name = name
          @Comment = comment
          @MediaProcessTask = mediaprocesstask
          @AiContentReviewTask = aicontentreviewtask
          @AiAnalysisTask = aianalysistask
          @AiRecognitionTask = airecognitiontask
          @SubAppId = subappid
        end

        def deserialize(params)
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['MediaProcessTask'].nil?
            @MediaProcessTask = MediaProcessTaskInput.new.deserialize(params[MediaProcessTask])
          end
          unless params['AiContentReviewTask'].nil?
            @AiContentReviewTask = AiContentReviewTaskInput.new.deserialize(params[AiContentReviewTask])
          end
          unless params['AiAnalysisTask'].nil?
            @AiAnalysisTask = AiAnalysisTaskInput.new.deserialize(params[AiAnalysisTask])
          end
          unless params['AiRecognitionTask'].nil?
            @AiRecognitionTask = AiRecognitionTaskInput.new.deserialize(params[AiRecognitionTask])
          end
          @SubAppId = params['SubAppId']
        end
      end

      # CreateProcedureTemplate返回参数结构体
      class CreateProcedureTemplateResponse < TencentCloud::Common::AbstractModel
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

      # CreateSampleSnapshotTemplate请求参数结构体
      class CreateSampleSnapshotTemplateRequest < TencentCloud::Common::AbstractModel
        # @param SampleType: 采样截图类型，取值：
        # <li>Percent：按百分比。</li>
        # <li>Time：按时间间隔。</li>
        # @type SampleType: String
        # @param SampleInterval: 采样间隔。
        # <li>当 SampleType 为 Percent 时，指定采样间隔的百分比。</li>
        # <li>当 SampleType 为 Time 时，指定采样间隔的时间，单位为秒。</li>
        # @type SampleInterval: Integer
        # @param Name: 采样截图模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Width: 截图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 截图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param Format: 图片格式，取值为 jpg 和 png。默认为 jpg。
        # @type Format: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # <li>white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。</li>
        # <li>gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊。</li>
        # 默认值：black 。
        # @type FillType: String

        attr_accessor :SampleType, :SampleInterval, :Name, :Width, :Height, :ResolutionAdaptive, :Format, :Comment, :SubAppId, :FillType
        
        def initialize(sampletype=nil, sampleinterval=nil, name=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, comment=nil, subappid=nil, filltype=nil)
          @SampleType = sampletype
          @SampleInterval = sampleinterval
          @Name = name
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @Format = format
          @Comment = comment
          @SubAppId = subappid
          @FillType = filltype
        end

        def deserialize(params)
          @SampleType = params['SampleType']
          @SampleInterval = params['SampleInterval']
          @Name = params['Name']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Format = params['Format']
          @Comment = params['Comment']
          @SubAppId = params['SubAppId']
          @FillType = params['FillType']
        end
      end

      # CreateSampleSnapshotTemplate返回参数结构体
      class CreateSampleSnapshotTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 采样截图模板唯一标识。
        # @type Definition: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :RequestId
        
        def initialize(definition=nil, requestid=nil)
          @Definition = definition
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @RequestId = params['RequestId']
        end
      end

      # CreateSnapshotByTimeOffsetTemplate请求参数结构体
      class CreateSnapshotByTimeOffsetTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 指定时间点截图模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Width: 截图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 截图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param Format: 图片格式，取值可以为 jpg 和 png。默认为 jpg。
        # @type Format: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # <li>white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。</li>
        # <li>gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊。</li>
        # 默认值：black 。
        # @type FillType: String

        attr_accessor :Name, :Width, :Height, :ResolutionAdaptive, :Format, :Comment, :SubAppId, :FillType
        
        def initialize(name=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, comment=nil, subappid=nil, filltype=nil)
          @Name = name
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @Format = format
          @Comment = comment
          @SubAppId = subappid
          @FillType = filltype
        end

        def deserialize(params)
          @Name = params['Name']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Format = params['Format']
          @Comment = params['Comment']
          @SubAppId = params['SubAppId']
          @FillType = params['FillType']
        end
      end

      # CreateSnapshotByTimeOffsetTemplate返回参数结构体
      class CreateSnapshotByTimeOffsetTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 时间点截图模板唯一标识。
        # @type Definition: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :RequestId
        
        def initialize(definition=nil, requestid=nil)
          @Definition = definition
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @RequestId = params['RequestId']
        end
      end

      # CreateSubAppId请求参数结构体
      class CreateSubAppIdRequest < TencentCloud::Common::AbstractModel
        # @param Name: 子应用名称，长度限制：40个字符。
        # @type Name: String
        # @param Description: 子应用简介，长度限制： 300个字符。
        # @type Description: String

        attr_accessor :Name, :Description
        
        def initialize(name=nil, description=nil)
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # CreateSubAppId返回参数结构体
      class CreateSubAppIdResponse < TencentCloud::Common::AbstractModel
        # @param SubAppId: 新创建的子应用 ID。
        # @type SubAppId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubAppId, :RequestId
        
        def initialize(subappid=nil, requestid=nil)
          @SubAppId = subappid
          @RequestId = requestid
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSuperPlayerConfig请求参数结构体
      class CreateSuperPlayerConfigRequest < TencentCloud::Common::AbstractModel
        # @param Name: 播放器配置名称，长度限制：64 个字符。只允许出现 [0-9a-zA-Z] 及 _- 字符（如 test_ABC-123），同一个用户该名称唯一。
        # @type Name: String
        # @param DrmSwitch: 播放 DRM 保护的自适应码流开关：
        # <li>ON：开启，表示仅播放 DRM  保护的自适应码流输出；</li>
        # <li>OFF：关闭，表示播放未加密的自适应码流输出。</li>
        # 默认为 OFF。
        # @type DrmSwitch: String
        # @param AdaptiveDynamicStreamingDefinition: 允许输出的未加密的自适应码流模板 ID，当 DrmSwitch 为 OFF 时必填。
        # @type AdaptiveDynamicStreamingDefinition: Integer
        # @param DrmStreamingsInfo: 允许输出的 DRM 自适应码流模板内容，当 DrmSwitch 为 ON 时必填。
        # @type DrmStreamingsInfo: :class:`Tencentcloud::Vod.v20180717.models.DrmStreamingsInfo`
        # @param ImageSpriteDefinition: 允许输出的雪碧图模板 ID。
        # @type ImageSpriteDefinition: Integer
        # @param ResolutionNames: 播放器对不于不同分辨率的子流展示名字，不填或者填空数组则使用默认配置：
        # <li>MinEdgeLength：240，Name：流畅；</li>
        # <li>MinEdgeLength：480，Name：标清；</li>
        # <li>MinEdgeLength：720，Name：高清；</li>
        # <li>MinEdgeLength：1080，Name：全高清；</li>
        # <li>MinEdgeLength：1440，Name：2K；</li>
        # <li>MinEdgeLength：2160，Name：4K；</li>
        # <li>MinEdgeLength：4320，Name：8K。</li>
        # @type ResolutionNames: Array
        # @param Domain: 播放时使用的域名。不填或者填 Default，表示使用[默认分发配置](https://cloud.tencent.com/document/product/266/33373)中的域名。
        # @type Domain: String
        # @param Scheme: 播放时使用的 Scheme。不填或者填 Default，表示使用[默认分发配置](https://cloud.tencent.com/document/product/266/33373)中的 Scheme。其他可选值：
        # <li>HTTP；</li>
        # <li>HTTPS。</li>
        # @type Scheme: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Name, :DrmSwitch, :AdaptiveDynamicStreamingDefinition, :DrmStreamingsInfo, :ImageSpriteDefinition, :ResolutionNames, :Domain, :Scheme, :Comment, :SubAppId
        
        def initialize(name=nil, drmswitch=nil, adaptivedynamicstreamingdefinition=nil, drmstreamingsinfo=nil, imagespritedefinition=nil, resolutionnames=nil, domain=nil, scheme=nil, comment=nil, subappid=nil)
          @Name = name
          @DrmSwitch = drmswitch
          @AdaptiveDynamicStreamingDefinition = adaptivedynamicstreamingdefinition
          @DrmStreamingsInfo = drmstreamingsinfo
          @ImageSpriteDefinition = imagespritedefinition
          @ResolutionNames = resolutionnames
          @Domain = domain
          @Scheme = scheme
          @Comment = comment
          @SubAppId = subappid
        end

        def deserialize(params)
          @Name = params['Name']
          @DrmSwitch = params['DrmSwitch']
          @AdaptiveDynamicStreamingDefinition = params['AdaptiveDynamicStreamingDefinition']
          unless params['DrmStreamingsInfo'].nil?
            @DrmStreamingsInfo = DrmStreamingsInfo.new.deserialize(params[DrmStreamingsInfo])
          end
          @ImageSpriteDefinition = params['ImageSpriteDefinition']
          @ResolutionNames = params['ResolutionNames']
          @Domain = params['Domain']
          @Scheme = params['Scheme']
          @Comment = params['Comment']
          @SubAppId = params['SubAppId']
        end
      end

      # CreateSuperPlayerConfig返回参数结构体
      class CreateSuperPlayerConfigResponse < TencentCloud::Common::AbstractModel
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

      # CreateTranscodeTemplate请求参数结构体
      class CreateTranscodeTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Container: 封装格式，可选值：mp4、flv、hls、mp3、flac、ogg、m4a。其中，mp3、flac、ogg、m4a 为纯音频文件。
        # @type Container: String
        # @param Name: 转码模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param RemoveVideo: 是否去除视频数据，可选值：
        # <li>0：保留</li>
        # <li>1：去除</li>
        # 默认值：0。
        # @type RemoveVideo: Integer
        # @param RemoveAudio: 是否去除音频数据，可选值：
        # <li>0：保留</li>
        # <li>1：去除</li>
        # 默认值：0。
        # @type RemoveAudio: Integer
        # @param VideoTemplate: 视频流配置参数，当 RemoveVideo 为 0，该字段必填。
        # @type VideoTemplate: :class:`Tencentcloud::Vod.v20180717.models.VideoTemplateInfo`
        # @param AudioTemplate: 音频流配置参数，当 RemoveAudio 为 0，该字段必填。
        # @type AudioTemplate: :class:`Tencentcloud::Vod.v20180717.models.AudioTemplateInfo`
        # @param TEHDConfig: 极速高清转码参数。
        # @type TEHDConfig: :class:`Tencentcloud::Vod.v20180717.models.TEHDConfig`
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Container, :Name, :Comment, :RemoveVideo, :RemoveAudio, :VideoTemplate, :AudioTemplate, :TEHDConfig, :SubAppId
        
        def initialize(container=nil, name=nil, comment=nil, removevideo=nil, removeaudio=nil, videotemplate=nil, audiotemplate=nil, tehdconfig=nil, subappid=nil)
          @Container = container
          @Name = name
          @Comment = comment
          @RemoveVideo = removevideo
          @RemoveAudio = removeaudio
          @VideoTemplate = videotemplate
          @AudioTemplate = audiotemplate
          @TEHDConfig = tehdconfig
          @SubAppId = subappid
        end

        def deserialize(params)
          @Container = params['Container']
          @Name = params['Name']
          @Comment = params['Comment']
          @RemoveVideo = params['RemoveVideo']
          @RemoveAudio = params['RemoveAudio']
          unless params['VideoTemplate'].nil?
            @VideoTemplate = VideoTemplateInfo.new.deserialize(params[VideoTemplate])
          end
          unless params['AudioTemplate'].nil?
            @AudioTemplate = AudioTemplateInfo.new.deserialize(params[AudioTemplate])
          end
          unless params['TEHDConfig'].nil?
            @TEHDConfig = TEHDConfig.new.deserialize(params[TEHDConfig])
          end
          @SubAppId = params['SubAppId']
        end
      end

      # CreateTranscodeTemplate返回参数结构体
      class CreateTranscodeTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 转码模板唯一标识。
        # @type Definition: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :RequestId
        
        def initialize(definition=nil, requestid=nil)
          @Definition = definition
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @RequestId = params['RequestId']
        end
      end

      # CreateWatermarkTemplate请求参数结构体
      class CreateWatermarkTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Type: 水印类型，可选值：
        # <li>image：图片水印；</li>
        # <li>text：文字水印；</li>
        # <li>svg：SVG 水印。</li>
        # @type Type: String
        # @param Name: 水印模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param CoordinateOrigin: 原点位置，可选值：
        # <li>TopLeft：表示坐标原点位于视频图像左上角，水印原点为图片或文字的左上角；</li>
        # <li>TopRight：表示坐标原点位于视频图像的右上角，水印原点为图片或文字的右上角；</li>
        # <li>BottomLeft：表示坐标原点位于视频图像的左下角，水印原点为图片或文字的左下角；</li>
        # <li>BottomRight：表示坐标原点位于视频图像的右下角，水印原点为图片或文字的右下角。</li>
        # 默认值：TopLeft。
        # @type CoordinateOrigin: String
        # @param XPos: 水印原点距离视频图像坐标原点的水平位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 XPos 为视频宽度指定百分比，如 10% 表示 XPos 为视频宽度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 XPos 为指定像素，如 100px 表示 XPos 为 100 像素。</li>
        # 默认值：0px。
        # @type XPos: String
        # @param YPos: 水印原点距离视频图像坐标原点的垂直位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 YPos 为视频高度指定百分比，如 10% 表示 YPos 为视频高度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 YPos 为指定像素，如 100px 表示 YPos 为 100 像素。</li>
        # 默认值：0px。
        # @type YPos: String
        # @param ImageTemplate: 图片水印模板，当 Type 为 image，该字段必填。当 Type 为 text，该字段无效。
        # @type ImageTemplate: :class:`Tencentcloud::Vod.v20180717.models.ImageWatermarkInput`
        # @param TextTemplate: 文字水印模板，当 Type 为 text，该字段必填。当 Type 为 image，该字段无效。
        # @type TextTemplate: :class:`Tencentcloud::Vod.v20180717.models.TextWatermarkTemplateInput`
        # @param SvgTemplate: SVG水印模板，当 Type 为 svg，该字段必填。当 Type 为 image 或 text，该字段无效。
        # @type SvgTemplate: :class:`Tencentcloud::Vod.v20180717.models.SvgWatermarkInput`
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Type, :Name, :Comment, :CoordinateOrigin, :XPos, :YPos, :ImageTemplate, :TextTemplate, :SvgTemplate, :SubAppId
        
        def initialize(type=nil, name=nil, comment=nil, coordinateorigin=nil, xpos=nil, ypos=nil, imagetemplate=nil, texttemplate=nil, svgtemplate=nil, subappid=nil)
          @Type = type
          @Name = name
          @Comment = comment
          @CoordinateOrigin = coordinateorigin
          @XPos = xpos
          @YPos = ypos
          @ImageTemplate = imagetemplate
          @TextTemplate = texttemplate
          @SvgTemplate = svgtemplate
          @SubAppId = subappid
        end

        def deserialize(params)
          @Type = params['Type']
          @Name = params['Name']
          @Comment = params['Comment']
          @CoordinateOrigin = params['CoordinateOrigin']
          @XPos = params['XPos']
          @YPos = params['YPos']
          unless params['ImageTemplate'].nil?
            @ImageTemplate = ImageWatermarkInput.new.deserialize(params[ImageTemplate])
          end
          unless params['TextTemplate'].nil?
            @TextTemplate = TextWatermarkTemplateInput.new.deserialize(params[TextTemplate])
          end
          unless params['SvgTemplate'].nil?
            @SvgTemplate = SvgWatermarkInput.new.deserialize(params[SvgTemplate])
          end
          @SubAppId = params['SubAppId']
        end
      end

      # CreateWatermarkTemplate返回参数结构体
      class CreateWatermarkTemplateResponse < TencentCloud::Common::AbstractModel
        # @param Definition: 水印模板唯一标识。
        # @type Definition: Integer
        # @param ImageUrl: 水印图片地址，仅当 Type 为 image，该字段有效。
        # @type ImageUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Definition, :ImageUrl, :RequestId
        
        def initialize(definition=nil, imageurl=nil, requestid=nil)
          @Definition = definition
          @ImageUrl = imageurl
          @RequestId = requestid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @ImageUrl = params['ImageUrl']
          @RequestId = params['RequestId']
        end
      end

      # CreateWordSamples请求参数结构体
      class CreateWordSamplesRequest < TencentCloud::Common::AbstractModel
        # @param Usages: <b>关键词应用场景，可选值：</b>
        # 1. Recognition.Ocr：通过光学字符识别技术，进行内容识别；
        # 2. Recognition.Asr：通过语音识别技术，进行内容识别；
        # 3. Review.Ocr：通过光学字符识别技术，进行内容审核；
        # 4. Review.Asr：通过语音识别技术，进行内容审核；
        # <b>可合并简写为：</b>
        # 5. Recognition：通过光学字符识别技术、语音识别技术，进行内容识别，等价于 1+2；
        # 6. Review：通过光学字符识别技术、语音识别技术，进行内容审核，等价于 3+4；
        # 7. All：通过光学字符识别技术、语音识别技术，进行内容识别、内容审核，等价于 1+2+3+4。
        # @type Usages: Array
        # @param Words: 关键词，数组长度限制：100。
        # @type Words: Array
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Usages, :Words, :SubAppId
        
        def initialize(usages=nil, words=nil, subappid=nil)
          @Usages = usages
          @Words = words
          @SubAppId = subappid
        end

        def deserialize(params)
          @Usages = params['Usages']
          @Words = params['Words']
          @SubAppId = params['SubAppId']
        end
      end

      # CreateWordSamples返回参数结构体
      class CreateWordSamplesResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAIAnalysisTemplate请求参数结构体
      class DeleteAIAnalysisTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 视频内容分析模板唯一标识。
        # @type Definition: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteAIAnalysisTemplate返回参数结构体
      class DeleteAIAnalysisTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAIRecognitionTemplate请求参数结构体
      class DeleteAIRecognitionTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 视频内容识别模板唯一标识。
        # @type Definition: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteAIRecognitionTemplate返回参数结构体
      class DeleteAIRecognitionTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAdaptiveDynamicStreamingTemplate请求参数结构体
      class DeleteAdaptiveDynamicStreamingTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 自适应转码模板唯一标识。
        # @type Definition: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteAdaptiveDynamicStreamingTemplate返回参数结构体
      class DeleteAdaptiveDynamicStreamingTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteAnimatedGraphicsTemplate请求参数结构体
      class DeleteAnimatedGraphicsTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 转动图模板唯一标识。
        # @type Definition: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteAnimatedGraphicsTemplate返回参数结构体
      class DeleteAnimatedGraphicsTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteClass请求参数结构体
      class DeleteClassRequest < TencentCloud::Common::AbstractModel
        # @param ClassId: 分类 ID
        # @type ClassId: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :ClassId, :SubAppId
        
        def initialize(classid=nil, subappid=nil)
          @ClassId = classid
          @SubAppId = subappid
        end

        def deserialize(params)
          @ClassId = params['ClassId']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteClass返回参数结构体
      class DeleteClassResponse < TencentCloud::Common::AbstractModel
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

      # DeleteContentReviewTemplate请求参数结构体
      class DeleteContentReviewTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 内容审核模板唯一标识。
        # @type Definition: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteContentReviewTemplate返回参数结构体
      class DeleteContentReviewTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteImageSpriteTemplate请求参数结构体
      class DeleteImageSpriteTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 雪碧图模板唯一标识。
        # @type Definition: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteImageSpriteTemplate返回参数结构体
      class DeleteImageSpriteTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteMedia请求参数结构体
      class DeleteMediaRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件的唯一标识。
        # @type FileId: String
        # @param DeleteParts: 指定本次需要删除的部分。默认值为 "[]", 表示删除媒体及其对应的全部视频处理文件。
        # @type DeleteParts: Array
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID 。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :FileId, :DeleteParts, :SubAppId
        
        def initialize(fileid=nil, deleteparts=nil, subappid=nil)
          @FileId = fileid
          @DeleteParts = deleteparts
          @SubAppId = subappid
        end

        def deserialize(params)
          @FileId = params['FileId']
          @DeleteParts = params['DeleteParts']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteMedia返回参数结构体
      class DeleteMediaResponse < TencentCloud::Common::AbstractModel
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

      # DeletePersonSample请求参数结构体
      class DeletePersonSampleRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 人物 ID。
        # @type PersonId: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :PersonId, :SubAppId
        
        def initialize(personid=nil, subappid=nil)
          @PersonId = personid
          @SubAppId = subappid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @SubAppId = params['SubAppId']
        end
      end

      # DeletePersonSample返回参数结构体
      class DeletePersonSampleResponse < TencentCloud::Common::AbstractModel
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

      # DeleteProcedureTemplate请求参数结构体
      class DeleteProcedureTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 任务流名字。
        # @type Name: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Name, :SubAppId
        
        def initialize(name=nil, subappid=nil)
          @Name = name
          @SubAppId = subappid
        end

        def deserialize(params)
          @Name = params['Name']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteProcedureTemplate返回参数结构体
      class DeleteProcedureTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSampleSnapshotTemplate请求参数结构体
      class DeleteSampleSnapshotTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 采样截图模板唯一标识。
        # @type Definition: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteSampleSnapshotTemplate返回参数结构体
      class DeleteSampleSnapshotTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSnapshotByTimeOffsetTemplate请求参数结构体
      class DeleteSnapshotByTimeOffsetTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 指定时间点截图模板唯一标识。
        # @type Definition: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteSnapshotByTimeOffsetTemplate返回参数结构体
      class DeleteSnapshotByTimeOffsetTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteSuperPlayerConfig请求参数结构体
      class DeleteSuperPlayerConfigRequest < TencentCloud::Common::AbstractModel
        # @param Name: 播放器配置名称。
        # @type Name: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Name, :SubAppId
        
        def initialize(name=nil, subappid=nil)
          @Name = name
          @SubAppId = subappid
        end

        def deserialize(params)
          @Name = params['Name']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteSuperPlayerConfig返回参数结构体
      class DeleteSuperPlayerConfigResponse < TencentCloud::Common::AbstractModel
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

      # DeleteTranscodeTemplate请求参数结构体
      class DeleteTranscodeTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 转码模板唯一标识。
        # @type Definition: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteTranscodeTemplate返回参数结构体
      class DeleteTranscodeTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteWatermarkTemplate请求参数结构体
      class DeleteWatermarkTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 水印模板唯一标识。
        # @type Definition: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definition, :SubAppId
        
        def initialize(definition=nil, subappid=nil)
          @Definition = definition
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteWatermarkTemplate返回参数结构体
      class DeleteWatermarkTemplateResponse < TencentCloud::Common::AbstractModel
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

      # DeleteWordSamples请求参数结构体
      class DeleteWordSamplesRequest < TencentCloud::Common::AbstractModel
        # @param Keywords: 关键词，数组长度限制：100 个词。
        # @type Keywords: Array
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Keywords, :SubAppId
        
        def initialize(keywords=nil, subappid=nil)
          @Keywords = keywords
          @SubAppId = subappid
        end

        def deserialize(params)
          @Keywords = params['Keywords']
          @SubAppId = params['SubAppId']
        end
      end

      # DeleteWordSamples返回参数结构体
      class DeleteWordSamplesResponse < TencentCloud::Common::AbstractModel
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

      # DescribeAIAnalysisTemplates请求参数结构体
      class DescribeAIAnalysisTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 视频内容分析模板唯一标识过滤条件，数组长度最大值：100。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definitions, :Offset, :Limit, :SubAppId
        
        def initialize(definitions=nil, offset=nil, limit=nil, subappid=nil)
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeAIAnalysisTemplates返回参数结构体
      class DescribeAIAnalysisTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param AIAnalysisTemplateSet: 视频内容分析模板详情列表。
        # @type AIAnalysisTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AIAnalysisTemplateSet, :RequestId
        
        def initialize(totalcount=nil, aianalysistemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @AIAnalysisTemplateSet = aianalysistemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @AIAnalysisTemplateSet = params['AIAnalysisTemplateSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAIRecognitionTemplates请求参数结构体
      class DescribeAIRecognitionTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 视频内容识别模板唯一标识过滤条件，数组长度限制：100。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definitions, :Offset, :Limit, :SubAppId
        
        def initialize(definitions=nil, offset=nil, limit=nil, subappid=nil)
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeAIRecognitionTemplates返回参数结构体
      class DescribeAIRecognitionTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param AIRecognitionTemplateSet: 视频内容识别模板详情列表。
        # @type AIRecognitionTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AIRecognitionTemplateSet, :RequestId
        
        def initialize(totalcount=nil, airecognitiontemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @AIRecognitionTemplateSet = airecognitiontemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @AIRecognitionTemplateSet = params['AIRecognitionTemplateSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAdaptiveDynamicStreamingTemplates请求参数结构体
      class DescribeAdaptiveDynamicStreamingTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 转自适应码流模板唯一标识过滤条件，数组长度限制：100。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param Type: 模板类型过滤条件，可选值：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definitions, :Offset, :Limit, :Type, :SubAppId
        
        def initialize(definitions=nil, offset=nil, limit=nil, type=nil, subappid=nil)
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @Type = type
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Type = params['Type']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeAdaptiveDynamicStreamingTemplates返回参数结构体
      class DescribeAdaptiveDynamicStreamingTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param AdaptiveDynamicStreamingTemplateSet: 转自适应码流模板详情列表。
        # @type AdaptiveDynamicStreamingTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AdaptiveDynamicStreamingTemplateSet, :RequestId
        
        def initialize(totalcount=nil, adaptivedynamicstreamingtemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @AdaptiveDynamicStreamingTemplateSet = adaptivedynamicstreamingtemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @AdaptiveDynamicStreamingTemplateSet = params['AdaptiveDynamicStreamingTemplateSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAllClass请求参数结构体
      class DescribeAllClassRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :SubAppId
        
        def initialize(subappid=nil)
          @SubAppId = subappid
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeAllClass返回参数结构体
      class DescribeAllClassResponse < TencentCloud::Common::AbstractModel
        # @param ClassInfoSet: 分类信息集合
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClassInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ClassInfoSet, :RequestId
        
        def initialize(classinfoset=nil, requestid=nil)
          @ClassInfoSet = classinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @ClassInfoSet = params['ClassInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAnimatedGraphicsTemplates请求参数结构体
      class DescribeAnimatedGraphicsTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 转动图模板唯一标识过滤条件，数组长度限制：100。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param Type: 模板类型过滤条件，可选值：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definitions, :Offset, :Limit, :Type, :SubAppId
        
        def initialize(definitions=nil, offset=nil, limit=nil, type=nil, subappid=nil)
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @Type = type
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Type = params['Type']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeAnimatedGraphicsTemplates返回参数结构体
      class DescribeAnimatedGraphicsTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param AnimatedGraphicsTemplateSet: 转动图模板详情列表。
        # @type AnimatedGraphicsTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AnimatedGraphicsTemplateSet, :RequestId
        
        def initialize(totalcount=nil, animatedgraphicstemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @AnimatedGraphicsTemplateSet = animatedgraphicstemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @AnimatedGraphicsTemplateSet = params['AnimatedGraphicsTemplateSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCDNUsageData请求参数结构体
      class DescribeCDNUsageDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始日期，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type StartTime: String
        # @param EndTime: 结束日期，需大于开始日期，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type EndTime: String
        # @param DataType: CDN 统计数据类型，有效值：
        # <li>Flux：流量，单位为 byte。</li>
        # <li>Bandwidth：带宽，单位为 bps。</li>
        # @type DataType: String
        # @param DataInterval: 用量数据的时间粒度，单位：分钟，取值有：
        # <li>5：5 分钟粒度，返回指定查询时间内5分钟粒度的明细数据。</li>
        # <li>60：小时粒度，返回指定查询时间内1小时粒度的数据。</li>
        # <li>1440：天粒度，返回指定查询时间内1天粒度的数据。</li>
        # 默认值为1440，返回天粒度的数据。
        # 当该字段为1时，表示以管理员身份查询所有子应用（含主应用）的用量合计。
        # @type DataInterval: Integer
        # @param DomainNames: 域名列表。一次最多查询20个域名的用量数据。可以指定多个域名，查询这些域名叠加的用量数据。默认返回所有域名叠加的用量数据。
        # @type DomainNames: Array
        # @param SubAppId: 点播 [子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # 当该字段为1时，表示以管理员身份查询所有子应用（含主应用）的用量合计，此时时间粒度只支持天粒度。
        # @type SubAppId: Integer

        attr_accessor :StartTime, :EndTime, :DataType, :DataInterval, :DomainNames, :SubAppId
        
        def initialize(starttime=nil, endtime=nil, datatype=nil, datainterval=nil, domainnames=nil, subappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @DataType = datatype
          @DataInterval = datainterval
          @DomainNames = domainnames
          @SubAppId = subappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @DataType = params['DataType']
          @DataInterval = params['DataInterval']
          @DomainNames = params['DomainNames']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeCDNUsageData返回参数结构体
      class DescribeCDNUsageDataResponse < TencentCloud::Common::AbstractModel
        # @param DataInterval: 时间粒度，单位：分钟。
        # @type DataInterval: Integer
        # @param Data: CDN 统计数据。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DataInterval, :Data, :RequestId
        
        def initialize(datainterval=nil, data=nil, requestid=nil)
          @DataInterval = datainterval
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @DataInterval = params['DataInterval']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeContentReviewTemplates请求参数结构体
      class DescribeContentReviewTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 内容审核模板唯一标识过滤条件，数组长度限制：100。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definitions, :Offset, :Limit, :SubAppId
        
        def initialize(definitions=nil, offset=nil, limit=nil, subappid=nil)
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeContentReviewTemplates返回参数结构体
      class DescribeContentReviewTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param ContentReviewTemplateSet: 内容审核模板详情列表。
        # @type ContentReviewTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ContentReviewTemplateSet, :RequestId
        
        def initialize(totalcount=nil, contentreviewtemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @ContentReviewTemplateSet = contentreviewtemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ContentReviewTemplateSet = params['ContentReviewTemplateSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeImageSpriteTemplates请求参数结构体
      class DescribeImageSpriteTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 雪碧图模板唯一标识过滤条件，数组长度限制：100。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param Type: 模板类型过滤条件，可选值：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definitions, :Offset, :Limit, :Type, :SubAppId
        
        def initialize(definitions=nil, offset=nil, limit=nil, type=nil, subappid=nil)
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @Type = type
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Type = params['Type']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeImageSpriteTemplates返回参数结构体
      class DescribeImageSpriteTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param ImageSpriteTemplateSet: 雪碧图模板详情列表。
        # @type ImageSpriteTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ImageSpriteTemplateSet, :RequestId
        
        def initialize(totalcount=nil, imagespritetemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @ImageSpriteTemplateSet = imagespritetemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ImageSpriteTemplateSet = params['ImageSpriteTemplateSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMediaInfos请求参数结构体
      class DescribeMediaInfosRequest < TencentCloud::Common::AbstractModel
        # @param FileIds: 媒体文件 ID 列表，N 从 0 开始取值，最大 19。
        # @type FileIds: Array
        # @param Filters: 指定所有媒体文件需要返回的信息，可同时指定多个信息，N 从 0 开始递增。如果未填写该字段，默认返回所有信息。选项有：
        # <li>basicInfo（视频基础信息）。</li>
        # <li>metaData（视频元信息）。</li>
        # <li>transcodeInfo（视频转码结果信息）。</li>
        # <li>animatedGraphicsInfo（视频转动图结果信息）。</li>
        # <li>imageSpriteInfo（视频雪碧图信息）。</li>
        # <li>snapshotByTimeOffsetInfo（视频指定时间点截图信息）。</li>
        # <li>sampleSnapshotInfo（采样截图信息）。</li>
        # <li>keyFrameDescInfo（打点信息）。</li>
        # <li>adaptiveDynamicStreamingInfo（转自适应码流信息）。</li>
        # <li>miniProgramReviewInfo（小程序审核信息）。</li>
        # @type Filters: Array
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID 。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :FileIds, :Filters, :SubAppId
        
        def initialize(fileids=nil, filters=nil, subappid=nil)
          @FileIds = fileids
          @Filters = filters
          @SubAppId = subappid
        end

        def deserialize(params)
          @FileIds = params['FileIds']
          @Filters = params['Filters']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeMediaInfos返回参数结构体
      class DescribeMediaInfosResponse < TencentCloud::Common::AbstractModel
        # @param MediaInfoSet: 媒体文件信息列表。
        # @type MediaInfoSet: Array
        # @param NotExistFileIdSet: 不存在的文件 ID 列表。
        # @type NotExistFileIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MediaInfoSet, :NotExistFileIdSet, :RequestId
        
        def initialize(mediainfoset=nil, notexistfileidset=nil, requestid=nil)
          @MediaInfoSet = mediainfoset
          @NotExistFileIdSet = notexistfileidset
          @RequestId = requestid
        end

        def deserialize(params)
          @MediaInfoSet = params['MediaInfoSet']
          @NotExistFileIdSet = params['NotExistFileIdSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMediaProcessUsageData请求参数结构体
      class DescribeMediaProcessUsageDataRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。
        # @type StartTime: String
        # @param EndTime: 结束日期，需大于等于起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。
        # @type EndTime: String
        # @param Type: 查询视频处理任务类型，默认查询转码。目前只支持转码类型数据查询。
        # <li>Transcode: 转码</li>
        # @type Type: String
        # @param SubAppId: 点播 [子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :StartTime, :EndTime, :Type, :SubAppId
        
        def initialize(starttime=nil, endtime=nil, type=nil, subappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Type = type
          @SubAppId = subappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Type = params['Type']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeMediaProcessUsageData返回参数结构体
      class DescribeMediaProcessUsageDataResponse < TencentCloud::Common::AbstractModel
        # @param MediaProcessDataSet: 视频处理统计数据概览，展示所查询任务的概览以及详细数据。
        # @type MediaProcessDataSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MediaProcessDataSet, :RequestId
        
        def initialize(mediaprocessdataset=nil, requestid=nil)
          @MediaProcessDataSet = mediaprocessdataset
          @RequestId = requestid
        end

        def deserialize(params)
          @MediaProcessDataSet = params['MediaProcessDataSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribePersonSamples请求参数结构体
      class DescribePersonSamplesRequest < TencentCloud::Common::AbstractModel
        # @param Type: 拉取的人物类型，可选值：
        # <li>UserDefine：用户自定义人物库；</li>
        # <li>Default：系统默认人物库。</li>

        # 默认值：UserDefine，拉取用户自定义人物库人物。
        # 说明：如果是拉取系统默认人物库，只能使用人物名字或者人物 ID + 人物名字的方式进行拉取，且人脸图片只返回一张。
        # @type Type: String
        # @param PersonIds: 人物 ID，数组长度限制：100。
        # @type PersonIds: Array
        # @param Names: 人物名称，数组长度限制：20。
        # @type Names: Array
        # @param Tags: 人物标签，数组长度限制：20。
        # @type Tags: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：100，最大值：100。
        # @type Limit: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Type, :PersonIds, :Names, :Tags, :Offset, :Limit, :SubAppId
        
        def initialize(type=nil, personids=nil, names=nil, tags=nil, offset=nil, limit=nil, subappid=nil)
          @Type = type
          @PersonIds = personids
          @Names = names
          @Tags = tags
          @Offset = offset
          @Limit = limit
          @SubAppId = subappid
        end

        def deserialize(params)
          @Type = params['Type']
          @PersonIds = params['PersonIds']
          @Names = params['Names']
          @Tags = params['Tags']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribePersonSamples返回参数结构体
      class DescribePersonSamplesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的记录总数。
        # @type TotalCount: Integer
        # @param PersonSet: 人物信息。
        # @type PersonSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :PersonSet, :RequestId
        
        def initialize(totalcount=nil, personset=nil, requestid=nil)
          @TotalCount = totalcount
          @PersonSet = personset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @PersonSet = params['PersonSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProcedureTemplates请求参数结构体
      class DescribeProcedureTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Names: 任务流模板名字过滤条件，数组长度限制：100。
        # @type Names: Array
        # @param Type: 任务流模板类型过滤条件，可选值：
        # <li>Preset：系统预置任务流模板；</li>
        # <li>Custom：用户自定义任务流模板。</li>
        # @type Type: String
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Names, :Type, :Offset, :Limit, :SubAppId
        
        def initialize(names=nil, type=nil, offset=nil, limit=nil, subappid=nil)
          @Names = names
          @Type = type
          @Offset = offset
          @Limit = limit
          @SubAppId = subappid
        end

        def deserialize(params)
          @Names = params['Names']
          @Type = params['Type']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeProcedureTemplates返回参数结构体
      class DescribeProcedureTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param ProcedureTemplateSet: 任务流模板详情列表。
        # @type ProcedureTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ProcedureTemplateSet, :RequestId
        
        def initialize(totalcount=nil, proceduretemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @ProcedureTemplateSet = proceduretemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ProcedureTemplateSet = params['ProcedureTemplateSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeReviewDetails请求参数结构体
      class DescribeReviewDetailsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type StartTime: String
        # @param EndTime: 结束日期，需大于起始日期。使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type EndTime: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :StartTime, :EndTime, :SubAppId
        
        def initialize(starttime=nil, endtime=nil, subappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @SubAppId = subappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeReviewDetails返回参数结构体
      class DescribeReviewDetailsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 发起内容审核次数。
        # @type TotalCount: Integer
        # @param TotalDuration: 内容审核总时长。
        # @type TotalDuration: Integer
        # @param Data: 内容审核时长统计数据，每天一个数据。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TotalDuration, :Data, :RequestId
        
        def initialize(totalcount=nil, totalduration=nil, data=nil, requestid=nil)
          @TotalCount = totalcount
          @TotalDuration = totalduration
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TotalDuration = params['TotalDuration']
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSampleSnapshotTemplates请求参数结构体
      class DescribeSampleSnapshotTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 采样截图模板唯一标识过滤条件，数组长度限制：100。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param Type: 模板类型过滤条件，可选值：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definitions, :Offset, :Limit, :Type, :SubAppId
        
        def initialize(definitions=nil, offset=nil, limit=nil, type=nil, subappid=nil)
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @Type = type
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Type = params['Type']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeSampleSnapshotTemplates返回参数结构体
      class DescribeSampleSnapshotTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param SampleSnapshotTemplateSet: 采样截图模板详情列表。
        # @type SampleSnapshotTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SampleSnapshotTemplateSet, :RequestId
        
        def initialize(totalcount=nil, samplesnapshottemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @SampleSnapshotTemplateSet = samplesnapshottemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @SampleSnapshotTemplateSet = params['SampleSnapshotTemplateSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSnapshotByTimeOffsetTemplates请求参数结构体
      class DescribeSnapshotByTimeOffsetTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 指定时间点截图模板唯一标识过滤条件，数组长度限制：100。
        # @type Definitions: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param Type: 模板类型过滤条件，可选值：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definitions, :Offset, :Limit, :Type, :SubAppId
        
        def initialize(definitions=nil, offset=nil, limit=nil, type=nil, subappid=nil)
          @Definitions = definitions
          @Offset = offset
          @Limit = limit
          @Type = type
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Type = params['Type']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeSnapshotByTimeOffsetTemplates返回参数结构体
      class DescribeSnapshotByTimeOffsetTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param SnapshotByTimeOffsetTemplateSet: 指定时间点截图模板详情列表。
        # @type SnapshotByTimeOffsetTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SnapshotByTimeOffsetTemplateSet, :RequestId
        
        def initialize(totalcount=nil, snapshotbytimeoffsettemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @SnapshotByTimeOffsetTemplateSet = snapshotbytimeoffsettemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @SnapshotByTimeOffsetTemplateSet = params['SnapshotByTimeOffsetTemplateSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeStorageData请求参数结构体
      class DescribeStorageDataRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :SubAppId
        
        def initialize(subappid=nil)
          @SubAppId = subappid
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeStorageData返回参数结构体
      class DescribeStorageDataResponse < TencentCloud::Common::AbstractModel
        # @param MediaCount: 当前媒体总量。
        # @type MediaCount: Integer
        # @param TotalStorage: 当前总存储量，单位是字节。
        # @type TotalStorage: Integer
        # @param InfrequentStorage: 当前低频存储量，单位是字节。
        # @type InfrequentStorage: Integer
        # @param StandardStorage: 当前标准存储量，单位是字节。
        # @type StandardStorage: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MediaCount, :TotalStorage, :InfrequentStorage, :StandardStorage, :RequestId
        
        def initialize(mediacount=nil, totalstorage=nil, infrequentstorage=nil, standardstorage=nil, requestid=nil)
          @MediaCount = mediacount
          @TotalStorage = totalstorage
          @InfrequentStorage = infrequentstorage
          @StandardStorage = standardstorage
          @RequestId = requestid
        end

        def deserialize(params)
          @MediaCount = params['MediaCount']
          @TotalStorage = params['TotalStorage']
          @InfrequentStorage = params['InfrequentStorage']
          @StandardStorage = params['StandardStorage']
          @RequestId = params['RequestId']
        end
      end

      # DescribeStorageDetails请求参数结构体
      class DescribeStorageDetailsRequest < TencentCloud::Common::AbstractModel
        # @param StartTime: 起始时间，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#52)。
        # @type StartTime: String
        # @param EndTime: 结束时间，需大于开始日期，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#52)。
        # @type EndTime: String
        # @param Interval: 查询时间间隔，有效值：
        # <li>Minute：每分钟一个统计数据。</li>
        # <li>Hour：每小时一个统计数据。</li>
        # <li>Day：每天一个统计数据。</li>
        # 默认按时间跨度决定，小于1小时按分钟，小于等于7天按小时，大于7天按天展示。
        # @type Interval: String
        # @param StorageType: 查询的存储类型，有效值：
        # <li>TotalStorage：存储总量。</li>
        # <li>StandardStorage：标准存储。</li>
        # <li>InfrequentStorage：低频存储。</li>
        # 默认值为 TotalStorage。
        # @type StorageType: String
        # @param SubAppId: 点播 [子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # 当该字段为1时，表示以管理员身份查询所有子应用（含主应用）的用量合计。
        # @type SubAppId: Integer

        attr_accessor :StartTime, :EndTime, :Interval, :StorageType, :SubAppId
        
        def initialize(starttime=nil, endtime=nil, interval=nil, storagetype=nil, subappid=nil)
          @StartTime = starttime
          @EndTime = endtime
          @Interval = interval
          @StorageType = storagetype
          @SubAppId = subappid
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Interval = params['Interval']
          @StorageType = params['StorageType']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeStorageDetails返回参数结构体
      class DescribeStorageDetailsResponse < TencentCloud::Common::AbstractModel
        # @param Data: 存储统计数据，每分钟/小时/天一条数据。
        # @type Data: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Data, :RequestId
        
        def initialize(data=nil, requestid=nil)
          @Data = data
          @RequestId = requestid
        end

        def deserialize(params)
          @Data = params['Data']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSubAppIds请求参数结构体
      class DescribeSubAppIdsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeSubAppIds返回参数结构体
      class DescribeSubAppIdsResponse < TencentCloud::Common::AbstractModel
        # @param SubAppIdInfoSet: 子应用信息集合。
        # @type SubAppIdInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :SubAppIdInfoSet, :RequestId
        
        def initialize(subappidinfoset=nil, requestid=nil)
          @SubAppIdInfoSet = subappidinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @SubAppIdInfoSet = params['SubAppIdInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSuperPlayerConfigs请求参数结构体
      class DescribeSuperPlayerConfigsRequest < TencentCloud::Common::AbstractModel
        # @param Names: 播放器配置名字过滤条件，数组长度限制：100。
        # @type Names: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param Type: 播放器配置类型过滤条件，可选值：
        # <li>Preset：系统预置配置；</li>
        # <li>Custom：用户自定义配置。</li>
        # @type Type: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Names, :Offset, :Limit, :Type, :SubAppId
        
        def initialize(names=nil, offset=nil, limit=nil, type=nil, subappid=nil)
          @Names = names
          @Offset = offset
          @Limit = limit
          @Type = type
          @SubAppId = subappid
        end

        def deserialize(params)
          @Names = params['Names']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Type = params['Type']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeSuperPlayerConfigs返回参数结构体
      class DescribeSuperPlayerConfigsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param PlayerConfigSet: 播放器配置数组。
        # @type PlayerConfigSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :PlayerConfigSet, :RequestId
        
        def initialize(totalcount=nil, playerconfigset=nil, requestid=nil)
          @TotalCount = totalcount
          @PlayerConfigSet = playerconfigset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @PlayerConfigSet = params['PlayerConfigSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTaskDetail请求参数结构体
      class DescribeTaskDetailRequest < TencentCloud::Common::AbstractModel
        # @param TaskId: 视频处理任务的任务 ID。
        # @type TaskId: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :TaskId, :SubAppId
        
        def initialize(taskid=nil, subappid=nil)
          @TaskId = taskid
          @SubAppId = subappid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeTaskDetail返回参数结构体
      class DescribeTaskDetailResponse < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型，取值：
        # <li>Procedure：视频处理任务；</li>
        # <li>EditMedia：视频编辑任务；</li>
        # <li>WechatPublish：微信发布任务；</li>
        # <li>WechatMiniProgramPublish：微信小程序视频发布任务；</li>
        # <li>ComposeMedia：制作媒体文件任务；</li>
        # <li>PullUpload：拉取上传媒体文件任务。</li>

        # 兼容 2017 版的任务类型：
        # <li>Transcode：视频转码任务；</li>
        # <li>SnapshotByTimeOffset：视频截图任务；</li>
        # <li>Concat：视频拼接任务；</li>
        # <li>Clip：视频剪辑任务；</li>
        # <li>ImageSprites：截取雪碧图任务。</li>
        # @type TaskType: String
        # @param Status: 任务状态，取值：
        # <li>WAITING：等待中；</li>
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param CreateTime: 任务的创建时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param BeginProcessTime: 任务开始执行的时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type BeginProcessTime: String
        # @param FinishTime: 任务执行完毕的时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type FinishTime: String
        # @param ProcedureTask: 视频处理任务信息，仅当 TaskType 为 Procedure，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcedureTask: :class:`Tencentcloud::Vod.v20180717.models.ProcedureTask`
        # @param EditMediaTask: 视频编辑任务信息，仅当 TaskType 为 EditMedia，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EditMediaTask: :class:`Tencentcloud::Vod.v20180717.models.EditMediaTask`
        # @param WechatPublishTask: 微信发布任务信息，仅当 TaskType 为 WechatPublish，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WechatPublishTask: :class:`Tencentcloud::Vod.v20180717.models.WechatPublishTask`
        # @param ComposeMediaTask: 制作媒体文件任务信息，仅当 TaskType 为 ComposeMedia，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComposeMediaTask: :class:`Tencentcloud::Vod.v20180717.models.ComposeMediaTask`
        # @param PullUploadTask: 拉取上传媒体文件任务信息，仅当 TaskType 为 PullUpload，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PullUploadTask: :class:`Tencentcloud::Vod.v20180717.models.PullUploadTask`
        # @param TranscodeTask: 视频转码任务信息，仅当 TaskType 为 Transcode，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranscodeTask: :class:`Tencentcloud::Vod.v20180717.models.TranscodeTask2017`
        # @param SnapshotByTimeOffsetTask: 视频指定时间点截图任务信息，仅当 TaskType 为 SnapshotByTimeOffset，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotByTimeOffsetTask: :class:`Tencentcloud::Vod.v20180717.models.SnapshotByTimeOffsetTask2017`
        # @param ConcatTask: 视频拼接任务信息，仅当 TaskType 为 Concat，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConcatTask: :class:`Tencentcloud::Vod.v20180717.models.ConcatTask2017`
        # @param ClipTask: 视频剪辑任务信息，仅当 TaskType 为 Clip，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClipTask: :class:`Tencentcloud::Vod.v20180717.models.ClipTask2017`
        # @param CreateImageSpriteTask: 截取雪碧图任务信息，仅当 TaskType 为 ImageSprite，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateImageSpriteTask: :class:`Tencentcloud::Vod.v20180717.models.CreateImageSpriteTask2017`
        # @param WechatMiniProgramPublishTask: 微信小程序发布任务信息，仅当 TaskType 为 WechatMiniProgramPublish，该字段有值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WechatMiniProgramPublishTask: :class:`Tencentcloud::Vod.v20180717.models.WechatMiniProgramPublishTask`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskType, :Status, :CreateTime, :BeginProcessTime, :FinishTime, :ProcedureTask, :EditMediaTask, :WechatPublishTask, :ComposeMediaTask, :PullUploadTask, :TranscodeTask, :SnapshotByTimeOffsetTask, :ConcatTask, :ClipTask, :CreateImageSpriteTask, :WechatMiniProgramPublishTask, :RequestId
        
        def initialize(tasktype=nil, status=nil, createtime=nil, beginprocesstime=nil, finishtime=nil, proceduretask=nil, editmediatask=nil, wechatpublishtask=nil, composemediatask=nil, pulluploadtask=nil, transcodetask=nil, snapshotbytimeoffsettask=nil, concattask=nil, cliptask=nil, createimagespritetask=nil, wechatminiprogrampublishtask=nil, requestid=nil)
          @TaskType = tasktype
          @Status = status
          @CreateTime = createtime
          @BeginProcessTime = beginprocesstime
          @FinishTime = finishtime
          @ProcedureTask = proceduretask
          @EditMediaTask = editmediatask
          @WechatPublishTask = wechatpublishtask
          @ComposeMediaTask = composemediatask
          @PullUploadTask = pulluploadtask
          @TranscodeTask = transcodetask
          @SnapshotByTimeOffsetTask = snapshotbytimeoffsettask
          @ConcatTask = concattask
          @ClipTask = cliptask
          @CreateImageSpriteTask = createimagespritetask
          @WechatMiniProgramPublishTask = wechatminiprogrampublishtask
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @Status = params['Status']
          @CreateTime = params['CreateTime']
          @BeginProcessTime = params['BeginProcessTime']
          @FinishTime = params['FinishTime']
          unless params['ProcedureTask'].nil?
            @ProcedureTask = ProcedureTask.new.deserialize(params[ProcedureTask])
          end
          unless params['EditMediaTask'].nil?
            @EditMediaTask = EditMediaTask.new.deserialize(params[EditMediaTask])
          end
          unless params['WechatPublishTask'].nil?
            @WechatPublishTask = WechatPublishTask.new.deserialize(params[WechatPublishTask])
          end
          unless params['ComposeMediaTask'].nil?
            @ComposeMediaTask = ComposeMediaTask.new.deserialize(params[ComposeMediaTask])
          end
          unless params['PullUploadTask'].nil?
            @PullUploadTask = PullUploadTask.new.deserialize(params[PullUploadTask])
          end
          unless params['TranscodeTask'].nil?
            @TranscodeTask = TranscodeTask2017.new.deserialize(params[TranscodeTask])
          end
          unless params['SnapshotByTimeOffsetTask'].nil?
            @SnapshotByTimeOffsetTask = SnapshotByTimeOffsetTask2017.new.deserialize(params[SnapshotByTimeOffsetTask])
          end
          unless params['ConcatTask'].nil?
            @ConcatTask = ConcatTask2017.new.deserialize(params[ConcatTask])
          end
          unless params['ClipTask'].nil?
            @ClipTask = ClipTask2017.new.deserialize(params[ClipTask])
          end
          unless params['CreateImageSpriteTask'].nil?
            @CreateImageSpriteTask = CreateImageSpriteTask2017.new.deserialize(params[CreateImageSpriteTask])
          end
          unless params['WechatMiniProgramPublishTask'].nil?
            @WechatMiniProgramPublishTask = WechatMiniProgramPublishTask.new.deserialize(params[WechatMiniProgramPublishTask])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeTasks请求参数结构体
      class DescribeTasksRequest < TencentCloud::Common::AbstractModel
        # @param Status: 过滤条件：任务状态，可选值：WAITING（等待中）、PROCESSING（处理中）、FINISH（已完成）。
        # @type Status: String
        # @param FileId: 过滤条件：文件 ID。
        # @type FileId: String
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param ScrollToken: 翻页标识，分批拉取时使用：当单次请求无法拉取所有数据，接口将会返回 ScrollToken，下一次请求携带该 Token，将会从下一条记录开始获取。
        # @type ScrollToken: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Status, :FileId, :Limit, :ScrollToken, :SubAppId
        
        def initialize(status=nil, fileid=nil, limit=nil, scrolltoken=nil, subappid=nil)
          @Status = status
          @FileId = fileid
          @Limit = limit
          @ScrollToken = scrolltoken
          @SubAppId = subappid
        end

        def deserialize(params)
          @Status = params['Status']
          @FileId = params['FileId']
          @Limit = params['Limit']
          @ScrollToken = params['ScrollToken']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeTasks返回参数结构体
      class DescribeTasksResponse < TencentCloud::Common::AbstractModel
        # @param TaskSet: 任务概要列表。
        # @type TaskSet: Array
        # @param ScrollToken: 翻页标识，当请求未返回所有数据，该字段表示下一条记录的 ID。当该字段为空，说明已无更多数据。
        # @type ScrollToken: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskSet, :ScrollToken, :RequestId
        
        def initialize(taskset=nil, scrolltoken=nil, requestid=nil)
          @TaskSet = taskset
          @ScrollToken = scrolltoken
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskSet = params['TaskSet']
          @ScrollToken = params['ScrollToken']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTranscodeTemplates请求参数结构体
      class DescribeTranscodeTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 转码模板唯一标识过滤条件，数组长度限制：100。
        # @type Definitions: Array
        # @param Type: 模板类型过滤条件，可选值：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param ContainerType: 封装格式过滤条件，可选值：
        # <li>Video：视频格式，可以同时包含视频流和音频流的封装格式板；</li>
        # <li>PureAudio：纯音频格式，只能包含音频流的封装格式。</li>
        # @type ContainerType: String
        # @param TEHDType: 极速高清过滤条件，用于过滤普通转码或极速高清转码模板，可选值：
        # <li>Common：普通转码模板；</li>
        # <li>TEHD：极速高清模板。</li>
        # @type TEHDType: String
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：10，最大值：100。
        # @type Limit: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definitions, :Type, :ContainerType, :TEHDType, :Offset, :Limit, :SubAppId
        
        def initialize(definitions=nil, type=nil, containertype=nil, tehdtype=nil, offset=nil, limit=nil, subappid=nil)
          @Definitions = definitions
          @Type = type
          @ContainerType = containertype
          @TEHDType = tehdtype
          @Offset = offset
          @Limit = limit
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Type = params['Type']
          @ContainerType = params['ContainerType']
          @TEHDType = params['TEHDType']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeTranscodeTemplates返回参数结构体
      class DescribeTranscodeTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param TranscodeTemplateSet: 转码模板详情列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranscodeTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :TranscodeTemplateSet, :RequestId
        
        def initialize(totalcount=nil, transcodetemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @TranscodeTemplateSet = transcodetemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @TranscodeTemplateSet = params['TranscodeTemplateSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWatermarkTemplates请求参数结构体
      class DescribeWatermarkTemplatesRequest < TencentCloud::Common::AbstractModel
        # @param Definitions: 水印模板唯一标识过滤条件，数组长度限制：100。
        # @type Definitions: Array
        # @param Type: 水印类型过滤条件，可选值：
        # <li>image：图片水印；</li>
        # <li>text：文字水印；</li>
        # <li>svg：SVG 水印。</li>
        # @type Type: String
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数
        # <li>默认值：10；</li>
        # <li>最大值：100。</li>
        # @type Limit: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definitions, :Type, :Offset, :Limit, :SubAppId
        
        def initialize(definitions=nil, type=nil, offset=nil, limit=nil, subappid=nil)
          @Definitions = definitions
          @Type = type
          @Offset = offset
          @Limit = limit
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definitions = params['Definitions']
          @Type = params['Type']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeWatermarkTemplates返回参数结构体
      class DescribeWatermarkTemplatesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合过滤条件的记录总数。
        # @type TotalCount: Integer
        # @param WatermarkTemplateSet: 水印模板详情列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WatermarkTemplateSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :WatermarkTemplateSet, :RequestId
        
        def initialize(totalcount=nil, watermarktemplateset=nil, requestid=nil)
          @TotalCount = totalcount
          @WatermarkTemplateSet = watermarktemplateset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @WatermarkTemplateSet = params['WatermarkTemplateSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeWordSamples请求参数结构体
      class DescribeWordSamplesRequest < TencentCloud::Common::AbstractModel
        # @param Usages: <b>关键词应用场景过滤条件，可选值：</b>
        # 1. Recognition.Ocr：通过光学字符识别技术，进行内容识别；
        # 2. Recognition.Asr：通过语音识别技术，进行内容识别；
        # 3. Review.Ocr：通过光学字符识别技术，进行内容审核；
        # 4. Review.Asr：通过语音识别技术，进行内容审核；
        # <b>可合并简写为：</b>
        # 5. Recognition：通过光学字符识别技术、语音识别技术，进行内容识别，等价于 1+2；
        # 6. Review：通过光学字符识别技术、语音识别技术，进行内容审核，等价于 3+4；
        # 可多选，元素间关系为 or，即关键词的应用场景包含该字段集合中任意元素的记录，均符合该条件。
        # @type Usages: Array
        # @param Keywords: 关键词过滤条件，数组长度限制：100 个词。
        # @type Keywords: Array
        # @param Tags: 标签过滤条件，数组长度限制：20 个词。
        # @type Tags: Array
        # @param Offset: 分页偏移量，默认值：0。
        # @type Offset: Integer
        # @param Limit: 返回记录条数，默认值：100，最大值：100。
        # @type Limit: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Usages, :Keywords, :Tags, :Offset, :Limit, :SubAppId
        
        def initialize(usages=nil, keywords=nil, tags=nil, offset=nil, limit=nil, subappid=nil)
          @Usages = usages
          @Keywords = keywords
          @Tags = tags
          @Offset = offset
          @Limit = limit
          @SubAppId = subappid
        end

        def deserialize(params)
          @Usages = params['Usages']
          @Keywords = params['Keywords']
          @Tags = params['Tags']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SubAppId = params['SubAppId']
        end
      end

      # DescribeWordSamples返回参数结构体
      class DescribeWordSamplesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合条件的记录总数。
        # @type TotalCount: Integer
        # @param WordSet: 关键词信息。
        # @type WordSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :WordSet, :RequestId
        
        def initialize(totalcount=nil, wordset=nil, requestid=nil)
          @TotalCount = totalcount
          @WordSet = wordset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @WordSet = params['WordSet']
          @RequestId = params['RequestId']
        end
      end

      # DRM 自适应码流播放信息
      class DrmStreamingsInfo < TencentCloud::Common::AbstractModel
        # @param SimpleAesDefinition: 保护类型为 SimpleAES 的转自适应码流模板 ID。
        # @type SimpleAesDefinition: Integer

        attr_accessor :SimpleAesDefinition
        
        def initialize(simpleaesdefinition=nil)
          @SimpleAesDefinition = simpleaesdefinition
        end

        def deserialize(params)
          @SimpleAesDefinition = params['SimpleAesDefinition']
        end
      end

      # DRM 自适应码流播放信息修改对象
      class DrmStreamingsInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param SimpleAesDefinition: 保护类型为 SimpleAES 的转自适应码流模板 ID。
        # @type SimpleAesDefinition: Integer

        attr_accessor :SimpleAesDefinition
        
        def initialize(simpleaesdefinition=nil)
          @SimpleAesDefinition = simpleaesdefinition
        end

        def deserialize(params)
          @SimpleAesDefinition = params['SimpleAesDefinition']
        end
      end

      # 编辑点播视频文件信息
      class EditMediaFileInfo < TencentCloud::Common::AbstractModel
        # @param FileId: 视频的 ID。
        # @type FileId: String
        # @param StartTimeOffset: 视频剪辑的起始偏移时间偏移，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 视频剪辑的起始结束时间偏移，单位：秒。
        # @type EndTimeOffset: Float

        attr_accessor :FileId, :StartTimeOffset, :EndTimeOffset
        
        def initialize(fileid=nil, starttimeoffset=nil, endtimeoffset=nil)
          @FileId = fileid
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
        end

        def deserialize(params)
          @FileId = params['FileId']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
        end
      end

      # 编辑视频的结果文件输出。
      class EditMediaOutputConfig < TencentCloud::Common::AbstractModel
        # @param MediaName: 输出文件名，最长 64 个字符。缺省由系统指定生成文件名。
        # @type MediaName: String
        # @param Type: 输出文件格式，可选值：mp4、hls。默认是 mp4。
        # @type Type: String
        # @param ClassId: 分类ID，用于对媒体进行分类管理，可通过 [创建分类](/document/product/266/7812) 接口，创建分类，获得分类 ID。
        # <li>默认值：0，表示其他分类。</li>
        # @type ClassId: Integer
        # @param ExpireTime: 输出文件的过期时间，超过该时间文件将被删除，默认为永久不过期，格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type ExpireTime: String

        attr_accessor :MediaName, :Type, :ClassId, :ExpireTime
        
        def initialize(medianame=nil, type=nil, classid=nil, expiretime=nil)
          @MediaName = medianame
          @Type = type
          @ClassId = classid
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @MediaName = params['MediaName']
          @Type = params['Type']
          @ClassId = params['ClassId']
          @ExpireTime = params['ExpireTime']
        end
      end

      # EditMedia请求参数结构体
      class EditMediaRequest < TencentCloud::Common::AbstractModel
        # @param InputType: 输入视频的类型，可以取的值为  File，Stream 两种。
        # @type InputType: String
        # @param FileInfos: 输入的视频文件信息，当 InputType 为 File 时必填。
        # @type FileInfos: Array
        # @param StreamInfos: 输入的流信息，当 InputType 为 Stream 时必填。
        # @type StreamInfos: Array
        # @param Definition: 编辑模板 ID，取值有 10，20，不填代表使用 10 模板。
        # <li>10：拼接时，以分辨率最高的输入为基准；</li>
        # <li>20：拼接时，以码率最高的输入为基准；</li>
        # @type Definition: Integer
        # @param ProcedureName: [任务流模板](/document/product/266/11700#.E4.BB.BB.E5.8A.A1.E6.B5.81.E6.A8.A1.E6.9D.BF)名字，如果要对生成的新视频执行任务流时填写。
        # @type ProcedureName: String
        # @param OutputConfig: 编辑后生成的文件配置。
        # @type OutputConfig: :class:`Tencentcloud::Vod.v20180717.models.EditMediaOutputConfig`
        # @param SessionContext: 标识来源上下文，用于透传用户请求信息，在EditMediaComplete回调和任务流状态变更回调将返回该字段值，最长 1000个字符。
        # @type SessionContext: String
        # @param TasksPriority: 任务的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        # @type TasksPriority: Integer
        # @param SessionId: 用于任务去重的识别码，如果一天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :InputType, :FileInfos, :StreamInfos, :Definition, :ProcedureName, :OutputConfig, :SessionContext, :TasksPriority, :SessionId, :SubAppId
        
        def initialize(inputtype=nil, fileinfos=nil, streaminfos=nil, definition=nil, procedurename=nil, outputconfig=nil, sessioncontext=nil, taskspriority=nil, sessionid=nil, subappid=nil)
          @InputType = inputtype
          @FileInfos = fileinfos
          @StreamInfos = streaminfos
          @Definition = definition
          @ProcedureName = procedurename
          @OutputConfig = outputconfig
          @SessionContext = sessioncontext
          @TasksPriority = taskspriority
          @SessionId = sessionid
          @SubAppId = subappid
        end

        def deserialize(params)
          @InputType = params['InputType']
          @FileInfos = params['FileInfos']
          @StreamInfos = params['StreamInfos']
          @Definition = params['Definition']
          @ProcedureName = params['ProcedureName']
          unless params['OutputConfig'].nil?
            @OutputConfig = EditMediaOutputConfig.new.deserialize(params[OutputConfig])
          end
          @SessionContext = params['SessionContext']
          @TasksPriority = params['TasksPriority']
          @SessionId = params['SessionId']
          @SubAppId = params['SubAppId']
        end
      end

      # EditMedia返回参数结构体
      class EditMediaResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 编辑视频的任务 ID，可以通过该 ID 查询编辑任务（任务类型为 EditMedia）的状态。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 编辑视频流信息
      class EditMediaStreamInfo < TencentCloud::Common::AbstractModel
        # @param StreamId: 录制的流 ID
        # @type StreamId: String
        # @param StartTime: 流剪辑的起始时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type StartTime: String
        # @param EndTime: 流剪辑的结束时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type EndTime: String

        attr_accessor :StreamId, :StartTime, :EndTime
        
        def initialize(streamid=nil, starttime=nil, endtime=nil)
          @StreamId = streamid
          @StartTime = starttime
          @EndTime = endtime
        end

        def deserialize(params)
          @StreamId = params['StreamId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
        end
      end

      # 编辑视频任务信息
      class EditMediaTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: String
        # @param Status: 任务流状态，取值：
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 视频编辑任务的输入。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.EditMediaTaskInput`
        # @param Output: 视频编辑任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.EditMediaTaskOutput`
        # @param ProcedureTaskId: 若发起视频编辑任务时指定了视频处理流程，则该字段为流程任务 ID。
        # @type ProcedureTaskId: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String

        attr_accessor :TaskId, :Status, :ErrCode, :Message, :Input, :Output, :ProcedureTaskId, :SessionContext, :SessionId
        
        def initialize(taskid=nil, status=nil, errcode=nil, message=nil, input=nil, output=nil, proceduretaskid=nil, sessioncontext=nil, sessionid=nil)
          @TaskId = taskid
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
          @ProcedureTaskId = proceduretaskid
          @SessionContext = sessioncontext
          @SessionId = sessionid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = EditMediaTaskInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = EditMediaTaskOutput.new.deserialize(params[Output])
          end
          @ProcedureTaskId = params['ProcedureTaskId']
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
        end
      end

      # 编辑视频任务的输入。
      class EditMediaTaskInput < TencentCloud::Common::AbstractModel
        # @param InputType: 输入视频的来源类型，可以取的值为 File，Stream 两种。
        # @type InputType: String
        # @param FileInfoSet: 输入的视频文件信息，当 InputType 为 File 时，该字段有值。
        # @type FileInfoSet: Array
        # @param StreamInfoSet: 输入的流信息，当 InputType 为 Stream 时，该字段有值。
        # @type StreamInfoSet: Array

        attr_accessor :InputType, :FileInfoSet, :StreamInfoSet
        
        def initialize(inputtype=nil, fileinfoset=nil, streaminfoset=nil)
          @InputType = inputtype
          @FileInfoSet = fileinfoset
          @StreamInfoSet = streaminfoset
        end

        def deserialize(params)
          @InputType = params['InputType']
          @FileInfoSet = params['FileInfoSet']
          @StreamInfoSet = params['StreamInfoSet']
        end
      end

      # 编辑视频任务的输出
      class EditMediaTaskOutput < TencentCloud::Common::AbstractModel
        # @param FileType: 文件类型，例如 mp4、flv 等。
        # @type FileType: String
        # @param FileUrl: 媒体文件播放地址。
        # @type FileUrl: String
        # @param FileId: 媒体文件 ID。
        # @type FileId: String
        # @param MediaName: 输出文件名，最长 64 个字符。缺省由系统指定生成文件名。
        # @type MediaName: String
        # @param ClassId: 分类ID，用于对媒体进行分类管理，可通过 [创建分类](/document/product/266/7812) 接口，创建分类，获得分类 ID。
        # <li>默认值：0，表示其他分类。</li>
        # @type ClassId: Integer
        # @param ExpireTime: 输出文件的过期时间，超过该时间文件将被删除，默认为永久不过期，格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type ExpireTime: String

        attr_accessor :FileType, :FileUrl, :FileId, :MediaName, :ClassId, :ExpireTime
        
        def initialize(filetype=nil, fileurl=nil, fileid=nil, medianame=nil, classid=nil, expiretime=nil)
          @FileType = filetype
          @FileUrl = fileurl
          @FileId = fileid
          @MediaName = medianame
          @ClassId = classid
          @ExpireTime = expiretime
        end

        def deserialize(params)
          @FileType = params['FileType']
          @FileUrl = params['FileUrl']
          @FileId = params['FileId']
          @MediaName = params['MediaName']
          @ClassId = params['ClassId']
          @ExpireTime = params['ExpireTime']
        end
      end

      # 空的轨道片段，用来进行时间轴的占位。如需要两个音频片段之间有一段时间的静音，可以用 EmptyTrackItem 来进行占位。
      class EmptyTrackItem < TencentCloud::Common::AbstractModel
        # @param Duration: 持续时间，单位为秒。
        # @type Duration: Float

        attr_accessor :Duration
        
        def initialize(duration=nil)
          @Duration = duration
        end

        def deserialize(params)
          @Duration = params['Duration']
        end
      end

      # 事件通知内容，其中，TranscodeCompleteEvent、ConcatCompleteEvent、ClipCompleteEvent、CreateImageSpriteCompleteEvent、SnapshotByTimeOffsetCompleteEvent 为兼容 2017 版接口发起任务的事件通知。
      class EventContent < TencentCloud::Common::AbstractModel
        # @param EventHandle: 事件句柄，调用方必须调用 ConfirmEvents 来确认消息已经收到，确认有效时间 30 秒。失效后，事件可重新被获取。
        # @type EventHandle: String
        # @param EventType: <b>支持事件类型：</b>
        # <li>NewFileUpload：视频上传完成；</li>
        # <li>ProcedureStateChanged：任务流状态变更；</li>
        # <li>FileDeleted：视频删除完成；</li>
        # <li>PullComplete：视频转拉完成；</li>
        # <li>EditMediaComplete：视频编辑完成；</li>
        # <li>WechatPublishComplete：微信发布完成；</li>
        # <li>ComposeMediaComplete：制作媒体文件完成；</li>
        # <li>WechatMiniProgramPublishComplete：微信小程序发布完成。</li>
        # <b>兼容 2017 版的事件类型：</b>
        # <li>TranscodeComplete：视频转码完成；</li>
        # <li>ConcatComplete：视频拼接完成；</li>
        # <li>ClipComplete：视频剪辑完成；</li>
        # <li>CreateImageSpriteComplete：视频截取雪碧图完成；</li>
        # <li>CreateSnapshotByTimeOffsetComplete：视频按时间点截图完成。</li>
        # @type EventType: String
        # @param FileUploadEvent: 视频上传完成事件，当事件类型为 NewFileUpload 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileUploadEvent: :class:`Tencentcloud::Vod.v20180717.models.FileUploadTask`
        # @param ProcedureStateChangeEvent: 任务流状态变更事件，当事件类型为 ProcedureStateChanged 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProcedureStateChangeEvent: :class:`Tencentcloud::Vod.v20180717.models.ProcedureTask`
        # @param FileDeleteEvent: 文件删除事件，当事件类型为 FileDeleted 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FileDeleteEvent: :class:`Tencentcloud::Vod.v20180717.models.FileDeleteTask`
        # @param PullCompleteEvent: 视频转拉完成事件，当事件类型为 PullComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PullCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.PullUploadTask`
        # @param EditMediaCompleteEvent: 视频编辑完成事件，当事件类型为 EditMediaComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EditMediaCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.EditMediaTask`
        # @param WechatPublishCompleteEvent: 微信发布完成事件，当事件类型为 WechatPublishComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WechatPublishCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.WechatPublishTask`
        # @param TranscodeCompleteEvent: 视频转码完成事件，当事件类型为 TranscodeComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranscodeCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.TranscodeTask2017`
        # @param ConcatCompleteEvent: 视频拼接完成事件，当事件类型为 ConcatComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ConcatCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.ConcatTask2017`
        # @param ClipCompleteEvent: 视频剪辑完成事件，当事件类型为 ClipComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClipCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.ClipTask2017`
        # @param CreateImageSpriteCompleteEvent: 视频截取雪碧图完成事件，当事件类型为 CreateImageSpriteComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateImageSpriteCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.CreateImageSpriteTask2017`
        # @param SnapshotByTimeOffsetCompleteEvent: 视频按时间点截图完成事件，当事件类型为 CreateSnapshotByTimeOffsetComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotByTimeOffsetCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.SnapshotByTimeOffsetTask2017`
        # @param ComposeMediaCompleteEvent: 制作媒体文件任务完成事件，当事件类型为 ComposeMediaComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ComposeMediaCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.ComposeMediaTask`
        # @param WechatMiniProgramPublishCompleteEvent: 微信小程序发布任务完成事件，当事件类型为 WechatMiniProgramPublishComplete 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type WechatMiniProgramPublishCompleteEvent: :class:`Tencentcloud::Vod.v20180717.models.WechatMiniProgramPublishTask`

        attr_accessor :EventHandle, :EventType, :FileUploadEvent, :ProcedureStateChangeEvent, :FileDeleteEvent, :PullCompleteEvent, :EditMediaCompleteEvent, :WechatPublishCompleteEvent, :TranscodeCompleteEvent, :ConcatCompleteEvent, :ClipCompleteEvent, :CreateImageSpriteCompleteEvent, :SnapshotByTimeOffsetCompleteEvent, :ComposeMediaCompleteEvent, :WechatMiniProgramPublishCompleteEvent
        
        def initialize(eventhandle=nil, eventtype=nil, fileuploadevent=nil, procedurestatechangeevent=nil, filedeleteevent=nil, pullcompleteevent=nil, editmediacompleteevent=nil, wechatpublishcompleteevent=nil, transcodecompleteevent=nil, concatcompleteevent=nil, clipcompleteevent=nil, createimagespritecompleteevent=nil, snapshotbytimeoffsetcompleteevent=nil, composemediacompleteevent=nil, wechatminiprogrampublishcompleteevent=nil)
          @EventHandle = eventhandle
          @EventType = eventtype
          @FileUploadEvent = fileuploadevent
          @ProcedureStateChangeEvent = procedurestatechangeevent
          @FileDeleteEvent = filedeleteevent
          @PullCompleteEvent = pullcompleteevent
          @EditMediaCompleteEvent = editmediacompleteevent
          @WechatPublishCompleteEvent = wechatpublishcompleteevent
          @TranscodeCompleteEvent = transcodecompleteevent
          @ConcatCompleteEvent = concatcompleteevent
          @ClipCompleteEvent = clipcompleteevent
          @CreateImageSpriteCompleteEvent = createimagespritecompleteevent
          @SnapshotByTimeOffsetCompleteEvent = snapshotbytimeoffsetcompleteevent
          @ComposeMediaCompleteEvent = composemediacompleteevent
          @WechatMiniProgramPublishCompleteEvent = wechatminiprogrampublishcompleteevent
        end

        def deserialize(params)
          @EventHandle = params['EventHandle']
          @EventType = params['EventType']
          unless params['FileUploadEvent'].nil?
            @FileUploadEvent = FileUploadTask.new.deserialize(params[FileUploadEvent])
          end
          unless params['ProcedureStateChangeEvent'].nil?
            @ProcedureStateChangeEvent = ProcedureTask.new.deserialize(params[ProcedureStateChangeEvent])
          end
          unless params['FileDeleteEvent'].nil?
            @FileDeleteEvent = FileDeleteTask.new.deserialize(params[FileDeleteEvent])
          end
          unless params['PullCompleteEvent'].nil?
            @PullCompleteEvent = PullUploadTask.new.deserialize(params[PullCompleteEvent])
          end
          unless params['EditMediaCompleteEvent'].nil?
            @EditMediaCompleteEvent = EditMediaTask.new.deserialize(params[EditMediaCompleteEvent])
          end
          unless params['WechatPublishCompleteEvent'].nil?
            @WechatPublishCompleteEvent = WechatPublishTask.new.deserialize(params[WechatPublishCompleteEvent])
          end
          unless params['TranscodeCompleteEvent'].nil?
            @TranscodeCompleteEvent = TranscodeTask2017.new.deserialize(params[TranscodeCompleteEvent])
          end
          unless params['ConcatCompleteEvent'].nil?
            @ConcatCompleteEvent = ConcatTask2017.new.deserialize(params[ConcatCompleteEvent])
          end
          unless params['ClipCompleteEvent'].nil?
            @ClipCompleteEvent = ClipTask2017.new.deserialize(params[ClipCompleteEvent])
          end
          unless params['CreateImageSpriteCompleteEvent'].nil?
            @CreateImageSpriteCompleteEvent = CreateImageSpriteTask2017.new.deserialize(params[CreateImageSpriteCompleteEvent])
          end
          unless params['SnapshotByTimeOffsetCompleteEvent'].nil?
            @SnapshotByTimeOffsetCompleteEvent = SnapshotByTimeOffsetTask2017.new.deserialize(params[SnapshotByTimeOffsetCompleteEvent])
          end
          unless params['ComposeMediaCompleteEvent'].nil?
            @ComposeMediaCompleteEvent = ComposeMediaTask.new.deserialize(params[ComposeMediaCompleteEvent])
          end
          unless params['WechatMiniProgramPublishCompleteEvent'].nil?
            @WechatMiniProgramPublishCompleteEvent = WechatMiniProgramPublishTask.new.deserialize(params[WechatMiniProgramPublishCompleteEvent])
          end
        end
      end

      # ExecuteFunction请求参数结构体
      class ExecuteFunctionRequest < TencentCloud::Common::AbstractModel
        # @param FunctionName: 调用后端接口名称。
        # @type FunctionName: String
        # @param FunctionArg: 接口参数，具体参数格式调用时与后端协调。
        # @type FunctionArg: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param ExtInfo: 保留字段，特殊用途时使用。
        # @type ExtInfo: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :FunctionName, :FunctionArg, :SessionContext, :SessionId, :ExtInfo, :SubAppId
        
        def initialize(functionname=nil, functionarg=nil, sessioncontext=nil, sessionid=nil, extinfo=nil, subappid=nil)
          @FunctionName = functionname
          @FunctionArg = functionarg
          @SessionContext = sessioncontext
          @SessionId = sessionid
          @ExtInfo = extinfo
          @SubAppId = subappid
        end

        def deserialize(params)
          @FunctionName = params['FunctionName']
          @FunctionArg = params['FunctionArg']
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
          @ExtInfo = params['ExtInfo']
          @SubAppId = params['SubAppId']
        end
      end

      # ExecuteFunction返回参数结构体
      class ExecuteFunctionResponse < TencentCloud::Common::AbstractModel
        # @param Result: 处理结果打包后的字符串，具体与后台一同协调。
        # @type Result: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Result, :RequestId
        
        def initialize(result=nil, requestid=nil)
          @Result = result
          @RequestId = requestid
        end

        def deserialize(params)
          @Result = params['Result']
          @RequestId = params['RequestId']
        end
      end

      # 人脸识别任务控制参数
      class FaceConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 人脸识别任务开关，可选值：
        # <li>ON：开启智能人脸识别任务；</li>
        # <li>OFF：关闭智能人脸识别任务。</li>
        # @type Switch: String
        # @param Score: 人脸识别过滤分数，当识别结果达到该分数以上，返回识别结果。默认 95 分。取值范围：0 - 100。
        # @type Score: Float
        # @param DefaultLibraryLabelSet: 默认人物过滤标签，指定需要返回的默认人物的标签。如果未填或者为空，则全部默认人物结果都返回。标签可选值：
        # <li>entertainment：娱乐明星；</li>
        # <li>sport：体育明星；</li>
        # <li>politician：政治人物。</li>
        # @type DefaultLibraryLabelSet: Array
        # @param UserDefineLibraryLabelSet: 用户自定义人物过滤标签，指定需要返回的用户自定义人物的标签。如果未填或者为空，则全部自定义人物结果都返回。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type UserDefineLibraryLabelSet: Array
        # @param FaceLibrary: 人物库选择，可选值：
        # <li>Default：使用默认人物库；</li>
        # <li>UserDefine：使用用户自定义人物库。</li>
        # <li>All：同时使用默认人物库和用户自定义人物库。</li>
        # 默认值：All，使用系统默认人物库及用户自定义人物库。
        # @type FaceLibrary: String

        attr_accessor :Switch, :Score, :DefaultLibraryLabelSet, :UserDefineLibraryLabelSet, :FaceLibrary
        
        def initialize(switch=nil, score=nil, defaultlibrarylabelset=nil, userdefinelibrarylabelset=nil, facelibrary=nil)
          @Switch = switch
          @Score = score
          @DefaultLibraryLabelSet = defaultlibrarylabelset
          @UserDefineLibraryLabelSet = userdefinelibrarylabelset
          @FaceLibrary = facelibrary
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Score = params['Score']
          @DefaultLibraryLabelSet = params['DefaultLibraryLabelSet']
          @UserDefineLibraryLabelSet = params['UserDefineLibraryLabelSet']
          @FaceLibrary = params['FaceLibrary']
        end
      end

      # 人脸识别任务控制参数
      class FaceConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 人脸识别任务开关，可选值：
        # <li>ON：开启智能人脸识别任务；</li>
        # <li>OFF：关闭智能人脸识别任务。</li>
        # @type Switch: String
        # @param Score: 人脸识别过滤分数，当识别结果达到该分数以上，返回识别结果。取值范围：0-100。
        # @type Score: Float
        # @param DefaultLibraryLabelSet: 默认人物过滤标签，指定需要返回的默认人物的标签。如果未填或者为空，则全部默认人物结果都返回。标签可选值：
        # <li>entertainment：娱乐明星；</li>
        # <li>sport：体育明星；</li>
        # <li>politician：政治人物。</li>
        # @type DefaultLibraryLabelSet: Array
        # @param UserDefineLibraryLabelSet: 用户自定义人物过滤标签，指定需要返回的用户自定义人物的标签。如果未填或者为空，则全部自定义人物结果都返回。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type UserDefineLibraryLabelSet: Array
        # @param FaceLibrary: 人物库选择，可选值：
        # <li>Default：使用默认人物库；</li>
        # <li>UserDefine：使用用户自定义人物库。</li>
        # <li>All：同时使用默认人物库和用户自定义人物库。</li>
        # @type FaceLibrary: String

        attr_accessor :Switch, :Score, :DefaultLibraryLabelSet, :UserDefineLibraryLabelSet, :FaceLibrary
        
        def initialize(switch=nil, score=nil, defaultlibrarylabelset=nil, userdefinelibrarylabelset=nil, facelibrary=nil)
          @Switch = switch
          @Score = score
          @DefaultLibraryLabelSet = defaultlibrarylabelset
          @UserDefineLibraryLabelSet = userdefinelibrarylabelset
          @FaceLibrary = facelibrary
        end

        def deserialize(params)
          @Switch = params['Switch']
          @Score = params['Score']
          @DefaultLibraryLabelSet = params['DefaultLibraryLabelSet']
          @UserDefineLibraryLabelSet = params['UserDefineLibraryLabelSet']
          @FaceLibrary = params['FaceLibrary']
        end
      end

      # 文件删除任务
      class FileDeleteTask < TencentCloud::Common::AbstractModel
        # @param FileIdSet: 删除文件 ID 列表。
        # @type FileIdSet: Array

        attr_accessor :FileIdSet
        
        def initialize(fileidset=nil)
          @FileIdSet = fileidset
        end

        def deserialize(params)
          @FileIdSet = params['FileIdSet']
        end
      end

      # 文件上传任务信息
      class FileUploadTask < TencentCloud::Common::AbstractModel
        # @param FileId: 文件唯一 ID。
        # @type FileId: String
        # @param MediaBasicInfo: 上传完成后生成的媒体文件基础信息。
        # @type MediaBasicInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaBasicInfo`
        # @param ProcedureTaskId: 若视频上传时指定了视频处理流程，则该字段为流程任务 ID。
        # @type ProcedureTaskId: String
        # @param MetaData: 元信息。包括大小、时长、视频流信息、音频流信息等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaData: :class:`Tencentcloud::Vod.v20180717.models.MediaMetaData`

        attr_accessor :FileId, :MediaBasicInfo, :ProcedureTaskId, :MetaData
        
        def initialize(fileid=nil, mediabasicinfo=nil, proceduretaskid=nil, metadata=nil)
          @FileId = fileid
          @MediaBasicInfo = mediabasicinfo
          @ProcedureTaskId = proceduretaskid
          @MetaData = metadata
        end

        def deserialize(params)
          @FileId = params['FileId']
          unless params['MediaBasicInfo'].nil?
            @MediaBasicInfo = MediaBasicInfo.new.deserialize(params[MediaBasicInfo])
          end
          @ProcedureTaskId = params['ProcedureTaskId']
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new.deserialize(params[MetaData])
          end
        end
      end

      # ForbidMediaDistribution请求参数结构体
      class ForbidMediaDistributionRequest < TencentCloud::Common::AbstractModel
        # @param FileIds: 媒体文件列表，每次最多可提交 20 条。
        # @type FileIds: Array
        # @param Operation: forbid：禁播，recover：解禁。
        # @type Operation: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID 。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :FileIds, :Operation, :SubAppId
        
        def initialize(fileids=nil, operation=nil, subappid=nil)
          @FileIds = fileids
          @Operation = operation
          @SubAppId = subappid
        end

        def deserialize(params)
          @FileIds = params['FileIds']
          @Operation = params['Operation']
          @SubAppId = params['SubAppId']
        end
      end

      # ForbidMediaDistribution返回参数结构体
      class ForbidMediaDistributionResponse < TencentCloud::Common::AbstractModel
        # @param NotExistFileIdSet: 不存在的文件 ID 列表。
        # @type NotExistFileIdSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :NotExistFileIdSet, :RequestId
        
        def initialize(notexistfileidset=nil, requestid=nil)
          @NotExistFileIdSet = notexistfileidset
          @RequestId = requestid
        end

        def deserialize(params)
          @NotExistFileIdSet = params['NotExistFileIdSet']
          @RequestId = params['RequestId']
        end
      end

      # 智能按帧标签任务控制参数
      class FrameTagConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 智能按帧标签任务开关，可选值：
        # <li>ON：开启智能按帧标签任务；</li>
        # <li>OFF：关闭智能按帧标签任务。</li>
        # @type Switch: String
        # @param ScreenshotInterval: 截帧间隔，单位为秒，当不填时，默认截帧间隔为 1 秒，最小值为 0.5 秒。
        # @type ScreenshotInterval: Float

        attr_accessor :Switch, :ScreenshotInterval
        
        def initialize(switch=nil, screenshotinterval=nil)
          @Switch = switch
          @ScreenshotInterval = screenshotinterval
        end

        def deserialize(params)
          @Switch = params['Switch']
          @ScreenshotInterval = params['ScreenshotInterval']
        end
      end

      # 智能按帧标签任务控制参数
      class FrameTagConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 智能按帧标签任务开关，可选值：
        # <li>ON：开启智能按帧标签任务；</li>
        # <li>OFF：关闭智能按帧标签任务。</li>
        # @type Switch: String
        # @param ScreenshotInterval: 截帧间隔，单位为秒，最小值为 0.5 秒。
        # @type ScreenshotInterval: Float

        attr_accessor :Switch, :ScreenshotInterval
        
        def initialize(switch=nil, screenshotinterval=nil)
          @Switch = switch
          @ScreenshotInterval = screenshotinterval
        end

        def deserialize(params)
          @Switch = params['Switch']
          @ScreenshotInterval = params['ScreenshotInterval']
        end
      end

      # 视频片头片尾识别任务控制参数
      class HeadTailConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 视频片头片尾识别任务开关，可选值：
        # <li>ON：开启智能视频片头片尾识别任务；</li>
        # <li>OFF：关闭智能视频片头片尾识别任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 视频片头片尾识别任务控制参数
      class HeadTailConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 视频片头片尾识别任务开关，可选值：
        # <li>ON：开启智能视频片头片尾识别任务；</li>
        # <li>OFF：关闭智能视频片头片尾识别任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 智能精彩集锦片段列表。
      class HighlightSegmentItem < TencentCloud::Common::AbstractModel
        # @param Confidence: 置信度。
        # @type Confidence: Float
        # @param StartTimeOffset: 片段起始时间偏移。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 片段结束时间偏移。
        # @type EndTimeOffset: Float

        attr_accessor :Confidence, :StartTimeOffset, :EndTimeOffset
        
        def initialize(confidence=nil, starttimeoffset=nil, endtimeoffset=nil)
          @Confidence = confidence
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
        end

        def deserialize(params)
          @Confidence = params['Confidence']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
        end
      end

      # 智能精彩片段任务控制参数
      class HighlightsConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 智能精彩片段任务开关，可选值：
        # <li>ON：开启智能精彩片段任务；</li>
        # <li>OFF：关闭智能精彩片段任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 智能精彩片段任务控制参数
      class HighlightsConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 智能精彩片段任务开关，可选值：
        # <li>ON：开启智能精彩片段任务；</li>
        # <li>OFF：关闭智能精彩片段任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 对视频截雪碧图任务输入参数类型
      class ImageSpriteTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 雪碧图模板 ID。
        # @type Definition: Integer

        attr_accessor :Definition
        
        def initialize(definition=nil)
          @Definition = definition
        end

        def deserialize(params)
          @Definition = params['Definition']
        end
      end

      # 雪碧图模板详情
      class ImageSpriteTemplate < TencentCloud::Common::AbstractModel
        # @param Definition: 雪碧图模板唯一标识。
        # @type Definition: Integer
        # @param Type: 模板类型，取值范围：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param Name: 雪碧图模板名称。
        # @type Name: String
        # @param Width: 雪碧图中小图的宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 雪碧图中小图的高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param SampleType: 采样类型。
        # @type SampleType: String
        # @param SampleInterval: 采样间隔。
        # @type SampleInterval: Integer
        # @param RowCount: 雪碧图中小图的行数。
        # @type RowCount: Integer
        # @param ColumnCount: 雪碧图中小图的列数。
        # @type ColumnCount: Integer
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # 默认值：black 。
        # @type FillType: String
        # @param Comment: 模板描述信息。
        # @type Comment: String

        attr_accessor :Definition, :Type, :Name, :Width, :Height, :ResolutionAdaptive, :SampleType, :SampleInterval, :RowCount, :ColumnCount, :CreateTime, :UpdateTime, :FillType, :Comment
        
        def initialize(definition=nil, type=nil, name=nil, width=nil, height=nil, resolutionadaptive=nil, sampletype=nil, sampleinterval=nil, rowcount=nil, columncount=nil, createtime=nil, updatetime=nil, filltype=nil, comment=nil)
          @Definition = definition
          @Type = type
          @Name = name
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @SampleType = sampletype
          @SampleInterval = sampleinterval
          @RowCount = rowcount
          @ColumnCount = columncount
          @CreateTime = createtime
          @UpdateTime = updatetime
          @FillType = filltype
          @Comment = comment
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Type = params['Type']
          @Name = params['Name']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @SampleType = params['SampleType']
          @SampleInterval = params['SampleInterval']
          @RowCount = params['RowCount']
          @ColumnCount = params['ColumnCount']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @FillType = params['FillType']
          @Comment = params['Comment']
        end
      end

      # 图像旋转、翻转等操作
      class ImageTransform < TencentCloud::Common::AbstractModel
        # @param Type: 类型，取值有：
        # <li> Rotate：图像旋转。</li>
        # <li> Flip：图像翻转。</li>
        # @type Type: String
        # @param RotateAngle: 图像以中心点为原点进行旋转的角度，取值范围0~360。当 Type = Rotate 时有效。
        # @type RotateAngle: Float
        # @param Flip: 图像翻转动作，取值有：
        # <li>Horizental：水平翻转，即左右镜像。</li>
        # <li>Vertical：垂直翻转，即上下镜像。</li>
        # 当 Type = Flip 时有效。
        # @type Flip: String

        attr_accessor :Type, :RotateAngle, :Flip
        
        def initialize(type=nil, rotateangle=nil, flip=nil)
          @Type = type
          @RotateAngle = rotateangle
          @Flip = flip
        end

        def deserialize(params)
          @Type = params['Type']
          @RotateAngle = params['RotateAngle']
          @Flip = params['Flip']
        end
      end

      # 图片水印模板输入参数
      class ImageWatermarkInput < TencentCloud::Common::AbstractModel
        # @param ImageContent: 水印图片 [Base64](https://tools.ietf.org/html/rfc4648) 编码后的字符串。支持 jpeg、png 图片格式。
        # @type ImageContent: String
        # @param Width: 水印的宽度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 Width 为视频宽度的百分比大小，如 10% 表示 Width 为视频宽度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 Width 单位为像素，如 100px 表示 Width 为 100 像素。</li>
        # 默认值：10%。
        # @type Width: String
        # @param Height: 水印的高度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 Height 为视频高度的百分比大小，如 10% 表示 Height 为视频高度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 Width 单位为像素，如 100px 表示 Width 为 100 像素。</li>
        # 默认值：0px，表示 Height 按照原始水印图片的宽高比缩放。
        # @type Height: String

        attr_accessor :ImageContent, :Width, :Height
        
        def initialize(imagecontent=nil, width=nil, height=nil)
          @ImageContent = imagecontent
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @ImageContent = params['ImageContent']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # 图片水印模板输入参数
      class ImageWatermarkInputForUpdate < TencentCloud::Common::AbstractModel
        # @param ImageContent: 水印图片 [Base64](https://tools.ietf.org/html/rfc4648) 编码后的字符串。支持 jpeg、png 图片格式。
        # @type ImageContent: String
        # @param Width: 水印的宽度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 Width 为视频宽度的百分比大小，如 10% 表示 Width 为视频宽度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 Width 单位为像素，如 100px 表示 Width 为 100 像素。</li>
        # @type Width: String
        # @param Height: 水印的高度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 Height 为视频高度的百分比大小，如 10% 表示 Height 为视频高度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 Width 单位为像素，如 100px 表示 Width 为 100 像素。</li>
        # 0px 表示 Height 按照 Width 对视频宽度的比例缩放。
        # @type Height: String

        attr_accessor :ImageContent, :Width, :Height
        
        def initialize(imagecontent=nil, width=nil, height=nil)
          @ImageContent = imagecontent
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @ImageContent = params['ImageContent']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # 图片水印模板
      class ImageWatermarkTemplate < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 水印图片地址。
        # @type ImageUrl: String
        # @param Width: 水印的宽度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 Width 为视频宽度的百分比大小，如 10% 表示 Width 为视频宽度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 Width 单位为像素，如 100px 表示 Width 为 100 像素。</li>
        # @type Width: String
        # @param Height: 水印的高度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 Height 为视频高度的百分比大小，如 10% 表示 Height 为视频高度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 Width 单位为像素，如 100px 表示 Width 为 100 像素；</li>
        # 0px：表示 Height 按照 Width 对视频宽度的比例缩放。
        # @type Height: String

        attr_accessor :ImageUrl, :Width, :Height
        
        def initialize(imageurl=nil, width=nil, height=nil)
          @ImageUrl = imageurl
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # LiveRealTimeClip请求参数结构体
      class LiveRealTimeClipRequest < TencentCloud::Common::AbstractModel
        # @param StreamId: 推流[直播码](https://cloud.tencent.com/document/product/267/5959)。
        # @type StreamId: String
        # @param StartTime: 流剪辑的开始时间，格式参照 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type StartTime: String
        # @param EndTime: 流剪辑的结束时间，格式参照 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type EndTime: String
        # @param IsPersistence: 是否固化。0 不固化，1 固化。默认不固化。
        # @type IsPersistence: Integer
        # @param ExpireTime: 剪辑固化后的视频存储过期时间。格式参照 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。填“9999-12-31T23:59:59Z”表示永不过期。过期后该媒体文件及其相关资源（转码结果、雪碧图等）将被永久删除。仅 IsPersistence 为 1 时有效，默认剪辑固化的视频永不过期。
        # @type ExpireTime: String
        # @param Procedure: 剪辑固化后的视频点播任务流处理，详见[上传指定任务流](https://cloud.tencent.com/document/product/266/9759)。仅 IsPersistence 为 1 时有效。
        # @type Procedure: String
        # @param MetaDataRequired: 是否需要返回剪辑后的视频元信息。0 不需要，1 需要。默认不需要。
        # @type MetaDataRequired: Integer
        # @param Host: 即时剪辑使用的域名，必须在直播侧开通时移。
        # @type Host: String
        # @param ExtInfo: 系统保留字段，请勿填写。
        # @type ExtInfo: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :StreamId, :StartTime, :EndTime, :IsPersistence, :ExpireTime, :Procedure, :MetaDataRequired, :Host, :ExtInfo, :SubAppId
        
        def initialize(streamid=nil, starttime=nil, endtime=nil, ispersistence=nil, expiretime=nil, procedure=nil, metadatarequired=nil, host=nil, extinfo=nil, subappid=nil)
          @StreamId = streamid
          @StartTime = starttime
          @EndTime = endtime
          @IsPersistence = ispersistence
          @ExpireTime = expiretime
          @Procedure = procedure
          @MetaDataRequired = metadatarequired
          @Host = host
          @ExtInfo = extinfo
          @SubAppId = subappid
        end

        def deserialize(params)
          @StreamId = params['StreamId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @IsPersistence = params['IsPersistence']
          @ExpireTime = params['ExpireTime']
          @Procedure = params['Procedure']
          @MetaDataRequired = params['MetaDataRequired']
          @Host = params['Host']
          @ExtInfo = params['ExtInfo']
          @SubAppId = params['SubAppId']
        end
      end

      # LiveRealTimeClip返回参数结构体
      class LiveRealTimeClipResponse < TencentCloud::Common::AbstractModel
        # @param Url: 剪辑后的视频播放 URL。
        # @type Url: String
        # @param FileId: 剪辑固化后的视频的媒体文件的唯一标识。
        # @type FileId: String
        # @param VodTaskId: 剪辑固化后的视频任务流 ID。
        # @type VodTaskId: String
        # @param MetaData: 剪辑后的视频元信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaData: :class:`Tencentcloud::Vod.v20180717.models.MediaMetaData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :FileId, :VodTaskId, :MetaData, :RequestId
        
        def initialize(url=nil, fileid=nil, vodtaskid=nil, metadata=nil, requestid=nil)
          @Url = url
          @FileId = fileid
          @VodTaskId = vodtaskid
          @MetaData = metadata
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          @FileId = params['FileId']
          @VodTaskId = params['VodTaskId']
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new.deserialize(params[MetaData])
          end
          @RequestId = params['RequestId']
        end
      end

      # 转自适应码流信息
      class MediaAdaptiveDynamicStreamingInfo < TencentCloud::Common::AbstractModel
        # @param AdaptiveDynamicStreamingSet: 转自适应码流信息数组。
        # @type AdaptiveDynamicStreamingSet: Array

        attr_accessor :AdaptiveDynamicStreamingSet
        
        def initialize(adaptivedynamicstreamingset=nil)
          @AdaptiveDynamicStreamingSet = adaptivedynamicstreamingset
        end

        def deserialize(params)
          @AdaptiveDynamicStreamingSet = params['AdaptiveDynamicStreamingSet']
        end
      end

      # 智能分类结果
      class MediaAiAnalysisClassificationItem < TencentCloud::Common::AbstractModel
        # @param Classification: 智能分类的类别名称。
        # @type Classification: String
        # @param Confidence: 智能分类的可信度，取值范围是 0 到 100。
        # @type Confidence: Float

        attr_accessor :Classification, :Confidence
        
        def initialize(classification=nil, confidence=nil)
          @Classification = classification
          @Confidence = confidence
        end

        def deserialize(params)
          @Classification = params['Classification']
          @Confidence = params['Confidence']
        end
      end

      # 智能封面信息
      class MediaAiAnalysisCoverItem < TencentCloud::Common::AbstractModel
        # @param CoverUrl: 智能封面地址。
        # @type CoverUrl: String
        # @param Confidence: 智能封面的可信度，取值范围是 0 到 100。
        # @type Confidence: Float

        attr_accessor :CoverUrl, :Confidence
        
        def initialize(coverurl=nil, confidence=nil)
          @CoverUrl = coverurl
          @Confidence = confidence
        end

        def deserialize(params)
          @CoverUrl = params['CoverUrl']
          @Confidence = params['Confidence']
        end
      end

      # 智能按帧标签结果信息
      class MediaAiAnalysisFrameTagItem < TencentCloud::Common::AbstractModel
        # @param Tag: 按帧标签名称。
        # @type Tag: String
        # @param Confidence: 按帧标签的可信度，取值范围是 0 到 100。
        # @type Confidence: Float

        attr_accessor :Tag, :Confidence
        
        def initialize(tag=nil, confidence=nil)
          @Tag = tag
          @Confidence = confidence
        end

        def deserialize(params)
          @Tag = params['Tag']
          @Confidence = params['Confidence']
        end
      end

      # 按帧标签片段列表
      class MediaAiAnalysisFrameTagSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 按帧标签起始的偏移时间。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 按帧标签结束的偏移时间。
        # @type EndTimeOffset: Float
        # @param TagSet: 时间片段内的标签列表。
        # @type TagSet: Array

        attr_accessor :StartTimeOffset, :EndTimeOffset, :TagSet
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, tagset=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @TagSet = tagset
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @TagSet = params['TagSet']
        end
      end

      # 智能精彩片段信息
      class MediaAiAnalysisHighlightItem < TencentCloud::Common::AbstractModel
        # @param HighlightUrl: 智能精彩集锦地址。
        # @type HighlightUrl: String
        # @param CovImgUrl: 智能精彩集锦封面地址。
        # @type CovImgUrl: String
        # @param Confidence: 智能精彩集锦的可信度，取值范围是 0 到 100。
        # @type Confidence: Float
        # @param Duration: 智能精彩集锦持续时间。
        # @type Duration: Float
        # @param SegmentSet: 智能精彩集锦子片段列表，精彩集锦片段由这些子片段拼接生成。
        # @type SegmentSet: Array

        attr_accessor :HighlightUrl, :CovImgUrl, :Confidence, :Duration, :SegmentSet
        
        def initialize(highlighturl=nil, covimgurl=nil, confidence=nil, duration=nil, segmentset=nil)
          @HighlightUrl = highlighturl
          @CovImgUrl = covimgurl
          @Confidence = confidence
          @Duration = duration
          @SegmentSet = segmentset
        end

        def deserialize(params)
          @HighlightUrl = params['HighlightUrl']
          @CovImgUrl = params['CovImgUrl']
          @Confidence = params['Confidence']
          @Duration = params['Duration']
          @SegmentSet = params['SegmentSet']
        end
      end

      # 智能标签结果信息
      class MediaAiAnalysisTagItem < TencentCloud::Common::AbstractModel
        # @param Tag: 标签名称。
        # @type Tag: String
        # @param Confidence: 标签的可信度，取值范围是 0 到 100。
        # @type Confidence: Float

        attr_accessor :Tag, :Confidence
        
        def initialize(tag=nil, confidence=nil)
          @Tag = tag
          @Confidence = confidence
        end

        def deserialize(params)
          @Tag = params['Tag']
          @Confidence = params['Confidence']
        end
      end

      # 点播文件视频转动图结果信息
      class MediaAnimatedGraphicsInfo < TencentCloud::Common::AbstractModel
        # @param AnimatedGraphicsSet: 视频转动图结果信息
        # @type AnimatedGraphicsSet: Array

        attr_accessor :AnimatedGraphicsSet
        
        def initialize(animatedgraphicsset=nil)
          @AnimatedGraphicsSet = animatedgraphicsset
        end

        def deserialize(params)
          @AnimatedGraphicsSet = params['AnimatedGraphicsSet']
        end
      end

      # 视频转动图结果信息
      class MediaAnimatedGraphicsItem < TencentCloud::Common::AbstractModel
        # @param Url: 转动图的文件地址。
        # @type Url: String
        # @param Definition: 转动图模板 ID，参见[转动图参数模板](https://cloud.tencent.com/document/product/266/33481#.3Cspan-id-.3D-.22zdt.22.3E.3C.2Fspan.3E.E8.BD.AC.E5.8A.A8.E5.9B.BE.E6.A8.A1.E6.9D.BF)。
        # @type Definition: Integer
        # @param Container: 动图格式，如 gif。
        # @type Container: String
        # @param Height: 动图的高度，单位：px。
        # @type Height: Integer
        # @param Width: 动图的宽度，单位：px。
        # @type Width: Integer
        # @param Bitrate: 动图码率，单位：bps。
        # @type Bitrate: Integer
        # @param Size: 动图大小，单位：字节。
        # @type Size: Integer
        # @param Md5: 动图的md5值。
        # @type Md5: String
        # @param StartTimeOffset: 动图在视频中的起始时间偏移，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 动图在视频中的结束时间偏移，单位：秒。
        # @type EndTimeOffset: Float

        attr_accessor :Url, :Definition, :Container, :Height, :Width, :Bitrate, :Size, :Md5, :StartTimeOffset, :EndTimeOffset
        
        def initialize(url=nil, definition=nil, container=nil, height=nil, width=nil, bitrate=nil, size=nil, md5=nil, starttimeoffset=nil, endtimeoffset=nil)
          @Url = url
          @Definition = definition
          @Container = container
          @Height = height
          @Width = width
          @Bitrate = bitrate
          @Size = size
          @Md5 = md5
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
        end

        def deserialize(params)
          @Url = params['Url']
          @Definition = params['Definition']
          @Container = params['Container']
          @Height = params['Height']
          @Width = params['Width']
          @Bitrate = params['Bitrate']
          @Size = params['Size']
          @Md5 = params['Md5']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
        end
      end

      # 点播文件音频流信息
      class MediaAudioStreamItem < TencentCloud::Common::AbstractModel
        # @param Bitrate: 音频流的码率，单位：bps。
        # @type Bitrate: Integer
        # @param SamplingRate: 音频流的采样率，单位：hz。
        # @type SamplingRate: Integer
        # @param Codec: 音频流的编码格式，例如 aac。
        # @type Codec: String

        attr_accessor :Bitrate, :SamplingRate, :Codec
        
        def initialize(bitrate=nil, samplingrate=nil, codec=nil)
          @Bitrate = bitrate
          @SamplingRate = samplingrate
          @Codec = codec
        end

        def deserialize(params)
          @Bitrate = params['Bitrate']
          @SamplingRate = params['SamplingRate']
          @Codec = params['Codec']
        end
      end

      # 点播媒体文件基础信息
      class MediaBasicInfo < TencentCloud::Common::AbstractModel
        # @param Name: 媒体文件名称。
        # @type Name: String
        # @param Description: 媒体文件描述。
        # @type Description: String
        # @param CreateTime: 媒体文件的创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 媒体文件的最近更新时间（如修改视频属性、发起视频处理等会触发更新媒体文件信息的操作），使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String
        # @param ExpireTime: 媒体文件的过期时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。过期后该媒体文件及其相关资源（转码结果、雪碧图等）将被永久删除。“9999-12-31T23:59:59Z”表示永不过期。
        # @type ExpireTime: String
        # @param ClassId: 媒体文件的分类 ID。
        # @type ClassId: Integer
        # @param ClassName: 媒体文件的分类名称。
        # @type ClassName: String
        # @param ClassPath: 媒体文件的分类路径，分类间以“-”分隔，如“新的一级分类 - 新的二级分类”。
        # @type ClassPath: String
        # @param CoverUrl: 媒体文件的封面图片地址。
        # @type CoverUrl: String
        # @param Type: 媒体文件的封装格式，例如 mp4、flv 等。
        # @type Type: String
        # @param MediaUrl: 原始媒体文件的 URL 地址。
        # @type MediaUrl: String
        # @param SourceInfo: 该媒体文件的来源信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SourceInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaSourceData`
        # @param StorageRegion: 媒体文件存储地区，如 ap-guangzhou，参见[地域列表](https://cloud.tencent.com/document/api/213/15692#.E5.9C.B0.E5.9F.9F.E5.88.97.E8.A1.A8)。
        # @type StorageRegion: String
        # @param TagSet: 媒体文件的标签信息。
        # @type TagSet: Array
        # @param Vid: 直播录制文件的唯一标识。
        # @type Vid: String
        # @param Category: 文件类型：
        # <li>Video: 视频文件</li>
        # <li>Audio: 音频文件</li>
        # <li>Image: 图片文件</li>
        # @type Category: String
        # @param Status: 文件状态：Normal：正常，Forbidden：封禁。

        # *注意：此字段暂不支持。
        # @type Status: String

        attr_accessor :Name, :Description, :CreateTime, :UpdateTime, :ExpireTime, :ClassId, :ClassName, :ClassPath, :CoverUrl, :Type, :MediaUrl, :SourceInfo, :StorageRegion, :TagSet, :Vid, :Category, :Status
        
        def initialize(name=nil, description=nil, createtime=nil, updatetime=nil, expiretime=nil, classid=nil, classname=nil, classpath=nil, coverurl=nil, type=nil, mediaurl=nil, sourceinfo=nil, storageregion=nil, tagset=nil, vid=nil, category=nil, status=nil)
          @Name = name
          @Description = description
          @CreateTime = createtime
          @UpdateTime = updatetime
          @ExpireTime = expiretime
          @ClassId = classid
          @ClassName = classname
          @ClassPath = classpath
          @CoverUrl = coverurl
          @Type = type
          @MediaUrl = mediaurl
          @SourceInfo = sourceinfo
          @StorageRegion = storageregion
          @TagSet = tagset
          @Vid = vid
          @Category = category
          @Status = status
        end

        def deserialize(params)
          @Name = params['Name']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @ExpireTime = params['ExpireTime']
          @ClassId = params['ClassId']
          @ClassName = params['ClassName']
          @ClassPath = params['ClassPath']
          @CoverUrl = params['CoverUrl']
          @Type = params['Type']
          @MediaUrl = params['MediaUrl']
          unless params['SourceInfo'].nil?
            @SourceInfo = MediaSourceData.new.deserialize(params[SourceInfo])
          end
          @StorageRegion = params['StorageRegion']
          @TagSet = params['TagSet']
          @Vid = params['Vid']
          @Category = params['Category']
          @Status = params['Status']
        end
      end

      # 分类信息描述
      class MediaClassInfo < TencentCloud::Common::AbstractModel
        # @param ClassId: 分类 ID
        # @type ClassId: Integer
        # @param ParentId: 父类 ID，一级分类的父类 ID 为 -1。
        # @type ParentId: Integer
        # @param ClassName: 分类名称
        # @type ClassName: String
        # @param Level: 分类级别，一级分类为 0，最大值为 3，即最多允许 4 级分类层次。
        # @type Level: Integer
        # @param SubClassIdSet: 当前分类的第一级子类 ID 集合
        # @type SubClassIdSet: Array

        attr_accessor :ClassId, :ParentId, :ClassName, :Level, :SubClassIdSet
        
        def initialize(classid=nil, parentid=nil, classname=nil, level=nil, subclassidset=nil)
          @ClassId = classid
          @ParentId = parentid
          @ClassName = classname
          @Level = level
          @SubClassIdSet = subclassidset
        end

        def deserialize(params)
          @ClassId = params['ClassId']
          @ParentId = params['ParentId']
          @ClassName = params['ClassName']
          @Level = params['Level']
          @SubClassIdSet = params['SubClassIdSet']
        end
      end

      # 内容审核 Asr 文字审核嫌疑片段
      class MediaContentReviewAsrTextSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 嫌疑片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 嫌疑片段结束的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 嫌疑片段置信度。
        # @type Confidence: Float
        # @param Suggestion: 嫌疑片段审核结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param KeywordSet: 嫌疑关键词列表。
        # @type KeywordSet: Array

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence, :Suggestion, :KeywordSet
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil, suggestion=nil, keywordset=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
          @Suggestion = suggestion
          @KeywordSet = keywordset
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @KeywordSet = params['KeywordSet']
        end
      end

      # 内容审核 Ocr 文字审核嫌疑片段
      class MediaContentReviewOcrTextSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 嫌疑片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 嫌疑片段结束的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 嫌疑片段置信度。
        # @type Confidence: Float
        # @param Suggestion: 嫌疑片段审核结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param KeywordSet: 嫌疑关键词列表。
        # @type KeywordSet: Array
        # @param AreaCoordSet: 嫌疑文字出现的区域坐标 (像素级)，[x1, y1, x2, y2]，即左上角坐标、右下角坐标。
        # @type AreaCoordSet: Array
        # @param Url: 嫌疑图片 URL （图片不会永久存储，到达
        # PicUrlExpireTime 时间点后图片将被删除）。
        # @type Url: String
        # @param PicUrlExpireTime: 嫌疑图片 URL 失效时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type PicUrlExpireTime: String

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence, :Suggestion, :KeywordSet, :AreaCoordSet, :Url, :PicUrlExpireTime
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil, suggestion=nil, keywordset=nil, areacoordset=nil, url=nil, picurlexpiretime=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
          @Suggestion = suggestion
          @KeywordSet = keywordset
          @AreaCoordSet = areacoordset
          @Url = url
          @PicUrlExpireTime = picurlexpiretime
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @KeywordSet = params['KeywordSet']
          @AreaCoordSet = params['AreaCoordSet']
          @Url = params['Url']
          @PicUrlExpireTime = params['PicUrlExpireTime']
        end
      end

      # 内容审核涉政嫌疑片段
      class MediaContentReviewPoliticalSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 嫌疑片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 嫌疑片段结束的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 嫌疑片段涉政分数。
        # @type Confidence: Float
        # @param Suggestion: 嫌疑片段鉴政结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param Name: 涉政人物、违规图标名字。
        # @type Name: String
        # @param Label: 嫌疑片段鉴政结果标签。内容审核模板[画面鉴政任务控制参数](https://cloud.tencent.com/document/api/266/31773#PoliticalImgReviewTemplateInfo)里 LabelSet 参数与此参数取值范围的对应关系：
        # violation_photo：
        # <li>violation_photo：违规图标。</li>
        # politician：
        # <li>nation_politician：国家领导人；</li>
        # <li>province_politician: 省部级领导人；</li>
        # <li>bureau_politician：厅局级领导人；</li>
        # <li>county_politician：县处级领导人；</li>
        # <li>rural_politician：乡科级领导人；</li>
        # <li>sensitive_politician：敏感政治人物。</li>
        # entertainment：
        # <li>sensitive_entertainment：敏感娱乐人物。</li>
        # sport：
        # <li>sensitive_sport：敏感体育人物。</li>
        # entrepreneur：
        # <li>sensitive_entrepreneur：敏感商业人物。</li>
        # scholar：
        # <li>sensitive_scholar：敏感教育学者。</li>
        # celebrity：
        # <li>sensitive_celebrity：敏感知名人物。</li>
        # military：
        # <li>sensitive_military：敏感军事人物。</li>
        # @type Label: String
        # @param Url: 嫌疑图片 URL （图片不会永久存储，到达
        #  PicUrlExpireTime 时间点后图片将被删除）。
        # @type Url: String
        # @param AreaCoordSet: 涉政人物、违规图标出现的区域坐标 (像素级)，[x1, y1, x2, y2]，即左上角坐标、右下角坐标。
        # @type AreaCoordSet: Array
        # @param PicUrlExpireTimeStamp: 该字段已废弃，请使用 PicUrlExpireTime。
        # @type PicUrlExpireTimeStamp: Integer
        # @param PicUrlExpireTime: 嫌疑图片 URL 失效时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type PicUrlExpireTime: String

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence, :Suggestion, :Name, :Label, :Url, :AreaCoordSet, :PicUrlExpireTimeStamp, :PicUrlExpireTime
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil, suggestion=nil, name=nil, label=nil, url=nil, areacoordset=nil, picurlexpiretimestamp=nil, picurlexpiretime=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
          @Suggestion = suggestion
          @Name = name
          @Label = label
          @Url = url
          @AreaCoordSet = areacoordset
          @PicUrlExpireTimeStamp = picurlexpiretimestamp
          @PicUrlExpireTime = picurlexpiretime
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
          @Suggestion = params['Suggestion']
          @Name = params['Name']
          @Label = params['Label']
          @Url = params['Url']
          @AreaCoordSet = params['AreaCoordSet']
          @PicUrlExpireTimeStamp = params['PicUrlExpireTimeStamp']
          @PicUrlExpireTime = params['PicUrlExpireTime']
        end
      end

      # 内容审核涉黄/暴恐嫌疑片段
      class MediaContentReviewSegmentItem < TencentCloud::Common::AbstractModel
        # @param StartTimeOffset: 嫌疑片段起始的偏移时间，单位：秒。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 嫌疑片段结束的偏移时间，单位：秒。
        # @type EndTimeOffset: Float
        # @param Confidence: 嫌疑片段涉黄分数。
        # @type Confidence: Float
        # @param Label: 嫌疑片段鉴黄结果标签。
        # @type Label: String
        # @param Suggestion: 嫌疑片段鉴黄结果建议，取值范围：
        # <li>pass。</li>
        # <li>review。</li>
        # <li>block。</li>
        # @type Suggestion: String
        # @param Url: 嫌疑图片 URL （图片不会永久存储，到达
        #  PicUrlExpireTime 时间点后图片将被删除）。
        # @type Url: String
        # @param PicUrlExpireTimeStamp: 该字段已废弃，请使用 PicUrlExpireTime。
        # @type PicUrlExpireTimeStamp: Integer
        # @param PicUrlExpireTime: 嫌疑图片 URL 失效时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type PicUrlExpireTime: String

        attr_accessor :StartTimeOffset, :EndTimeOffset, :Confidence, :Label, :Suggestion, :Url, :PicUrlExpireTimeStamp, :PicUrlExpireTime
        
        def initialize(starttimeoffset=nil, endtimeoffset=nil, confidence=nil, label=nil, suggestion=nil, url=nil, picurlexpiretimestamp=nil, picurlexpiretime=nil)
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @Confidence = confidence
          @Label = label
          @Suggestion = suggestion
          @Url = url
          @PicUrlExpireTimeStamp = picurlexpiretimestamp
          @PicUrlExpireTime = picurlexpiretime
        end

        def deserialize(params)
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @Confidence = params['Confidence']
          @Label = params['Label']
          @Suggestion = params['Suggestion']
          @Url = params['Url']
          @PicUrlExpireTimeStamp = params['PicUrlExpireTimeStamp']
          @PicUrlExpireTime = params['PicUrlExpireTime']
        end
      end

      # 指定删除点播视频时的删除内容
      class MediaDeleteItem < TencentCloud::Common::AbstractModel
        # @param Type: 所指定的删除部分。如果未填写该字段则参数无效。可选值有：
        # <li>TranscodeFiles（删除转码文件）。</li>
        # <li>WechatPublishFiles（删除微信发布文件）。</li>
        # @type Type: String
        # @param Definition: 删除由Type参数指定的种类下的视频模板号，模板定义参见[转码模板](https://cloud.tencent.com/document/product/266/33478#.3Cspan-id-.3D-.22zm.22-.3E.3C.2Fspan.3E.E8.BD.AC.E7.A0.81.E6.A8.A1.E6.9D.BF)。
        # 默认值为0，表示删除参数Type指定种类下所有的视频。
        # @type Definition: Integer

        attr_accessor :Type, :Definition
        
        def initialize(type=nil, definition=nil)
          @Type = type
          @Definition = definition
        end

        def deserialize(params)
          @Type = params['Type']
          @Definition = params['Definition']
        end
      end

      # 点播文件雪碧图信息
      class MediaImageSpriteInfo < TencentCloud::Common::AbstractModel
        # @param ImageSpriteSet: 特定规格的雪碧图信息集合，每个元素代表一套相同规格的雪碧图。
        # @type ImageSpriteSet: Array

        attr_accessor :ImageSpriteSet
        
        def initialize(imagespriteset=nil)
          @ImageSpriteSet = imagespriteset
        end

        def deserialize(params)
          @ImageSpriteSet = params['ImageSpriteSet']
        end
      end

      # 雪碧图信息
      class MediaImageSpriteItem < TencentCloud::Common::AbstractModel
        # @param Definition: 雪碧图规格，参见[雪碧图参数模板](https://cloud.tencent.com/document/product/266/33480#.E9.9B.AA.E7.A2.A7.E5.9B.BE.E6.A8.A1.E6.9D.BF)。
        # @type Definition: Integer
        # @param Height: 雪碧图小图的高度。
        # @type Height: Integer
        # @param Width: 雪碧图小图的宽度。
        # @type Width: Integer
        # @param TotalCount: 每一张雪碧图大图里小图的数量。
        # @type TotalCount: Integer
        # @param ImageUrlSet: 每一张雪碧图大图的地址。
        # @type ImageUrlSet: Array
        # @param WebVttUrl: 雪碧图子图位置与时间关系的 WebVtt 文件地址。WebVtt 文件表明了各个雪碧图小图对应的时间点，以及在雪碧大图里的坐标位置，一般被播放器用于实现预览。
        # @type WebVttUrl: String

        attr_accessor :Definition, :Height, :Width, :TotalCount, :ImageUrlSet, :WebVttUrl
        
        def initialize(definition=nil, height=nil, width=nil, totalcount=nil, imageurlset=nil, webvtturl=nil)
          @Definition = definition
          @Height = height
          @Width = width
          @TotalCount = totalcount
          @ImageUrlSet = imageurlset
          @WebVttUrl = webvtturl
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Height = params['Height']
          @Width = params['Width']
          @TotalCount = params['TotalCount']
          @ImageUrlSet = params['ImageUrlSet']
          @WebVttUrl = params['WebVttUrl']
        end
      end

      # 点播文件信息
      class MediaInfo < TencentCloud::Common::AbstractModel
        # @param BasicInfo: 基础信息。包括视频名称、分类、播放地址、封面图片等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BasicInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaBasicInfo`
        # @param MetaData: 元信息。包括大小、时长、视频流信息、音频流信息等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaData: :class:`Tencentcloud::Vod.v20180717.models.MediaMetaData`
        # @param TranscodeInfo: 转码结果信息。包括该视频转码生成的各种码率的视频的地址、规格、码率、分辨率等。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranscodeInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaTranscodeInfo`
        # @param AnimatedGraphicsInfo: 转动图结果信息。对视频转动图（如 gif）后，动图相关信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnimatedGraphicsInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaAnimatedGraphicsInfo`
        # @param SampleSnapshotInfo: 采样截图信息。对视频采样截图后，相关截图信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SampleSnapshotInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaSampleSnapshotInfo`
        # @param ImageSpriteInfo: 雪碧图信息。对视频截取雪碧图之后，雪碧的相关信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageSpriteInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaImageSpriteInfo`
        # @param SnapshotByTimeOffsetInfo: 指定时间点截图信息。对视频依照指定时间点截图后，各个截图的信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotByTimeOffsetInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaSnapshotByTimeOffsetInfo`
        # @param KeyFrameDescInfo: 视频打点信息。对视频设置的各个打点信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type KeyFrameDescInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaKeyFrameDescInfo`
        # @param AdaptiveDynamicStreamingInfo: 转自适应码流信息。包括规格、加密类型、打包格式等相关信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdaptiveDynamicStreamingInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaAdaptiveDynamicStreamingInfo`
        # @param MiniProgramReviewInfo: 小程序审核信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MiniProgramReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaMiniProgramReviewInfo`
        # @param FileId: 媒体文件唯一标识 ID。
        # @type FileId: String

        attr_accessor :BasicInfo, :MetaData, :TranscodeInfo, :AnimatedGraphicsInfo, :SampleSnapshotInfo, :ImageSpriteInfo, :SnapshotByTimeOffsetInfo, :KeyFrameDescInfo, :AdaptiveDynamicStreamingInfo, :MiniProgramReviewInfo, :FileId
        
        def initialize(basicinfo=nil, metadata=nil, transcodeinfo=nil, animatedgraphicsinfo=nil, samplesnapshotinfo=nil, imagespriteinfo=nil, snapshotbytimeoffsetinfo=nil, keyframedescinfo=nil, adaptivedynamicstreaminginfo=nil, miniprogramreviewinfo=nil, fileid=nil)
          @BasicInfo = basicinfo
          @MetaData = metadata
          @TranscodeInfo = transcodeinfo
          @AnimatedGraphicsInfo = animatedgraphicsinfo
          @SampleSnapshotInfo = samplesnapshotinfo
          @ImageSpriteInfo = imagespriteinfo
          @SnapshotByTimeOffsetInfo = snapshotbytimeoffsetinfo
          @KeyFrameDescInfo = keyframedescinfo
          @AdaptiveDynamicStreamingInfo = adaptivedynamicstreaminginfo
          @MiniProgramReviewInfo = miniprogramreviewinfo
          @FileId = fileid
        end

        def deserialize(params)
          unless params['BasicInfo'].nil?
            @BasicInfo = MediaBasicInfo.new.deserialize(params[BasicInfo])
          end
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new.deserialize(params[MetaData])
          end
          unless params['TranscodeInfo'].nil?
            @TranscodeInfo = MediaTranscodeInfo.new.deserialize(params[TranscodeInfo])
          end
          unless params['AnimatedGraphicsInfo'].nil?
            @AnimatedGraphicsInfo = MediaAnimatedGraphicsInfo.new.deserialize(params[AnimatedGraphicsInfo])
          end
          unless params['SampleSnapshotInfo'].nil?
            @SampleSnapshotInfo = MediaSampleSnapshotInfo.new.deserialize(params[SampleSnapshotInfo])
          end
          unless params['ImageSpriteInfo'].nil?
            @ImageSpriteInfo = MediaImageSpriteInfo.new.deserialize(params[ImageSpriteInfo])
          end
          unless params['SnapshotByTimeOffsetInfo'].nil?
            @SnapshotByTimeOffsetInfo = MediaSnapshotByTimeOffsetInfo.new.deserialize(params[SnapshotByTimeOffsetInfo])
          end
          unless params['KeyFrameDescInfo'].nil?
            @KeyFrameDescInfo = MediaKeyFrameDescInfo.new.deserialize(params[KeyFrameDescInfo])
          end
          unless params['AdaptiveDynamicStreamingInfo'].nil?
            @AdaptiveDynamicStreamingInfo = MediaAdaptiveDynamicStreamingInfo.new.deserialize(params[AdaptiveDynamicStreamingInfo])
          end
          unless params['MiniProgramReviewInfo'].nil?
            @MiniProgramReviewInfo = MediaMiniProgramReviewInfo.new.deserialize(params[MiniProgramReviewInfo])
          end
          @FileId = params['FileId']
        end
      end

      # 要处理的源视频信息，视频名称、视频自定义 ID。
      class MediaInputInfo < TencentCloud::Common::AbstractModel
        # @param Url: 视频 URL。
        # @type Url: String
        # @param Name: 视频名称。
        # @type Name: String
        # @param Id: 视频自定义 ID。
        # @type Id: String

        attr_accessor :Url, :Name, :Id
        
        def initialize(url=nil, name=nil, id=nil)
          @Url = url
          @Name = name
          @Id = id
        end

        def deserialize(params)
          @Url = params['Url']
          @Name = params['Name']
          @Id = params['Id']
        end
      end

      # 视频打点信息
      class MediaKeyFrameDescInfo < TencentCloud::Common::AbstractModel
        # @param KeyFrameDescSet: 视频打点信息数组。
        # @type KeyFrameDescSet: Array

        attr_accessor :KeyFrameDescSet
        
        def initialize(keyframedescset=nil)
          @KeyFrameDescSet = keyframedescset
        end

        def deserialize(params)
          @KeyFrameDescSet = params['KeyFrameDescSet']
        end
      end

      # 视频打点信息
      class MediaKeyFrameDescItem < TencentCloud::Common::AbstractModel
        # @param TimeOffset: 打点的视频偏移时间，单位：秒。
        # @type TimeOffset: Float
        # @param Content: 打点的内容字符串，限制 1-128 个字符。
        # @type Content: String

        attr_accessor :TimeOffset, :Content
        
        def initialize(timeoffset=nil, content=nil)
          @TimeOffset = timeoffset
          @Content = content
        end

        def deserialize(params)
          @TimeOffset = params['TimeOffset']
          @Content = params['Content']
        end
      end

      # 点播媒体文件元信息
      class MediaMetaData < TencentCloud::Common::AbstractModel
        # @param Size: 上传的媒体文件大小（视频为 HLS 时，大小是 m3u8 和 ts 文件大小的总和），单位：字节。
        # @type Size: Integer
        # @param Container: 容器类型，例如 m4a，mp4 等。
        # @type Container: String
        # @param Bitrate: 视频流码率平均值与音频流码率平均值之和，单位：bps。
        # @type Bitrate: Integer
        # @param Height: 视频流高度的最大值，单位：px。
        # @type Height: Integer
        # @param Width: 视频流宽度的最大值，单位：px。
        # @type Width: Integer
        # @param Duration: 视频时长，单位：秒。
        # @type Duration: Float
        # @param Rotate: 视频拍摄时的选择角度，单位：度。
        # @type Rotate: Integer
        # @param VideoStreamSet: 视频流信息。
        # @type VideoStreamSet: Array
        # @param AudioStreamSet: 音频流信息。
        # @type AudioStreamSet: Array
        # @param VideoDuration: 视频时长，单位：秒。
        # @type VideoDuration: Float
        # @param AudioDuration: 音频时长，单位：秒。
        # @type AudioDuration: Float

        attr_accessor :Size, :Container, :Bitrate, :Height, :Width, :Duration, :Rotate, :VideoStreamSet, :AudioStreamSet, :VideoDuration, :AudioDuration
        
        def initialize(size=nil, container=nil, bitrate=nil, height=nil, width=nil, duration=nil, rotate=nil, videostreamset=nil, audiostreamset=nil, videoduration=nil, audioduration=nil)
          @Size = size
          @Container = container
          @Bitrate = bitrate
          @Height = height
          @Width = width
          @Duration = duration
          @Rotate = rotate
          @VideoStreamSet = videostreamset
          @AudioStreamSet = audiostreamset
          @VideoDuration = videoduration
          @AudioDuration = audioduration
        end

        def deserialize(params)
          @Size = params['Size']
          @Container = params['Container']
          @Bitrate = params['Bitrate']
          @Height = params['Height']
          @Width = params['Width']
          @Duration = params['Duration']
          @Rotate = params['Rotate']
          @VideoStreamSet = params['VideoStreamSet']
          @AudioStreamSet = params['AudioStreamSet']
          @VideoDuration = params['VideoDuration']
          @AudioDuration = params['AudioDuration']
        end
      end

      # 小程序审核概要元信息
      class MediaMiniProgramReviewElem < TencentCloud::Common::AbstractModel
        # @param Type: 审核类型。
        # <li>Porn：画面涉黄，</li>
        # <li>Porn.Ocr：文字涉黄，</li>
        # <li>Porn.Asr：声音涉黄，</li>
        # <li>Terrorism：画面涉暴恐，</li>
        # <li>Political：画面涉政，</li>
        # <li>Political.Ocr：文字涉政，</li>
        # <li>Political.Asr：声音涉政。</li>
        # @type Type: String
        # @param Suggestion: 审核意见。
        # <li>pass：确认正常，</li>
        # <li>block：确认违规，</li>
        # <li>review：疑似违规。</li>
        # @type Suggestion: String
        # @param Confidence: 审核结果置信度。取值 0~100。
        # @type Confidence: Float

        attr_accessor :Type, :Suggestion, :Confidence
        
        def initialize(type=nil, suggestion=nil, confidence=nil)
          @Type = type
          @Suggestion = suggestion
          @Confidence = confidence
        end

        def deserialize(params)
          @Type = params['Type']
          @Suggestion = params['Suggestion']
          @Confidence = params['Confidence']
        end
      end

      # 小程序审核信息
      class MediaMiniProgramReviewInfo < TencentCloud::Common::AbstractModel
        # @param MiniProgramReviewList: 审核信息列表。
        # @type MiniProgramReviewList: Array

        attr_accessor :MiniProgramReviewList
        
        def initialize(miniprogramreviewlist=nil)
          @MiniProgramReviewList = miniprogramreviewlist
        end

        def deserialize(params)
          @MiniProgramReviewList = params['MiniProgramReviewList']
        end
      end

      # 小程序审核信息单元
      class MediaMiniProgramReviewInfoItem < TencentCloud::Common::AbstractModel
        # @param Definition: 模板id。小程序视频发布的视频所对应的转码模板ID，为0代表原始视频。
        # @type Definition: Integer
        # @param MetaData: 视频元信息。
        # @type MetaData: :class:`Tencentcloud::Vod.v20180717.models.MediaMetaData`
        # @param Url: 小程序审核视频播放地址。
        # @type Url: String
        # @param ReviewResult: 小程序视频发布状态：
        # <li>Pass：成功。</li>
        # <li>Rejected：未通过。</li>
        # @type ReviewResult: String
        # @param ReviewSummary: 小程序审核元素。
        # @type ReviewSummary: Array

        attr_accessor :Definition, :MetaData, :Url, :ReviewResult, :ReviewSummary
        
        def initialize(definition=nil, metadata=nil, url=nil, reviewresult=nil, reviewsummary=nil)
          @Definition = definition
          @MetaData = metadata
          @Url = url
          @ReviewResult = reviewresult
          @ReviewSummary = reviewsummary
        end

        def deserialize(params)
          @Definition = params['Definition']
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new.deserialize(params[MetaData])
          end
          @Url = params['Url']
          @ReviewResult = params['ReviewResult']
          @ReviewSummary = params['ReviewSummary']
        end
      end

      # 视频处理输出文件信息参数。
      class MediaOutputInfo < TencentCloud::Common::AbstractModel
        # @param Region: 输出文件 Bucket 所属地域，如 ap-guangzhou  。
        # @type Region: String
        # @param Bucket: 输出文件 Bucket 。
        # @type Bucket: String
        # @param Dir: 输出文件目录，目录名必须以 "/" 结尾。
        # @type Dir: String

        attr_accessor :Region, :Bucket, :Dir
        
        def initialize(region=nil, bucket=nil, dir=nil)
          @Region = region
          @Bucket = bucket
          @Dir = dir
        end

        def deserialize(params)
          @Region = params['Region']
          @Bucket = params['Bucket']
          @Dir = params['Dir']
        end
      end

      # 对视频转自适应码流任务结果类型
      class MediaProcessTaskAdaptiveDynamicStreamingResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 对视频转自适应码流任务的输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AdaptiveDynamicStreamingTaskInput`
        # @param Output: 对视频转自适应码流任务的输出。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.AdaptiveDynamicStreamingInfoItem`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AdaptiveDynamicStreamingTaskInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = AdaptiveDynamicStreamingInfoItem.new.deserialize(params[Output])
          end
        end
      end

      # 转动图任务结果类型
      class MediaProcessTaskAnimatedGraphicResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 转动图任务的输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.AnimatedGraphicTaskInput`
        # @param Output: 转动图任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.MediaAnimatedGraphicsItem`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = AnimatedGraphicTaskInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = MediaAnimatedGraphicsItem.new.deserialize(params[Output])
          end
        end
      end

      # 对视频截图做封面任务结果类型
      class MediaProcessTaskCoverBySnapshotResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 对视频截图做封面任务的输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.CoverBySnapshotTaskInput`
        # @param Output: 对视频截图做封面任务的输出。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.CoverBySnapshotTaskOutput`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = CoverBySnapshotTaskInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = CoverBySnapshotTaskOutput.new.deserialize(params[Output])
          end
        end
      end

      # 对视频截雪碧图任务结果类型
      class MediaProcessTaskImageSpriteResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 对视频截雪碧图任务的输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.ImageSpriteTaskInput`
        # @param Output: 对视频截雪碧图任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.MediaImageSpriteItem`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = ImageSpriteTaskInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = MediaImageSpriteItem.new.deserialize(params[Output])
          end
        end
      end

      # 视频处理任务类型
      class MediaProcessTaskInput < TencentCloud::Common::AbstractModel
        # @param TranscodeTaskSet: 视频转码任务列表。
        # @type TranscodeTaskSet: Array
        # @param AnimatedGraphicTaskSet: 视频转动图任务列表。
        # @type AnimatedGraphicTaskSet: Array
        # @param SnapshotByTimeOffsetTaskSet: 对视频按时间点截图任务列表。
        # @type SnapshotByTimeOffsetTaskSet: Array
        # @param SampleSnapshotTaskSet: 对视频采样截图任务列表。
        # @type SampleSnapshotTaskSet: Array
        # @param ImageSpriteTaskSet: 对视频截雪碧图任务列表。
        # @type ImageSpriteTaskSet: Array
        # @param CoverBySnapshotTaskSet: 对视频截图做封面任务列表。
        # @type CoverBySnapshotTaskSet: Array
        # @param AdaptiveDynamicStreamingTaskSet: 对视频转自适应码流任务列表。
        # @type AdaptiveDynamicStreamingTaskSet: Array

        attr_accessor :TranscodeTaskSet, :AnimatedGraphicTaskSet, :SnapshotByTimeOffsetTaskSet, :SampleSnapshotTaskSet, :ImageSpriteTaskSet, :CoverBySnapshotTaskSet, :AdaptiveDynamicStreamingTaskSet
        
        def initialize(transcodetaskset=nil, animatedgraphictaskset=nil, snapshotbytimeoffsettaskset=nil, samplesnapshottaskset=nil, imagespritetaskset=nil, coverbysnapshottaskset=nil, adaptivedynamicstreamingtaskset=nil)
          @TranscodeTaskSet = transcodetaskset
          @AnimatedGraphicTaskSet = animatedgraphictaskset
          @SnapshotByTimeOffsetTaskSet = snapshotbytimeoffsettaskset
          @SampleSnapshotTaskSet = samplesnapshottaskset
          @ImageSpriteTaskSet = imagespritetaskset
          @CoverBySnapshotTaskSet = coverbysnapshottaskset
          @AdaptiveDynamicStreamingTaskSet = adaptivedynamicstreamingtaskset
        end

        def deserialize(params)
          @TranscodeTaskSet = params['TranscodeTaskSet']
          @AnimatedGraphicTaskSet = params['AnimatedGraphicTaskSet']
          @SnapshotByTimeOffsetTaskSet = params['SnapshotByTimeOffsetTaskSet']
          @SampleSnapshotTaskSet = params['SampleSnapshotTaskSet']
          @ImageSpriteTaskSet = params['ImageSpriteTaskSet']
          @CoverBySnapshotTaskSet = params['CoverBySnapshotTaskSet']
          @AdaptiveDynamicStreamingTaskSet = params['AdaptiveDynamicStreamingTaskSet']
        end
      end

      # 任务查询结果类型
      class MediaProcessTaskResult < TencentCloud::Common::AbstractModel
        # @param Type: 任务的类型，可以取的值有：
        # <li>Transcode：转码</li>
        # <li>AnimatedGraphics：转动图</li>
        # <li>SnapshotByTimeOffset：时间点截图</li>
        # <li>SampleSnapshot：采样截图</li>
        # <li>ImageSprites：雪碧图</li>
        # <li>CoverBySnapshot：截图做封面</li>
        # <li>AdaptiveDynamicStreaming：自适应码流</li>
        # @type Type: String
        # @param TranscodeTask: 视频转码任务的查询结果，当任务类型为 Transcode 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TranscodeTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskTranscodeResult`
        # @param AnimatedGraphicTask: 视频转动图任务的查询结果，当任务类型为 AnimatedGraphics 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AnimatedGraphicTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskAnimatedGraphicResult`
        # @param SnapshotByTimeOffsetTask: 对视频按时间点截图任务的查询结果，当任务类型为 SnapshotByTimeOffset 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SnapshotByTimeOffsetTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskSnapshotByTimeOffsetResult`
        # @param SampleSnapshotTask: 对视频采样截图任务的查询结果，当任务类型为 SampleSnapshot 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SampleSnapshotTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskSampleSnapshotResult`
        # @param ImageSpriteTask: 对视频截雪碧图任务的查询结果，当任务类型为 ImageSprite 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageSpriteTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskImageSpriteResult`
        # @param CoverBySnapshotTask: 对视频截图做封面任务的查询结果，当任务类型为 CoverBySnapshot 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CoverBySnapshotTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskCoverBySnapshotResult`
        # @param AdaptiveDynamicStreamingTask: 对视频转自适应码流任务的查询结果，当任务类型为 AdaptiveDynamicStreaming 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AdaptiveDynamicStreamingTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskAdaptiveDynamicStreamingResult`

        attr_accessor :Type, :TranscodeTask, :AnimatedGraphicTask, :SnapshotByTimeOffsetTask, :SampleSnapshotTask, :ImageSpriteTask, :CoverBySnapshotTask, :AdaptiveDynamicStreamingTask
        
        def initialize(type=nil, transcodetask=nil, animatedgraphictask=nil, snapshotbytimeoffsettask=nil, samplesnapshottask=nil, imagespritetask=nil, coverbysnapshottask=nil, adaptivedynamicstreamingtask=nil)
          @Type = type
          @TranscodeTask = transcodetask
          @AnimatedGraphicTask = animatedgraphictask
          @SnapshotByTimeOffsetTask = snapshotbytimeoffsettask
          @SampleSnapshotTask = samplesnapshottask
          @ImageSpriteTask = imagespritetask
          @CoverBySnapshotTask = coverbysnapshottask
          @AdaptiveDynamicStreamingTask = adaptivedynamicstreamingtask
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['TranscodeTask'].nil?
            @TranscodeTask = MediaProcessTaskTranscodeResult.new.deserialize(params[TranscodeTask])
          end
          unless params['AnimatedGraphicTask'].nil?
            @AnimatedGraphicTask = MediaProcessTaskAnimatedGraphicResult.new.deserialize(params[AnimatedGraphicTask])
          end
          unless params['SnapshotByTimeOffsetTask'].nil?
            @SnapshotByTimeOffsetTask = MediaProcessTaskSnapshotByTimeOffsetResult.new.deserialize(params[SnapshotByTimeOffsetTask])
          end
          unless params['SampleSnapshotTask'].nil?
            @SampleSnapshotTask = MediaProcessTaskSampleSnapshotResult.new.deserialize(params[SampleSnapshotTask])
          end
          unless params['ImageSpriteTask'].nil?
            @ImageSpriteTask = MediaProcessTaskImageSpriteResult.new.deserialize(params[ImageSpriteTask])
          end
          unless params['CoverBySnapshotTask'].nil?
            @CoverBySnapshotTask = MediaProcessTaskCoverBySnapshotResult.new.deserialize(params[CoverBySnapshotTask])
          end
          unless params['AdaptiveDynamicStreamingTask'].nil?
            @AdaptiveDynamicStreamingTask = MediaProcessTaskAdaptiveDynamicStreamingResult.new.deserialize(params[AdaptiveDynamicStreamingTask])
          end
        end
      end

      # 对视频做采样截图任务结果类型
      class MediaProcessTaskSampleSnapshotResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 对视频做采样截图任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.SampleSnapshotTaskInput`
        # @param Output: 对视频做采样截图任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.MediaSampleSnapshotItem`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = SampleSnapshotTaskInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = MediaSampleSnapshotItem.new.deserialize(params[Output])
          end
        end
      end

      # 对视频按指定时间点截图任务结果类型
      class MediaProcessTaskSnapshotByTimeOffsetResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 对视频按指定时间点截图任务输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.SnapshotByTimeOffsetTaskInput`
        # @param Output: 对视频按指定时间点截图任务输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.MediaSnapshotByTimeOffsetItem`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = SnapshotByTimeOffsetTaskInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = MediaSnapshotByTimeOffsetItem.new.deserialize(params[Output])
          end
        end
      end

      # 转码任务结果类型
      class MediaProcessTaskTranscodeResult < TencentCloud::Common::AbstractModel
        # @param Status: 任务状态，有 PROCESSING，SUCCESS 和 FAIL 三种。
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param Input: 转码任务的输入。
        # @type Input: :class:`Tencentcloud::Vod.v20180717.models.TranscodeTaskInput`
        # @param Output: 转码任务的输出。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Output: :class:`Tencentcloud::Vod.v20180717.models.MediaTranscodeItem`

        attr_accessor :Status, :ErrCode, :Message, :Input, :Output
        
        def initialize(status=nil, errcode=nil, message=nil, input=nil, output=nil)
          @Status = status
          @ErrCode = errcode
          @Message = message
          @Input = input
          @Output = output
        end

        def deserialize(params)
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          unless params['Input'].nil?
            @Input = TranscodeTaskInput.new.deserialize(params[Input])
          end
          unless params['Output'].nil?
            @Output = MediaTranscodeItem.new.deserialize(params[Output])
          end
        end
      end

      # 点播文件采样截图信息
      class MediaSampleSnapshotInfo < TencentCloud::Common::AbstractModel
        # @param SampleSnapshotSet: 特定规格的采样截图信息集合，每个元素代表一套相同规格的采样截图。
        # @type SampleSnapshotSet: Array

        attr_accessor :SampleSnapshotSet
        
        def initialize(samplesnapshotset=nil)
          @SampleSnapshotSet = samplesnapshotset
        end

        def deserialize(params)
          @SampleSnapshotSet = params['SampleSnapshotSet']
        end
      end

      # 采样截图信息
      class MediaSampleSnapshotItem < TencentCloud::Common::AbstractModel
        # @param Definition: 采样截图规格 ID，参见[采样截图参数模板](https://cloud.tencent.com/document/product/266/33480#.E9.87.87.E6.A0.B7.E6.88.AA.E5.9B.BE.E6.A8.A1.E6.9D.BF)。
        # @type Definition: Integer
        # @param SampleType: 采样方式，取值范围：
        # <li>Percent：根据百分比间隔采样。</li>
        # <li>Time：根据时间间隔采样。</li>
        # @type SampleType: String
        # @param Interval: 采样间隔
        # <li>当 SampleType 为 Percent 时，该值表示多少百分比一张图。</li>
        # <li>当 SampleType 为 Time 时，该值表示多少时间间隔一张图，单位秒， 第一张图均为视频首帧。</li>
        # @type Interval: Integer
        # @param ImageUrlSet: 生成的截图 url 列表。
        # @type ImageUrlSet: Array
        # @param WaterMarkDefinition: 截图如果被打上了水印，被打水印的模板 ID 列表。
        # @type WaterMarkDefinition: Array

        attr_accessor :Definition, :SampleType, :Interval, :ImageUrlSet, :WaterMarkDefinition
        
        def initialize(definition=nil, sampletype=nil, interval=nil, imageurlset=nil, watermarkdefinition=nil)
          @Definition = definition
          @SampleType = sampletype
          @Interval = interval
          @ImageUrlSet = imageurlset
          @WaterMarkDefinition = watermarkdefinition
        end

        def deserialize(params)
          @Definition = params['Definition']
          @SampleType = params['SampleType']
          @Interval = params['Interval']
          @ImageUrlSet = params['ImageUrlSet']
          @WaterMarkDefinition = params['WaterMarkDefinition']
        end
      end

      # 点播文件指定时间点截图信息
      class MediaSnapshotByTimeOffsetInfo < TencentCloud::Common::AbstractModel
        # @param SnapshotByTimeOffsetSet: 特定规格的指定时间点截图信息集合。目前每种规格只能有一套截图。
        # @type SnapshotByTimeOffsetSet: Array

        attr_accessor :SnapshotByTimeOffsetSet
        
        def initialize(snapshotbytimeoffsetset=nil)
          @SnapshotByTimeOffsetSet = snapshotbytimeoffsetset
        end

        def deserialize(params)
          @SnapshotByTimeOffsetSet = params['SnapshotByTimeOffsetSet']
        end
      end

      # 点播文件指定时间点截图信息
      class MediaSnapshotByTimeOffsetItem < TencentCloud::Common::AbstractModel
        # @param Definition: 指定时间点截图规格，参见[指定时间点截图参数模板](https://cloud.tencent.com/document/product/266/33480#.E6.97.B6.E9.97.B4.E7.82.B9.E6.88.AA.E5.9B.BE.E6.A8.A1.E6.9D.BF)。
        # @type Definition: Integer
        # @param PicInfoSet: 同一规格的截图信息集合，每个元素代表一张截图。
        # @type PicInfoSet: Array

        attr_accessor :Definition, :PicInfoSet
        
        def initialize(definition=nil, picinfoset=nil)
          @Definition = definition
          @PicInfoSet = picinfoset
        end

        def deserialize(params)
          @Definition = params['Definition']
          @PicInfoSet = params['PicInfoSet']
        end
      end

      # 指定时间点截图信息
      class MediaSnapshotByTimePicInfoItem < TencentCloud::Common::AbstractModel
        # @param TimeOffset: 该张截图对应视频文件中的时间偏移，单位为<font color=red>毫秒</font>。
        # @type TimeOffset: Float
        # @param Url: 该张截图的 URL 地址。
        # @type Url: String
        # @param WaterMarkDefinition: 截图如果被打上了水印，被打水印的模板 ID 列表。
        # @type WaterMarkDefinition: Array

        attr_accessor :TimeOffset, :Url, :WaterMarkDefinition
        
        def initialize(timeoffset=nil, url=nil, watermarkdefinition=nil)
          @TimeOffset = timeoffset
          @Url = url
          @WaterMarkDefinition = watermarkdefinition
        end

        def deserialize(params)
          @TimeOffset = params['TimeOffset']
          @Url = params['Url']
          @WaterMarkDefinition = params['WaterMarkDefinition']
        end
      end

      # 来源文件信息
      class MediaSourceData < TencentCloud::Common::AbstractModel
        # @param SourceType: 媒体文件的来源类别：
        # <li>Record：来自录制。如直播录制、直播时移录制等。</li>
        # <li>Upload：来自上传。如拉取上传、服务端上传、客户端 UGC 上传等。</li>
        # <li>VideoProcessing：来自视频处理。如视频拼接、视频剪辑等。</li>
        # <li>Unknown：未知来源。</li>
        # @type SourceType: String
        # @param SourceContext: 用户创建文件时透传的字段
        # @type SourceContext: String

        attr_accessor :SourceType, :SourceContext
        
        def initialize(sourcetype=nil, sourcecontext=nil)
          @SourceType = sourcetype
          @SourceContext = sourcecontext
        end

        def deserialize(params)
          @SourceType = params['SourceType']
          @SourceContext = params['SourceContext']
        end
      end

      # 轨道信息
      class MediaTrack < TencentCloud::Common::AbstractModel
        # @param Type: 轨道类型，取值有：
        # <ul>
        # <li>Video ：视频轨道。视频轨道由以下 Item 组成：<ul><li>VideoTrackItem</li><li>MediaTransitionItem</li> <li>EmptyTrackItem</li></ul> </li>
        # <li>Audio ：音频轨道。音频轨道由以下 Item 组成：<ul><li>AudioTrackItem</li><li>MediaTransitionItem</li><li>EmptyTrackItem</li></ul></li>
        # <li>Sticker ：贴图轨道。贴图轨道以下 Item 组成：<ul><li> StickerTrackItem</li><li>EmptyTrackItem</li></ul></li>
        # </ul>
        # @type Type: String
        # @param TrackItems: 轨道上的媒体片段列表。
        # @type TrackItems: Array

        attr_accessor :Type, :TrackItems
        
        def initialize(type=nil, trackitems=nil)
          @Type = type
          @TrackItems = trackitems
        end

        def deserialize(params)
          @Type = params['Type']
          @TrackItems = params['TrackItems']
        end
      end

      # 媒体轨道的片段信息
      class MediaTrackItem < TencentCloud::Common::AbstractModel
        # @param Type: 片段类型。取值有：
        # <li>Video：视频片段。</li>
        # <li>Audio：音频片段。</li>
        # <li>Sticker：贴图片段。</li>
        # <li>Transition：转场。</li>
        # <li>Empty：空白片段。</li>
        # @type Type: String
        # @param VideoItem: 视频片段，当 Type = Video 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoItem: :class:`Tencentcloud::Vod.v20180717.models.VideoTrackItem`
        # @param AudioItem: 音频片段，当 Type = Audio 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioItem: :class:`Tencentcloud::Vod.v20180717.models.AudioTrackItem`
        # @param StickerItem: 贴图片段，当 Type = Sticker 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StickerItem: :class:`Tencentcloud::Vod.v20180717.models.StickerTrackItem`
        # @param TransitionItem: 转场，当 Type = Transition 时有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TransitionItem: :class:`Tencentcloud::Vod.v20180717.models.MediaTransitionItem`
        # @param EmptyItem: 空白片段，当 Type = Empty 时有效。空片段用于时间轴的占位。<li>如需要两个音频片段之间有一段时间的静音，可以用 EmptyTrackItem 来进行占位。</li>
        # <li>使用 EmptyTrackItem 进行占位，来定位某个Item。</li>
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EmptyItem: :class:`Tencentcloud::Vod.v20180717.models.EmptyTrackItem`

        attr_accessor :Type, :VideoItem, :AudioItem, :StickerItem, :TransitionItem, :EmptyItem
        
        def initialize(type=nil, videoitem=nil, audioitem=nil, stickeritem=nil, transitionitem=nil, emptyitem=nil)
          @Type = type
          @VideoItem = videoitem
          @AudioItem = audioitem
          @StickerItem = stickeritem
          @TransitionItem = transitionitem
          @EmptyItem = emptyitem
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['VideoItem'].nil?
            @VideoItem = VideoTrackItem.new.deserialize(params[VideoItem])
          end
          unless params['AudioItem'].nil?
            @AudioItem = AudioTrackItem.new.deserialize(params[AudioItem])
          end
          unless params['StickerItem'].nil?
            @StickerItem = StickerTrackItem.new.deserialize(params[StickerItem])
          end
          unless params['TransitionItem'].nil?
            @TransitionItem = MediaTransitionItem.new.deserialize(params[TransitionItem])
          end
          unless params['EmptyItem'].nil?
            @EmptyItem = EmptyTrackItem.new.deserialize(params[EmptyItem])
          end
        end
      end

      # 点播文件转码信息
      class MediaTranscodeInfo < TencentCloud::Common::AbstractModel
        # @param TranscodeSet: 各规格的转码信息集合，每个元素代表一个规格的转码结果。
        # @type TranscodeSet: Array

        attr_accessor :TranscodeSet
        
        def initialize(transcodeset=nil)
          @TranscodeSet = transcodeset
        end

        def deserialize(params)
          @TranscodeSet = params['TranscodeSet']
        end
      end

      # 转码信息
      class MediaTranscodeItem < TencentCloud::Common::AbstractModel
        # @param Url: 转码后的视频文件地址。
        # @type Url: String
        # @param Definition: 转码规格 ID，参见[转码参数模板](https://cloud.tencent.com/document/product/266/33476)。
        # @type Definition: Integer
        # @param Bitrate: 视频流码率平均值与音频流码率平均值之和， 单位：bps。
        # @type Bitrate: Integer
        # @param Height: 视频流高度的最大值，单位：px。
        # @type Height: Integer
        # @param Width: 视频流宽度的最大值，单位：px。
        # @type Width: Integer
        # @param Size: 媒体文件总大小（视频为 HLS 时，大小是 m3u8 和 ts 文件大小的总和），单位：字节。
        # @type Size: Integer
        # @param Duration: 视频时长，单位：秒。
        # @type Duration: Float
        # @param Container: 容器类型，例如 m4a，mp4 等。
        # @type Container: String
        # @param Md5: 视频的 md5 值。
        # @type Md5: String
        # @param AudioStreamSet: 音频流信息。
        # @type AudioStreamSet: Array
        # @param VideoStreamSet: 视频流信息。
        # @type VideoStreamSet: Array

        attr_accessor :Url, :Definition, :Bitrate, :Height, :Width, :Size, :Duration, :Container, :Md5, :AudioStreamSet, :VideoStreamSet
        
        def initialize(url=nil, definition=nil, bitrate=nil, height=nil, width=nil, size=nil, duration=nil, container=nil, md5=nil, audiostreamset=nil, videostreamset=nil)
          @Url = url
          @Definition = definition
          @Bitrate = bitrate
          @Height = height
          @Width = width
          @Size = size
          @Duration = duration
          @Container = container
          @Md5 = md5
          @AudioStreamSet = audiostreamset
          @VideoStreamSet = videostreamset
        end

        def deserialize(params)
          @Url = params['Url']
          @Definition = params['Definition']
          @Bitrate = params['Bitrate']
          @Height = params['Height']
          @Width = params['Width']
          @Size = params['Size']
          @Duration = params['Duration']
          @Container = params['Container']
          @Md5 = params['Md5']
          @AudioStreamSet = params['AudioStreamSet']
          @VideoStreamSet = params['VideoStreamSet']
        end
      end

      # 转场信息
      class MediaTransitionItem < TencentCloud::Common::AbstractModel
        # @param Duration: 转场持续时间，单位为秒。进行转场处理的两个媒体片段，第二个片段在轨道上的起始时间会自动进行调整，设置为前面一个片段的结束时间减去转场的持续时间。
        # @type Duration: Float
        # @param Transitions: 转场操作列表。图像转场操作和音频转场操作各自最多支持一个。
        # @type Transitions: Array

        attr_accessor :Duration, :Transitions
        
        def initialize(duration=nil, transitions=nil)
          @Duration = duration
          @Transitions = transitions
        end

        def deserialize(params)
          @Duration = params['Duration']
          @Transitions = params['Transitions']
        end
      end

      # 点播文件视频流信息
      class MediaVideoStreamItem < TencentCloud::Common::AbstractModel
        # @param Bitrate: 视频流的码率，单位：bps。
        # @type Bitrate: Integer
        # @param Height: 视频流的高度，单位：px。
        # @type Height: Integer
        # @param Width: 视频流的宽度，单位：px。
        # @type Width: Integer
        # @param Codec: 视频流的编码格式，例如 h264。
        # @type Codec: String
        # @param Fps: 帧率，单位：hz。
        # @type Fps: Integer

        attr_accessor :Bitrate, :Height, :Width, :Codec, :Fps
        
        def initialize(bitrate=nil, height=nil, width=nil, codec=nil, fps=nil)
          @Bitrate = bitrate
          @Height = height
          @Width = width
          @Codec = codec
          @Fps = fps
        end

        def deserialize(params)
          @Bitrate = params['Bitrate']
          @Height = params['Height']
          @Width = params['Width']
          @Codec = params['Codec']
          @Fps = params['Fps']
        end
      end

      # ModifyAIAnalysisTemplate请求参数结构体
      class ModifyAIAnalysisTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 视频内容分析模板唯一标识。
        # @type Definition: Integer
        # @param Name: 视频内容分析模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 视频内容分析模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param ClassificationConfigure: 智能分类任务控制参数。
        # @type ClassificationConfigure: :class:`Tencentcloud::Vod.v20180717.models.ClassificationConfigureInfoForUpdate`
        # @param TagConfigure: 智能标签任务控制参数。
        # @type TagConfigure: :class:`Tencentcloud::Vod.v20180717.models.TagConfigureInfoForUpdate`
        # @param CoverConfigure: 智能封面任务控制参数。
        # @type CoverConfigure: :class:`Tencentcloud::Vod.v20180717.models.CoverConfigureInfoForUpdate`
        # @param FrameTagConfigure: 智能按帧标签任务控制参数。
        # @type FrameTagConfigure: :class:`Tencentcloud::Vod.v20180717.models.FrameTagConfigureInfoForUpdate`
        # @param HighlightConfigure: 智能精彩集锦任务控制参数。
        # @type HighlightConfigure: :class:`Tencentcloud::Vod.v20180717.models.HighlightsConfigureInfoForUpdate`
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definition, :Name, :Comment, :ClassificationConfigure, :TagConfigure, :CoverConfigure, :FrameTagConfigure, :HighlightConfigure, :SubAppId
        
        def initialize(definition=nil, name=nil, comment=nil, classificationconfigure=nil, tagconfigure=nil, coverconfigure=nil, frametagconfigure=nil, highlightconfigure=nil, subappid=nil)
          @Definition = definition
          @Name = name
          @Comment = comment
          @ClassificationConfigure = classificationconfigure
          @TagConfigure = tagconfigure
          @CoverConfigure = coverconfigure
          @FrameTagConfigure = frametagconfigure
          @HighlightConfigure = highlightconfigure
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['ClassificationConfigure'].nil?
            @ClassificationConfigure = ClassificationConfigureInfoForUpdate.new.deserialize(params[ClassificationConfigure])
          end
          unless params['TagConfigure'].nil?
            @TagConfigure = TagConfigureInfoForUpdate.new.deserialize(params[TagConfigure])
          end
          unless params['CoverConfigure'].nil?
            @CoverConfigure = CoverConfigureInfoForUpdate.new.deserialize(params[CoverConfigure])
          end
          unless params['FrameTagConfigure'].nil?
            @FrameTagConfigure = FrameTagConfigureInfoForUpdate.new.deserialize(params[FrameTagConfigure])
          end
          unless params['HighlightConfigure'].nil?
            @HighlightConfigure = HighlightsConfigureInfoForUpdate.new.deserialize(params[HighlightConfigure])
          end
          @SubAppId = params['SubAppId']
        end
      end

      # ModifyAIAnalysisTemplate返回参数结构体
      class ModifyAIAnalysisTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAIRecognitionTemplate请求参数结构体
      class ModifyAIRecognitionTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 视频内容识别模板唯一标识。
        # @type Definition: Integer
        # @param Name: 视频内容识别模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 视频内容识别模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param HeadTailConfigure: 视频片头片尾识别控制参数。
        # @type HeadTailConfigure: :class:`Tencentcloud::Vod.v20180717.models.HeadTailConfigureInfoForUpdate`
        # @param SegmentConfigure: 视频拆条识别控制参数。
        # @type SegmentConfigure: :class:`Tencentcloud::Vod.v20180717.models.SegmentConfigureInfoForUpdate`
        # @param FaceConfigure: 人脸识别控制参数。
        # @type FaceConfigure: :class:`Tencentcloud::Vod.v20180717.models.FaceConfigureInfoForUpdate`
        # @param OcrFullTextConfigure: 文本全文识别控制参数。
        # @type OcrFullTextConfigure: :class:`Tencentcloud::Vod.v20180717.models.OcrFullTextConfigureInfoForUpdate`
        # @param OcrWordsConfigure: 文本关键词识别控制参数。
        # @type OcrWordsConfigure: :class:`Tencentcloud::Vod.v20180717.models.OcrWordsConfigureInfoForUpdate`
        # @param AsrFullTextConfigure: 语音全文识别控制参数。
        # @type AsrFullTextConfigure: :class:`Tencentcloud::Vod.v20180717.models.AsrFullTextConfigureInfoForUpdate`
        # @param AsrWordsConfigure: 语音关键词识别控制参数。
        # @type AsrWordsConfigure: :class:`Tencentcloud::Vod.v20180717.models.AsrWordsConfigureInfoForUpdate`
        # @param ObjectConfigure: 物体识别控制参数。
        # @type ObjectConfigure: :class:`Tencentcloud::Vod.v20180717.models.ObjectConfigureInfoForUpdate`
        # @param ScreenshotInterval: 截帧间隔，单位为秒，最小值为 0.5 秒。
        # @type ScreenshotInterval: Float
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definition, :Name, :Comment, :HeadTailConfigure, :SegmentConfigure, :FaceConfigure, :OcrFullTextConfigure, :OcrWordsConfigure, :AsrFullTextConfigure, :AsrWordsConfigure, :ObjectConfigure, :ScreenshotInterval, :SubAppId
        
        def initialize(definition=nil, name=nil, comment=nil, headtailconfigure=nil, segmentconfigure=nil, faceconfigure=nil, ocrfulltextconfigure=nil, ocrwordsconfigure=nil, asrfulltextconfigure=nil, asrwordsconfigure=nil, objectconfigure=nil, screenshotinterval=nil, subappid=nil)
          @Definition = definition
          @Name = name
          @Comment = comment
          @HeadTailConfigure = headtailconfigure
          @SegmentConfigure = segmentconfigure
          @FaceConfigure = faceconfigure
          @OcrFullTextConfigure = ocrfulltextconfigure
          @OcrWordsConfigure = ocrwordsconfigure
          @AsrFullTextConfigure = asrfulltextconfigure
          @AsrWordsConfigure = asrwordsconfigure
          @ObjectConfigure = objectconfigure
          @ScreenshotInterval = screenshotinterval
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['HeadTailConfigure'].nil?
            @HeadTailConfigure = HeadTailConfigureInfoForUpdate.new.deserialize(params[HeadTailConfigure])
          end
          unless params['SegmentConfigure'].nil?
            @SegmentConfigure = SegmentConfigureInfoForUpdate.new.deserialize(params[SegmentConfigure])
          end
          unless params['FaceConfigure'].nil?
            @FaceConfigure = FaceConfigureInfoForUpdate.new.deserialize(params[FaceConfigure])
          end
          unless params['OcrFullTextConfigure'].nil?
            @OcrFullTextConfigure = OcrFullTextConfigureInfoForUpdate.new.deserialize(params[OcrFullTextConfigure])
          end
          unless params['OcrWordsConfigure'].nil?
            @OcrWordsConfigure = OcrWordsConfigureInfoForUpdate.new.deserialize(params[OcrWordsConfigure])
          end
          unless params['AsrFullTextConfigure'].nil?
            @AsrFullTextConfigure = AsrFullTextConfigureInfoForUpdate.new.deserialize(params[AsrFullTextConfigure])
          end
          unless params['AsrWordsConfigure'].nil?
            @AsrWordsConfigure = AsrWordsConfigureInfoForUpdate.new.deserialize(params[AsrWordsConfigure])
          end
          unless params['ObjectConfigure'].nil?
            @ObjectConfigure = ObjectConfigureInfoForUpdate.new.deserialize(params[ObjectConfigure])
          end
          @ScreenshotInterval = params['ScreenshotInterval']
          @SubAppId = params['SubAppId']
        end
      end

      # ModifyAIRecognitionTemplate返回参数结构体
      class ModifyAIRecognitionTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAdaptiveDynamicStreamingTemplate请求参数结构体
      class ModifyAdaptiveDynamicStreamingTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 自适应转码模板唯一标识。
        # @type Definition: Integer
        # @param Name: 模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Format: 自适应转码格式，取值范围：
        # <li>HLS。</li>
        # @type Format: String
        # @param DisableHigherVideoBitrate: 是否禁止视频低码率转高码率，取值范围：
        # <li>0：否，</li>
        # <li>1：是。</li>
        # @type DisableHigherVideoBitrate: Integer
        # @param DisableHigherVideoResolution: 是否禁止视频分辨率转高分辨率，取值范围：
        # <li>0：否，</li>
        # <li>1：是。</li>
        # @type DisableHigherVideoResolution: Integer
        # @param StreamInfos: 自适应转码输入流参数信息，最多输入10路流。
        # 注意：各个流的帧率必须保持一致；如果不一致，采用第一个流的帧率作为输出帧率。
        # @type StreamInfos: Array
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definition, :Name, :Format, :DisableHigherVideoBitrate, :DisableHigherVideoResolution, :StreamInfos, :Comment, :SubAppId
        
        def initialize(definition=nil, name=nil, format=nil, disablehighervideobitrate=nil, disablehighervideoresolution=nil, streaminfos=nil, comment=nil, subappid=nil)
          @Definition = definition
          @Name = name
          @Format = format
          @DisableHigherVideoBitrate = disablehighervideobitrate
          @DisableHigherVideoResolution = disablehighervideoresolution
          @StreamInfos = streaminfos
          @Comment = comment
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Format = params['Format']
          @DisableHigherVideoBitrate = params['DisableHigherVideoBitrate']
          @DisableHigherVideoResolution = params['DisableHigherVideoResolution']
          @StreamInfos = params['StreamInfos']
          @Comment = params['Comment']
          @SubAppId = params['SubAppId']
        end
      end

      # ModifyAdaptiveDynamicStreamingTemplate返回参数结构体
      class ModifyAdaptiveDynamicStreamingTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyAnimatedGraphicsTemplate请求参数结构体
      class ModifyAnimatedGraphicsTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 转动图模板唯一标识。
        # @type Definition: Integer
        # @param Name: 转动图模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Width: 动图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 动图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param Format: 动图格式，取值为 gif 和 webp。
        # @type Format: String
        # @param Fps: 帧率，取值范围：[1, 30]，单位：Hz。
        # @type Fps: Integer
        # @param Quality: 图片质量，取值范围：[1, 100]，默认值为 75。
        # @type Quality: Float
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definition, :Name, :Width, :Height, :ResolutionAdaptive, :Format, :Fps, :Quality, :Comment, :SubAppId
        
        def initialize(definition=nil, name=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, fps=nil, quality=nil, comment=nil, subappid=nil)
          @Definition = definition
          @Name = name
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @Format = format
          @Fps = fps
          @Quality = quality
          @Comment = comment
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Format = params['Format']
          @Fps = params['Fps']
          @Quality = params['Quality']
          @Comment = params['Comment']
          @SubAppId = params['SubAppId']
        end
      end

      # ModifyAnimatedGraphicsTemplate返回参数结构体
      class ModifyAnimatedGraphicsTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyClass请求参数结构体
      class ModifyClassRequest < TencentCloud::Common::AbstractModel
        # @param ClassId: 分类 ID
        # @type ClassId: Integer
        # @param ClassName: 分类名称。长度限制：1-64 个字符。
        # @type ClassName: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :ClassId, :ClassName, :SubAppId
        
        def initialize(classid=nil, classname=nil, subappid=nil)
          @ClassId = classid
          @ClassName = classname
          @SubAppId = subappid
        end

        def deserialize(params)
          @ClassId = params['ClassId']
          @ClassName = params['ClassName']
          @SubAppId = params['SubAppId']
        end
      end

      # ModifyClass返回参数结构体
      class ModifyClassResponse < TencentCloud::Common::AbstractModel
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

      # ModifyContentReviewTemplate请求参数结构体
      class ModifyContentReviewTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 内容审核模板唯一标识。
        # @type Definition: Integer
        # @param Name: 内容审核模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 内容审核模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param PornConfigure: 鉴黄控制参数。
        # @type PornConfigure: :class:`Tencentcloud::Vod.v20180717.models.PornConfigureInfoForUpdate`
        # @param TerrorismConfigure: 鉴恐控制参数。
        # @type TerrorismConfigure: :class:`Tencentcloud::Vod.v20180717.models.TerrorismConfigureInfoForUpdate`
        # @param PoliticalConfigure: 鉴政控制参数。
        # @type PoliticalConfigure: :class:`Tencentcloud::Vod.v20180717.models.PoliticalConfigureInfoForUpdate`
        # @param ProhibitedConfigure: 违禁控制参数。违禁内容包括：
        # <li>谩骂；</li>
        # <li>涉毒违法。</li>
        # @type ProhibitedConfigure: :class:`Tencentcloud::Vod.v20180717.models.ProhibitedConfigureInfoForUpdate`
        # @param UserDefineConfigure: 用户自定义内容审核控制参数。
        # @type UserDefineConfigure: :class:`Tencentcloud::Vod.v20180717.models.UserDefineConfigureInfoForUpdate`
        # @param ScreenshotInterval: 截帧间隔，单位为秒，最小值为 0.5 秒。
        # @type ScreenshotInterval: Float
        # @param ReviewWallSwitch: 审核结果是否进入审核墙（对审核结果进行人工复核）的开关。
        # <li>ON：是；</li>
        # <li>OFF：否。</li>
        # @type ReviewWallSwitch: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definition, :Name, :Comment, :PornConfigure, :TerrorismConfigure, :PoliticalConfigure, :ProhibitedConfigure, :UserDefineConfigure, :ScreenshotInterval, :ReviewWallSwitch, :SubAppId
        
        def initialize(definition=nil, name=nil, comment=nil, pornconfigure=nil, terrorismconfigure=nil, politicalconfigure=nil, prohibitedconfigure=nil, userdefineconfigure=nil, screenshotinterval=nil, reviewwallswitch=nil, subappid=nil)
          @Definition = definition
          @Name = name
          @Comment = comment
          @PornConfigure = pornconfigure
          @TerrorismConfigure = terrorismconfigure
          @PoliticalConfigure = politicalconfigure
          @ProhibitedConfigure = prohibitedconfigure
          @UserDefineConfigure = userdefineconfigure
          @ScreenshotInterval = screenshotinterval
          @ReviewWallSwitch = reviewwallswitch
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['PornConfigure'].nil?
            @PornConfigure = PornConfigureInfoForUpdate.new.deserialize(params[PornConfigure])
          end
          unless params['TerrorismConfigure'].nil?
            @TerrorismConfigure = TerrorismConfigureInfoForUpdate.new.deserialize(params[TerrorismConfigure])
          end
          unless params['PoliticalConfigure'].nil?
            @PoliticalConfigure = PoliticalConfigureInfoForUpdate.new.deserialize(params[PoliticalConfigure])
          end
          unless params['ProhibitedConfigure'].nil?
            @ProhibitedConfigure = ProhibitedConfigureInfoForUpdate.new.deserialize(params[ProhibitedConfigure])
          end
          unless params['UserDefineConfigure'].nil?
            @UserDefineConfigure = UserDefineConfigureInfoForUpdate.new.deserialize(params[UserDefineConfigure])
          end
          @ScreenshotInterval = params['ScreenshotInterval']
          @ReviewWallSwitch = params['ReviewWallSwitch']
          @SubAppId = params['SubAppId']
        end
      end

      # ModifyContentReviewTemplate返回参数结构体
      class ModifyContentReviewTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyImageSpriteTemplate请求参数结构体
      class ModifyImageSpriteTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 雪碧图模板唯一标识。
        # @type Definition: Integer
        # @param Name: 雪碧图模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Width: 雪碧图中小图的宽度，取值范围： [128, 4096]，单位：px。
        # @type Width: Integer
        # @param Height: 雪碧图中小图的高度，取值范围： [128, 4096]，单位：px。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param SampleType: 采样类型，取值：
        # <li>Percent：按百分比。</li>
        # <li>Time：按时间间隔。</li>
        # @type SampleType: String
        # @param SampleInterval: 采样间隔。
        # <li>当 SampleType 为 Percent 时，指定采样间隔的百分比。</li>
        # <li>当 SampleType 为 Time 时，指定采样间隔的时间，单位为秒。</li>
        # @type SampleInterval: Integer
        # @param RowCount: 雪碧图中小图的行数。
        # @type RowCount: Integer
        # @param ColumnCount: 雪碧图中小图的列数。
        # @type ColumnCount: Integer
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # 默认值：black 。
        # @type FillType: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definition, :Name, :Width, :Height, :ResolutionAdaptive, :SampleType, :SampleInterval, :RowCount, :ColumnCount, :FillType, :Comment, :SubAppId
        
        def initialize(definition=nil, name=nil, width=nil, height=nil, resolutionadaptive=nil, sampletype=nil, sampleinterval=nil, rowcount=nil, columncount=nil, filltype=nil, comment=nil, subappid=nil)
          @Definition = definition
          @Name = name
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @SampleType = sampletype
          @SampleInterval = sampleinterval
          @RowCount = rowcount
          @ColumnCount = columncount
          @FillType = filltype
          @Comment = comment
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @SampleType = params['SampleType']
          @SampleInterval = params['SampleInterval']
          @RowCount = params['RowCount']
          @ColumnCount = params['ColumnCount']
          @FillType = params['FillType']
          @Comment = params['Comment']
          @SubAppId = params['SubAppId']
        end
      end

      # ModifyImageSpriteTemplate返回参数结构体
      class ModifyImageSpriteTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyMediaInfo请求参数结构体
      class ModifyMediaInfoRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件唯一标识。
        # @type FileId: String
        # @param Name: 媒体文件名称，最长 64 个字符。
        # @type Name: String
        # @param Description: 媒体文件描述，最长 128 个字符。
        # @type Description: String
        # @param ClassId: 媒体文件分类 ID。
        # @type ClassId: Integer
        # @param ExpireTime: 媒体文件过期时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。填“9999-12-31T23:59:59Z”表示永不过期。过期后该媒体文件及其相关资源（转码结果、雪碧图等）将被永久删除。
        # @type ExpireTime: String
        # @param CoverData: 视频封面图片文件（如 jpeg, png 等）进行 [Base64](https://tools.ietf.org/html/rfc4648) 编码后的字符串，仅支持 gif、jpeg、png 三种图片格式。
        # @type CoverData: String
        # @param AddKeyFrameDescs: 新增的一组视频打点信息，如果某个偏移时间已存在打点，则会进行覆盖操作，单个媒体文件最多 100 个打点信息。同一个请求里，AddKeyFrameDescs 的时间偏移参数必须与 DeleteKeyFrameDescs 都不同。
        # @type AddKeyFrameDescs: Array
        # @param DeleteKeyFrameDescs: 要删除的一组视频打点信息的时间偏移，单位：秒。同一个请求里，AddKeyFrameDescs 的时间偏移参数必须与 DeleteKeyFrameDescs 都不同。
        # @type DeleteKeyFrameDescs: Array
        # @param ClearKeyFrameDescs: 取值 1 表示清空视频打点信息，其他值无意义。
        # 同一个请求里，ClearKeyFrameDescs 与 AddKeyFrameDescs 不能同时出现。
        # @type ClearKeyFrameDescs: Integer
        # @param AddTags: 新增的一组标签，单个媒体文件最多 16 个标签，单个标签最多 16 个字符。同一个请求里，AddTags 参数必须与 DeleteTags 都不同。
        # @type AddTags: Array
        # @param DeleteTags: 要删除的一组标签。同一个请求里，AddTags 参数必须与 DeleteTags 都不同。
        # @type DeleteTags: Array
        # @param ClearTags: 取值 1 表示清空媒体文件所有标签，其他值无意义。
        # 同一个请求里，ClearTags 与 AddTags 不能同时出现。
        # @type ClearTags: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID 。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :FileId, :Name, :Description, :ClassId, :ExpireTime, :CoverData, :AddKeyFrameDescs, :DeleteKeyFrameDescs, :ClearKeyFrameDescs, :AddTags, :DeleteTags, :ClearTags, :SubAppId
        
        def initialize(fileid=nil, name=nil, description=nil, classid=nil, expiretime=nil, coverdata=nil, addkeyframedescs=nil, deletekeyframedescs=nil, clearkeyframedescs=nil, addtags=nil, deletetags=nil, cleartags=nil, subappid=nil)
          @FileId = fileid
          @Name = name
          @Description = description
          @ClassId = classid
          @ExpireTime = expiretime
          @CoverData = coverdata
          @AddKeyFrameDescs = addkeyframedescs
          @DeleteKeyFrameDescs = deletekeyframedescs
          @ClearKeyFrameDescs = clearkeyframedescs
          @AddTags = addtags
          @DeleteTags = deletetags
          @ClearTags = cleartags
          @SubAppId = subappid
        end

        def deserialize(params)
          @FileId = params['FileId']
          @Name = params['Name']
          @Description = params['Description']
          @ClassId = params['ClassId']
          @ExpireTime = params['ExpireTime']
          @CoverData = params['CoverData']
          @AddKeyFrameDescs = params['AddKeyFrameDescs']
          @DeleteKeyFrameDescs = params['DeleteKeyFrameDescs']
          @ClearKeyFrameDescs = params['ClearKeyFrameDescs']
          @AddTags = params['AddTags']
          @DeleteTags = params['DeleteTags']
          @ClearTags = params['ClearTags']
          @SubAppId = params['SubAppId']
        end
      end

      # ModifyMediaInfo返回参数结构体
      class ModifyMediaInfoResponse < TencentCloud::Common::AbstractModel
        # @param CoverUrl: 新的视频封面 URL。
        # * 注意：仅当请求携带 CoverData 时此返回值有效。 *
        # @type CoverUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CoverUrl, :RequestId
        
        def initialize(coverurl=nil, requestid=nil)
          @CoverUrl = coverurl
          @RequestId = requestid
        end

        def deserialize(params)
          @CoverUrl = params['CoverUrl']
          @RequestId = params['RequestId']
        end
      end

      # ModifyPersonSample请求参数结构体
      class ModifyPersonSampleRequest < TencentCloud::Common::AbstractModel
        # @param PersonId: 人物 ID。
        # @type PersonId: String
        # @param Name: 名称，长度限制：128 个字符。
        # @type Name: String
        # @param Description: 描述，长度限制：1024 个字符。
        # @type Description: String
        # @param Usages: 人物应用场景，可选值：
        # 1. Recognition：用于内容识别，等价于 Recognition.Face。
        # 2. Review：用于内容审核，等价于 Review.Face。
        # 3. All：用于内容识别、内容审核，等价于 1+2。
        # @type Usages: Array
        # @param FaceOperationInfo: 人脸操作信息。
        # @type FaceOperationInfo: :class:`Tencentcloud::Vod.v20180717.models.AiSampleFaceOperation`
        # @param TagOperationInfo: 标签操作信息。
        # @type TagOperationInfo: :class:`Tencentcloud::Vod.v20180717.models.AiSampleTagOperation`
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :PersonId, :Name, :Description, :Usages, :FaceOperationInfo, :TagOperationInfo, :SubAppId
        
        def initialize(personid=nil, name=nil, description=nil, usages=nil, faceoperationinfo=nil, tagoperationinfo=nil, subappid=nil)
          @PersonId = personid
          @Name = name
          @Description = description
          @Usages = usages
          @FaceOperationInfo = faceoperationinfo
          @TagOperationInfo = tagoperationinfo
          @SubAppId = subappid
        end

        def deserialize(params)
          @PersonId = params['PersonId']
          @Name = params['Name']
          @Description = params['Description']
          @Usages = params['Usages']
          unless params['FaceOperationInfo'].nil?
            @FaceOperationInfo = AiSampleFaceOperation.new.deserialize(params[FaceOperationInfo])
          end
          unless params['TagOperationInfo'].nil?
            @TagOperationInfo = AiSampleTagOperation.new.deserialize(params[TagOperationInfo])
          end
          @SubAppId = params['SubAppId']
        end
      end

      # ModifyPersonSample返回参数结构体
      class ModifyPersonSampleResponse < TencentCloud::Common::AbstractModel
        # @param Person: 人物信息。
        # @type Person: :class:`Tencentcloud::Vod.v20180717.models.AiSamplePerson`
        # @param FailFaceInfoSet: 处理失败的人脸信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailFaceInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Person, :FailFaceInfoSet, :RequestId
        
        def initialize(person=nil, failfaceinfoset=nil, requestid=nil)
          @Person = person
          @FailFaceInfoSet = failfaceinfoset
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Person'].nil?
            @Person = AiSamplePerson.new.deserialize(params[Person])
          end
          @FailFaceInfoSet = params['FailFaceInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # ModifySampleSnapshotTemplate请求参数结构体
      class ModifySampleSnapshotTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 采样截图模板唯一标识。
        # @type Definition: Integer
        # @param Name: 采样截图模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Width: 截图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 截图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param SampleType: 采样截图类型，取值：
        # <li>Percent：按百分比。</li>
        # <li>Time：按时间间隔。</li>
        # @type SampleType: String
        # @param SampleInterval: 采样间隔。
        # <li>当 SampleType 为 Percent 时，指定采样间隔的百分比。</li>
        # <li>当 SampleType 为 Time 时，指定采样间隔的时间，单位为秒。</li>
        # @type SampleInterval: Integer
        # @param Format: 图片格式，取值为 jpg 和 png。
        # @type Format: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # <li>white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。</li>
        # <li>gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊。</li>
        # 默认值：black 。
        # @type FillType: String

        attr_accessor :Definition, :Name, :Width, :Height, :ResolutionAdaptive, :SampleType, :SampleInterval, :Format, :Comment, :SubAppId, :FillType
        
        def initialize(definition=nil, name=nil, width=nil, height=nil, resolutionadaptive=nil, sampletype=nil, sampleinterval=nil, format=nil, comment=nil, subappid=nil, filltype=nil)
          @Definition = definition
          @Name = name
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @SampleType = sampletype
          @SampleInterval = sampleinterval
          @Format = format
          @Comment = comment
          @SubAppId = subappid
          @FillType = filltype
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @SampleType = params['SampleType']
          @SampleInterval = params['SampleInterval']
          @Format = params['Format']
          @Comment = params['Comment']
          @SubAppId = params['SubAppId']
          @FillType = params['FillType']
        end
      end

      # ModifySampleSnapshotTemplate返回参数结构体
      class ModifySampleSnapshotTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifySnapshotByTimeOffsetTemplate请求参数结构体
      class ModifySnapshotByTimeOffsetTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 指定时间点截图模板唯一标识。
        # @type Definition: Integer
        # @param Name: 指定时间点截图模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Width: 截图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 截图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param Format: 图片格式，取值可以为 jpg 和 png。
        # @type Format: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # <li>white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。</li>
        # <li>gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊。</li>
        # 默认值：black 。
        # @type FillType: String

        attr_accessor :Definition, :Name, :Width, :Height, :ResolutionAdaptive, :Format, :Comment, :SubAppId, :FillType
        
        def initialize(definition=nil, name=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, comment=nil, subappid=nil, filltype=nil)
          @Definition = definition
          @Name = name
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @Format = format
          @Comment = comment
          @SubAppId = subappid
          @FillType = filltype
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Format = params['Format']
          @Comment = params['Comment']
          @SubAppId = params['SubAppId']
          @FillType = params['FillType']
        end
      end

      # ModifySnapshotByTimeOffsetTemplate返回参数结构体
      class ModifySnapshotByTimeOffsetTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifySubAppIdInfo请求参数结构体
      class ModifySubAppIdInfoRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: 子应用 ID。
        # @type SubAppId: Integer
        # @param Name: 子应用名称，长度限制：40个字符。
        # @type Name: String
        # @param Description: 子应用简介，长度限制： 300个字符。
        # @type Description: String

        attr_accessor :SubAppId, :Name, :Description
        
        def initialize(subappid=nil, name=nil, description=nil)
          @SubAppId = subappid
          @Name = name
          @Description = description
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @Name = params['Name']
          @Description = params['Description']
        end
      end

      # ModifySubAppIdInfo返回参数结构体
      class ModifySubAppIdInfoResponse < TencentCloud::Common::AbstractModel
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

      # ModifySubAppIdStatus请求参数结构体
      class ModifySubAppIdStatusRequest < TencentCloud::Common::AbstractModel
        # @param SubAppId: 子应用 ID。
        # @type SubAppId: Integer
        # @param Status: 子应用状态，取值范围：
        # <li>On：启用</li>
        # <li>Off：停用</li>
        # @type Status: String

        attr_accessor :SubAppId, :Status
        
        def initialize(subappid=nil, status=nil)
          @SubAppId = subappid
          @Status = status
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @Status = params['Status']
        end
      end

      # ModifySubAppIdStatus返回参数结构体
      class ModifySubAppIdStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifySuperPlayerConfig请求参数结构体
      class ModifySuperPlayerConfigRequest < TencentCloud::Common::AbstractModel
        # @param Name: 播放器配置名称。
        # @type Name: String
        # @param DrmSwitch: 播放 DRM 保护的自适应码流开关：
        # <li>ON：开启，表示仅播放 DRM  保护的自适应码流输出；</li>
        # <li>OFF：关闭，表示播放未加密的自适应码流输出。</li>
        # @type DrmSwitch: String
        # @param AdaptiveDynamicStreamingDefinition: 允许输出的未加密的自适应码流模板 ID。
        # @type AdaptiveDynamicStreamingDefinition: Integer
        # @param DrmStreamingsInfo: 允许输出的 DRM 自适应码流模板内容。
        # @type DrmStreamingsInfo: :class:`Tencentcloud::Vod.v20180717.models.DrmStreamingsInfoForUpdate`
        # @param ImageSpriteDefinition: 允许输出的雪碧图模板 ID。
        # @type ImageSpriteDefinition: Integer
        # @param ResolutionNames: 播放器对不于不同分辨率的子流展示名字。
        # @type ResolutionNames: Array
        # @param Domain: 播放时使用的域名。填 Default 表示使用[默认分发配置](https://cloud.tencent.com/document/product/266/33373)中的域名。
        # @type Domain: String
        # @param Scheme: 播放时使用的 Scheme。取值范围：
        # <li>Default：使用[默认分发配置](https://cloud.tencent.com/document/product/266/33373)中的 Scheme；</li>
        # <li>HTTP；</li>
        # <li>HTTPS。</li>
        # @type Scheme: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Name, :DrmSwitch, :AdaptiveDynamicStreamingDefinition, :DrmStreamingsInfo, :ImageSpriteDefinition, :ResolutionNames, :Domain, :Scheme, :Comment, :SubAppId
        
        def initialize(name=nil, drmswitch=nil, adaptivedynamicstreamingdefinition=nil, drmstreamingsinfo=nil, imagespritedefinition=nil, resolutionnames=nil, domain=nil, scheme=nil, comment=nil, subappid=nil)
          @Name = name
          @DrmSwitch = drmswitch
          @AdaptiveDynamicStreamingDefinition = adaptivedynamicstreamingdefinition
          @DrmStreamingsInfo = drmstreamingsinfo
          @ImageSpriteDefinition = imagespritedefinition
          @ResolutionNames = resolutionnames
          @Domain = domain
          @Scheme = scheme
          @Comment = comment
          @SubAppId = subappid
        end

        def deserialize(params)
          @Name = params['Name']
          @DrmSwitch = params['DrmSwitch']
          @AdaptiveDynamicStreamingDefinition = params['AdaptiveDynamicStreamingDefinition']
          unless params['DrmStreamingsInfo'].nil?
            @DrmStreamingsInfo = DrmStreamingsInfoForUpdate.new.deserialize(params[DrmStreamingsInfo])
          end
          @ImageSpriteDefinition = params['ImageSpriteDefinition']
          @ResolutionNames = params['ResolutionNames']
          @Domain = params['Domain']
          @Scheme = params['Scheme']
          @Comment = params['Comment']
          @SubAppId = params['SubAppId']
        end
      end

      # ModifySuperPlayerConfig返回参数结构体
      class ModifySuperPlayerConfigResponse < TencentCloud::Common::AbstractModel
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

      # ModifyTranscodeTemplate请求参数结构体
      class ModifyTranscodeTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 转码模板唯一标识。
        # @type Definition: Integer
        # @param Container: 封装格式，可选值：mp4、flv、hls、mp3、flac、ogg、m4a。其中，mp3、flac、ogg、m4a 为纯音频文件。
        # @type Container: String
        # @param Name: 转码模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 模板描述信息，长度限制：256 个字节。
        # @type Comment: String
        # @param RemoveVideo: 是否去除视频数据，可选值：
        # <li>0：保留</li>
        # <li>1：去除</li>
        # @type RemoveVideo: Integer
        # @param RemoveAudio: 是否去除音频数据，可选值：
        # <li>0：保留</li>
        # <li>1：去除</li>
        # @type RemoveAudio: Integer
        # @param VideoTemplate: 视频流配置参数。
        # @type VideoTemplate: :class:`Tencentcloud::Vod.v20180717.models.VideoTemplateInfoForUpdate`
        # @param AudioTemplate: 音频流配置参数。
        # @type AudioTemplate: :class:`Tencentcloud::Vod.v20180717.models.AudioTemplateInfoForUpdate`
        # @param TEHDConfig: 极速高清转码参数。
        # @type TEHDConfig: :class:`Tencentcloud::Vod.v20180717.models.TEHDConfigForUpdate`
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definition, :Container, :Name, :Comment, :RemoveVideo, :RemoveAudio, :VideoTemplate, :AudioTemplate, :TEHDConfig, :SubAppId
        
        def initialize(definition=nil, container=nil, name=nil, comment=nil, removevideo=nil, removeaudio=nil, videotemplate=nil, audiotemplate=nil, tehdconfig=nil, subappid=nil)
          @Definition = definition
          @Container = container
          @Name = name
          @Comment = comment
          @RemoveVideo = removevideo
          @RemoveAudio = removeaudio
          @VideoTemplate = videotemplate
          @AudioTemplate = audiotemplate
          @TEHDConfig = tehdconfig
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Container = params['Container']
          @Name = params['Name']
          @Comment = params['Comment']
          @RemoveVideo = params['RemoveVideo']
          @RemoveAudio = params['RemoveAudio']
          unless params['VideoTemplate'].nil?
            @VideoTemplate = VideoTemplateInfoForUpdate.new.deserialize(params[VideoTemplate])
          end
          unless params['AudioTemplate'].nil?
            @AudioTemplate = AudioTemplateInfoForUpdate.new.deserialize(params[AudioTemplate])
          end
          unless params['TEHDConfig'].nil?
            @TEHDConfig = TEHDConfigForUpdate.new.deserialize(params[TEHDConfig])
          end
          @SubAppId = params['SubAppId']
        end
      end

      # ModifyTranscodeTemplate返回参数结构体
      class ModifyTranscodeTemplateResponse < TencentCloud::Common::AbstractModel
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

      # ModifyWatermarkTemplate请求参数结构体
      class ModifyWatermarkTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Definition: 水印模板唯一标识。
        # @type Definition: Integer
        # @param Name: 水印模板名称，长度限制：64 个字符。
        # @type Name: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param CoordinateOrigin: 原点位置，可选值：
        # <li>TopLeft：表示坐标原点位于视频图像左上角，水印原点为图片或文字的左上角；</li>
        # <li>TopRight：表示坐标原点位于视频图像的右上角，水印原点为图片或文字的右上角；</li>
        # <li>BottomLeft：表示坐标原点位于视频图像的左下角，水印原点为图片或文字的左下角；</li>
        # <li>BottomRight：表示坐标原点位于视频图像的右下角，水印原点为图片或文字的右下角。</li>
        # @type CoordinateOrigin: String
        # @param XPos: 水印原点距离视频图像坐标原点的水平位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 XPos 为视频宽度指定百分比，如 10% 表示 XPos 为视频宽度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 XPos 为指定像素，如 100px 表示 XPos 为 100 像素。</li>
        # @type XPos: String
        # @param YPos: 水印原点距离视频图像坐标原点的垂直位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示水印 YPos 为视频高度指定百分比，如 10% 表示 YPos 为视频高度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 YPos 为指定像素，如 100px 表示 YPos 为 100 像素。</li>
        # @type YPos: String
        # @param ImageTemplate: 图片水印模板，该字段仅对图片水印模板有效。
        # @type ImageTemplate: :class:`Tencentcloud::Vod.v20180717.models.ImageWatermarkInputForUpdate`
        # @param TextTemplate: 文字水印模板，该字段仅对文字水印模板有效。
        # @type TextTemplate: :class:`Tencentcloud::Vod.v20180717.models.TextWatermarkTemplateInputForUpdate`
        # @param SvgTemplate: SVG 水印模板，该字段仅对 SVG 水印模板有效。
        # @type SvgTemplate: :class:`Tencentcloud::Vod.v20180717.models.SvgWatermarkInputForUpdate`
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Definition, :Name, :Comment, :CoordinateOrigin, :XPos, :YPos, :ImageTemplate, :TextTemplate, :SvgTemplate, :SubAppId
        
        def initialize(definition=nil, name=nil, comment=nil, coordinateorigin=nil, xpos=nil, ypos=nil, imagetemplate=nil, texttemplate=nil, svgtemplate=nil, subappid=nil)
          @Definition = definition
          @Name = name
          @Comment = comment
          @CoordinateOrigin = coordinateorigin
          @XPos = xpos
          @YPos = ypos
          @ImageTemplate = imagetemplate
          @TextTemplate = texttemplate
          @SvgTemplate = svgtemplate
          @SubAppId = subappid
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Name = params['Name']
          @Comment = params['Comment']
          @CoordinateOrigin = params['CoordinateOrigin']
          @XPos = params['XPos']
          @YPos = params['YPos']
          unless params['ImageTemplate'].nil?
            @ImageTemplate = ImageWatermarkInputForUpdate.new.deserialize(params[ImageTemplate])
          end
          unless params['TextTemplate'].nil?
            @TextTemplate = TextWatermarkTemplateInputForUpdate.new.deserialize(params[TextTemplate])
          end
          unless params['SvgTemplate'].nil?
            @SvgTemplate = SvgWatermarkInputForUpdate.new.deserialize(params[SvgTemplate])
          end
          @SubAppId = params['SubAppId']
        end
      end

      # ModifyWatermarkTemplate返回参数结构体
      class ModifyWatermarkTemplateResponse < TencentCloud::Common::AbstractModel
        # @param ImageUrl: 图片水印地址，仅当 ImageTemplate.ImageContent 非空，该字段有值。
        # @type ImageUrl: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ImageUrl, :RequestId
        
        def initialize(imageurl=nil, requestid=nil)
          @ImageUrl = imageurl
          @RequestId = requestid
        end

        def deserialize(params)
          @ImageUrl = params['ImageUrl']
          @RequestId = params['RequestId']
        end
      end

      # ModifyWordSample请求参数结构体
      class ModifyWordSampleRequest < TencentCloud::Common::AbstractModel
        # @param Keyword: 关键词，长度限制：128 个字符。
        # @type Keyword: String
        # @param Usages: <b>关键词应用场景，可选值：</b>
        # 1. Recognition.Ocr：通过光学字符识别技术，进行内容识别；
        # 2. Recognition.Asr：通过语音识别技术，进行内容识别；
        # 3. Review.Ocr：通过光学字符识别技术，进行内容审核；
        # 4. Review.Asr：通过语音识别技术，进行内容审核；
        # <b>可合并简写为：</b>
        # 5. Recognition：通过光学字符识别技术、语音识别技术，进行内容识别，等价于 1+2；
        # 6. Review：通过光学字符识别技术、语音识别技术，进行内容审核，等价于 3+4；
        # 7. All：通过光学字符识别技术、语音识别技术，进行内容识别、内容审核，等价于 1+2+3+4。
        # @type Usages: Array
        # @param TagOperationInfo: 标签操作信息。
        # @type TagOperationInfo: :class:`Tencentcloud::Vod.v20180717.models.AiSampleTagOperation`
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Keyword, :Usages, :TagOperationInfo, :SubAppId
        
        def initialize(keyword=nil, usages=nil, tagoperationinfo=nil, subappid=nil)
          @Keyword = keyword
          @Usages = usages
          @TagOperationInfo = tagoperationinfo
          @SubAppId = subappid
        end

        def deserialize(params)
          @Keyword = params['Keyword']
          @Usages = params['Usages']
          unless params['TagOperationInfo'].nil?
            @TagOperationInfo = AiSampleTagOperation.new.deserialize(params[TagOperationInfo])
          end
          @SubAppId = params['SubAppId']
        end
      end

      # ModifyWordSample返回参数结构体
      class ModifyWordSampleResponse < TencentCloud::Common::AbstractModel
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

      # 视频处理任务中的马赛克参数类型
      class MosaicInput < TencentCloud::Common::AbstractModel
        # @param CoordinateOrigin: 原点位置，目前仅支持：
        # <li>TopLeft：表示坐标原点位于视频图像左上角，马赛克原点为图片或文字的左上角。</li>
        # 默认值：TopLeft。
        # @type CoordinateOrigin: String
        # @param XPos: 马赛克原点距离视频图像坐标原点的水平位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示马赛克 XPos 为视频宽度指定百分比，如 10% 表示 XPos 为视频宽度的 10%；</li>
        # <li>当字符串以 px 结尾，表示马赛克 XPos 为指定像素，如 100px 表示 XPos 为 100 像素。</li>
        # 默认值：0px。
        # @type XPos: String
        # @param YPos: 马赛克原点距离视频图像坐标原点的垂直位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示马赛克 YPos 为视频高度指定百分比，如 10% 表示 YPos 为视频高度的 10%；</li>
        # <li>当字符串以 px 结尾，表示马赛克 YPos 为指定像素，如 100px 表示 YPos 为 100 像素。</li>
        # 默认值：0px。
        # @type YPos: String
        # @param Width: 马赛克的宽度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示马赛克 Width 为视频宽度的百分比大小，如 10% 表示 Width 为视频宽度的 10%；</li>
        # <li>当字符串以 px 结尾，表示马赛克 Width 单位为像素，如 100px 表示 Width 为 100 像素。</li>
        # 默认值：10%。
        # @type Width: String
        # @param Height: 马赛克的高度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示马赛克 Height 为视频高度的百分比大小，如 10% 表示 Height 为视频高度的 10%；</li>
        # <li>当字符串以 px 结尾，表示马赛克 Height 单位为像素，如 100px 表示 Height 为 100 像素。</li>
        # 默认值：10%。
        # @type Height: String
        # @param StartTimeOffset: 马赛克的起始时间偏移，单位：秒。不填或填0，表示马赛克从画面出现时开始显现。
        # <li>不填或填0，表示马赛克从画面开始就出现；</li>
        # <li>当数值大于0时（假设为 n），表示马赛克从画面开始的第 n 秒出现；</li>
        # <li>当数值小于0时（假设为 -n），表示马赛克从离画面结束 n 秒前开始出现。</li>
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 马赛克的结束时间偏移，单位：秒。
        # <li>不填或填0，表示马赛克持续到画面结束；</li>
        # <li>当数值大于0时（假设为 n），表示马赛克持续到第 n 秒时消失；</li>
        # <li>当数值小于0时（假设为 -n），表示马赛克持续到离画面结束 n 秒前消失。</li>
        # @type EndTimeOffset: Float

        attr_accessor :CoordinateOrigin, :XPos, :YPos, :Width, :Height, :StartTimeOffset, :EndTimeOffset
        
        def initialize(coordinateorigin=nil, xpos=nil, ypos=nil, width=nil, height=nil, starttimeoffset=nil, endtimeoffset=nil)
          @CoordinateOrigin = coordinateorigin
          @XPos = xpos
          @YPos = ypos
          @Width = width
          @Height = height
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
        end

        def deserialize(params)
          @CoordinateOrigin = params['CoordinateOrigin']
          @XPos = params['XPos']
          @YPos = params['YPos']
          @Width = params['Width']
          @Height = params['Height']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
        end
      end

      # 物体识别任务控制参数
      class ObjectConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 物体识别任务开关，可选值：
        # <li>ON：开启智能物体识别任务；</li>
        # <li>OFF：关闭智能物体识别任务。</li>
        # @type Switch: String
        # @param ObjectLibrary: 物体库选择，可选值：
        # <li>Default：使用默认物体库；</li>
        # <li>UserDefine：使用用户自定义物体库。</li>
        # <li>All：同时使用默认物体库和用户自定义物体库。</li>
        # 默认值： All，同时使用默认物体库和用户自定义物体库。
        # @type ObjectLibrary: String

        attr_accessor :Switch, :ObjectLibrary
        
        def initialize(switch=nil, objectlibrary=nil)
          @Switch = switch
          @ObjectLibrary = objectlibrary
        end

        def deserialize(params)
          @Switch = params['Switch']
          @ObjectLibrary = params['ObjectLibrary']
        end
      end

      # 物体识别任务控制参数
      class ObjectConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 物体识别任务开关，可选值：
        # <li>ON：开启智能物体识别任务；</li>
        # <li>OFF：关闭智能物体识别任务。</li>
        # @type Switch: String
        # @param ObjectLibrary: 物体库选择，可选值：
        # <li>Default：使用默认物体库；</li>
        # <li>UserDefine：使用用户自定义物体库。</li>
        # <li>All：同时使用默认物体库和用户自定义物体库。</li>
        # @type ObjectLibrary: String

        attr_accessor :Switch, :ObjectLibrary
        
        def initialize(switch=nil, objectlibrary=nil)
          @Switch = switch
          @ObjectLibrary = objectlibrary
        end

        def deserialize(params)
          @Switch = params['Switch']
          @ObjectLibrary = params['ObjectLibrary']
        end
      end

      # 文本全文本识别任务控制参数
      class OcrFullTextConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 文本全文识别任务开关，可选值：
        # <li>ON：开启智能文本全文识别任务；</li>
        # <li>OFF：关闭智能文本全文识别任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 文本全文本识别任务控制参数
      class OcrFullTextConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 文本全文识别任务开关，可选值：
        # <li>ON：开启智能文本全文识别任务；</li>
        # <li>OFF：关闭智能文本全文识别任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 文本关键词识别控制参数。
      class OcrWordsConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 文本关键词识别任务开关，可选值：
        # <li>ON：开启文本关键词识别任务；</li>
        # <li>OFF：关闭文本关键词识别任务。</li>
        # @type Switch: String
        # @param LabelSet: 关键词过滤标签，指定需要返回的关键词的标签。如果未填或者为空，则全部结果都返回。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array

        attr_accessor :Switch, :LabelSet
        
        def initialize(switch=nil, labelset=nil)
          @Switch = switch
          @LabelSet = labelset
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
        end
      end

      # 文本关键词识别控制参数。
      class OcrWordsConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 文本关键词识别任务开关，可选值：
        # <li>ON：开启文本关键词识别任务；</li>
        # <li>OFF：关闭文本关键词识别任务。</li>
        # @type Switch: String
        # @param LabelSet: 关键词过滤标签，指定需要返回的关键词的标签。如果未填或者为空，则全部结果都返回。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array

        attr_accessor :Switch, :LabelSet
        
        def initialize(switch=nil, labelset=nil)
          @Switch = switch
          @LabelSet = labelset
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
        end
      end

      # 输出的音频流信息
      class OutputAudioStream < TencentCloud::Common::AbstractModel
        # @param Codec: 音频流的编码格式，可选值：
        # <li>libfdk_aac：适合 mp4 文件。</li>
        # 默认值：libfdk_aac。
        # @type Codec: String
        # @param SampleRate: 音频流的采样率，可选值：
        # <li>16000</li>
        # <li>32000</li>
        # <li>44100</li>
        # <li>48000</li>
        # 单位：Hz。
        # 默认值：16000。
        # @type SampleRate: Integer
        # @param AudioChannel: 音频声道数，可选值：
        # <li>1：单声道 。</li>
        # <li>2：双声道</li>
        # 默认值：2。
        # @type AudioChannel: Integer

        attr_accessor :Codec, :SampleRate, :AudioChannel
        
        def initialize(codec=nil, samplerate=nil, audiochannel=nil)
          @Codec = codec
          @SampleRate = samplerate
          @AudioChannel = audiochannel
        end

        def deserialize(params)
          @Codec = params['Codec']
          @SampleRate = params['SampleRate']
          @AudioChannel = params['AudioChannel']
        end
      end

      # 输出的视频流信息
      class OutputVideoStream < TencentCloud::Common::AbstractModel
        # @param Codec: 视频流的编码格式，可选值：
        # <li>libx264：H.264 编码 </li>
        # 默认值：libx264。
        # @type Codec: String
        # @param Fps: 视频帧率，取值范围：[0, 60]，单位：Hz。
        # 默认值：0，表示和第一个视频轨的第一个视频片段的视频帧率一致。
        # @type Fps: Integer

        attr_accessor :Codec, :Fps
        
        def initialize(codec=nil, fps=nil)
          @Codec = codec
          @Fps = fps
        end

        def deserialize(params)
          @Codec = params['Codec']
          @Fps = params['Fps']
        end
      end

      # ParseStreamingManifest请求参数结构体
      class ParseStreamingManifestRequest < TencentCloud::Common::AbstractModel
        # @param MediaManifestContent: 待解析的索引文件内容。
        # @type MediaManifestContent: String
        # @param ManifestType: 视频索引文件格式。默认 m3u8 格式。
        # <li>m3u8</li>
        # <li>mpd</li>
        # @type ManifestType: String

        attr_accessor :MediaManifestContent, :ManifestType
        
        def initialize(mediamanifestcontent=nil, manifesttype=nil)
          @MediaManifestContent = mediamanifestcontent
          @ManifestType = manifesttype
        end

        def deserialize(params)
          @MediaManifestContent = params['MediaManifestContent']
          @ManifestType = params['ManifestType']
        end
      end

      # ParseStreamingManifest返回参数结构体
      class ParseStreamingManifestResponse < TencentCloud::Common::AbstractModel
        # @param MediaSegmentSet: 分片文件列表。
        # @type MediaSegmentSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MediaSegmentSet, :RequestId
        
        def initialize(mediasegmentset=nil, requestid=nil)
          @MediaSegmentSet = mediasegmentset
          @RequestId = requestid
        end

        def deserialize(params)
          @MediaSegmentSet = params['MediaSegmentSet']
          @RequestId = params['RequestId']
        end
      end

      # 播放器配置详情
      class PlayerConfig < TencentCloud::Common::AbstractModel
        # @param Name: 播放器配置名字。
        # @type Name: String
        # @param Type: 播放器配置类型，取值范围：
        # <li>Preset：系统预置配置；</li>
        # <li>Custom：用户自定义配置。</li>
        # @type Type: String
        # @param DrmSwitch: 播放 DRM 保护的自适应码流开关：
        # <li>ON：开启，表示仅播放 DRM  保护的自适应码流输出；</li>
        # <li>OFF：关闭，表示播放未加密的自适应码流输出。</li>
        # @type DrmSwitch: String
        # @param AdaptiveDynamicStreamingDefinition: 允许输出的未加密的自适应码流模板 ID。
        # @type AdaptiveDynamicStreamingDefinition: Integer
        # @param DrmStreamingsInfo: 允许输出的 DRM 自适应码流模板内容。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DrmStreamingsInfo: :class:`Tencentcloud::Vod.v20180717.models.DrmStreamingsInfo`
        # @param ImageSpriteDefinition: 允许输出的雪碧图模板 ID。
        # @type ImageSpriteDefinition: Integer
        # @param ResolutionNameSet: 播放器对不于不同分辨率的子流展示名字。
        # @type ResolutionNameSet: Array
        # @param CreateTime: 播放器配置创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#iso-.E6.97.A5.E6.9C.9F.E6.A0.BC.E5.BC.8F)。
        # @type CreateTime: String
        # @param UpdateTime: 播放器配置最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#iso-.E6.97.A5.E6.9C.9F.E6.A0.BC.E5.BC.8F)。
        # @type UpdateTime: String
        # @param Domain: 播放时使用的域名。值为 Default，表示使用[默认分发配置](https://cloud.tencent.com/document/product/266/33373)中的域名。
        # @type Domain: String
        # @param Scheme: 播放时使用的 Scheme。取值范围：
        # <li>Default：使用[默认分发配置](https://cloud.tencent.com/document/product/266/33373)中的 Scheme；</li>
        # <li>HTTP；</li>
        # <li>HTTPS。</li>
        # @type Scheme: String
        # @param Comment: 模板描述信息。
        # @type Comment: String

        attr_accessor :Name, :Type, :DrmSwitch, :AdaptiveDynamicStreamingDefinition, :DrmStreamingsInfo, :ImageSpriteDefinition, :ResolutionNameSet, :CreateTime, :UpdateTime, :Domain, :Scheme, :Comment
        
        def initialize(name=nil, type=nil, drmswitch=nil, adaptivedynamicstreamingdefinition=nil, drmstreamingsinfo=nil, imagespritedefinition=nil, resolutionnameset=nil, createtime=nil, updatetime=nil, domain=nil, scheme=nil, comment=nil)
          @Name = name
          @Type = type
          @DrmSwitch = drmswitch
          @AdaptiveDynamicStreamingDefinition = adaptivedynamicstreamingdefinition
          @DrmStreamingsInfo = drmstreamingsinfo
          @ImageSpriteDefinition = imagespritedefinition
          @ResolutionNameSet = resolutionnameset
          @CreateTime = createtime
          @UpdateTime = updatetime
          @Domain = domain
          @Scheme = scheme
          @Comment = comment
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @DrmSwitch = params['DrmSwitch']
          @AdaptiveDynamicStreamingDefinition = params['AdaptiveDynamicStreamingDefinition']
          unless params['DrmStreamingsInfo'].nil?
            @DrmStreamingsInfo = DrmStreamingsInfo.new.deserialize(params[DrmStreamingsInfo])
          end
          @ImageSpriteDefinition = params['ImageSpriteDefinition']
          @ResolutionNameSet = params['ResolutionNameSet']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @Domain = params['Domain']
          @Scheme = params['Scheme']
          @Comment = params['Comment']
        end
      end

      # 语音鉴政任务控制参数
      class PoliticalAsrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 语音鉴政任务开关，可选值：
        # <li>ON：开启语音鉴政任务；</li>
        # <li>OFF：关闭语音鉴政任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 语音鉴政任务控制参数。
      class PoliticalAsrReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 语音鉴政任务开关，可选值：
        # <li>ON：开启语音鉴政任务；</li>
        # <li>OFF：关闭语音鉴政任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 鉴政任务控制参数
      class PoliticalConfigureInfo < TencentCloud::Common::AbstractModel
        # @param ImgReviewInfo: 画面鉴政控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImgReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PoliticalImgReviewTemplateInfo`
        # @param AsrReviewInfo: 语音鉴政控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PoliticalAsrReviewTemplateInfo`
        # @param OcrReviewInfo: 文本鉴政控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PoliticalOcrReviewTemplateInfo`

        attr_accessor :ImgReviewInfo, :AsrReviewInfo, :OcrReviewInfo
        
        def initialize(imgreviewinfo=nil, asrreviewinfo=nil, ocrreviewinfo=nil)
          @ImgReviewInfo = imgreviewinfo
          @AsrReviewInfo = asrreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['ImgReviewInfo'].nil?
            @ImgReviewInfo = PoliticalImgReviewTemplateInfo.new.deserialize(params[ImgReviewInfo])
          end
          unless params['AsrReviewInfo'].nil?
            @AsrReviewInfo = PoliticalAsrReviewTemplateInfo.new.deserialize(params[AsrReviewInfo])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = PoliticalOcrReviewTemplateInfo.new.deserialize(params[OcrReviewInfo])
          end
        end
      end

      # 鉴政任务控制参数。
      class PoliticalConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param ImgReviewInfo: 画面鉴政控制参数。
        # @type ImgReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PoliticalImgReviewTemplateInfoForUpdate`
        # @param AsrReviewInfo: 语音鉴政控制参数。
        # @type AsrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PoliticalAsrReviewTemplateInfoForUpdate`
        # @param OcrReviewInfo: 文本鉴政控制参数。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PoliticalOcrReviewTemplateInfoForUpdate`

        attr_accessor :ImgReviewInfo, :AsrReviewInfo, :OcrReviewInfo
        
        def initialize(imgreviewinfo=nil, asrreviewinfo=nil, ocrreviewinfo=nil)
          @ImgReviewInfo = imgreviewinfo
          @AsrReviewInfo = asrreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['ImgReviewInfo'].nil?
            @ImgReviewInfo = PoliticalImgReviewTemplateInfoForUpdate.new.deserialize(params[ImgReviewInfo])
          end
          unless params['AsrReviewInfo'].nil?
            @AsrReviewInfo = PoliticalAsrReviewTemplateInfoForUpdate.new.deserialize(params[AsrReviewInfo])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = PoliticalOcrReviewTemplateInfoForUpdate.new.deserialize(params[OcrReviewInfo])
          end
        end
      end

      # 画面鉴政任务控制参数
      class PoliticalImgReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 画面鉴政任务开关，可选值：
        # <li>ON：开启画面鉴政任务；</li>
        # <li>OFF：关闭画面鉴政任务。</li>
        # @type Switch: String
        # @param LabelSet: 画面鉴政过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回，可选值为：
        # <li>violation_photo：违规图标；</li>
        # <li>politician：政治人物；</li>
        # <li>entertainment：娱乐人物；</li>
        # <li>sport：体育人物；</li>
        # <li>entrepreneur：商业人物；</li>
        # <li>scholar：教育学者；</li>
        # <li>celebrity：知名人物；</li>
        # <li>military：军事人物。</li>
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 97 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 95 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 画面鉴政任务控制参数。
      class PoliticalImgReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 画面鉴政任务开关，可选值：
        # <li>ON：开启画面鉴政任务；</li>
        # <li>OFF：关闭画面鉴政任务。</li>
        # @type Switch: String
        # @param LabelSet: 画面鉴政过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回，可选值为：
        # <li>violation_photo：违规图标；</li>
        # <li>politician：政治人物；</li>
        # <li>entertainment：娱乐人物；</li>
        # <li>sport：体育人物；</li>
        # <li>entrepreneur：商业人物；</li>
        # <li>scholar：教育学者；</li>
        # <li>celebrity：知名人物；</li>
        # <li>military：军事人物。</li>
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 文本鉴政任务控制参数
      class PoliticalOcrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 文本鉴政任务开关，可选值：
        # <li>ON：开启文本鉴政任务；</li>
        # <li>OFF：关闭文本鉴政任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 文本鉴政任务控制参数。
      class PoliticalOcrReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 文本鉴政任务开关，可选值：
        # <li>ON：开启文本鉴政任务；</li>
        # <li>OFF：关闭文本鉴政任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 语音鉴黄任务控制参数
      class PornAsrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 语音鉴黄任务开关，可选值：
        # <li>ON：开启语音鉴黄任务；</li>
        # <li>OFF：关闭语音鉴黄任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 语音鉴黄任务控制参数。
      class PornAsrReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 语音鉴黄任务开关，可选值：
        # <li>ON：开启语音鉴黄任务；</li>
        # <li>OFF：关闭语音鉴黄任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 鉴黄任务控制参数
      class PornConfigureInfo < TencentCloud::Common::AbstractModel
        # @param ImgReviewInfo: 画面鉴黄控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImgReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PornImgReviewTemplateInfo`
        # @param AsrReviewInfo: 语音鉴黄控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PornAsrReviewTemplateInfo`
        # @param OcrReviewInfo: 文本鉴黄控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PornOcrReviewTemplateInfo`

        attr_accessor :ImgReviewInfo, :AsrReviewInfo, :OcrReviewInfo
        
        def initialize(imgreviewinfo=nil, asrreviewinfo=nil, ocrreviewinfo=nil)
          @ImgReviewInfo = imgreviewinfo
          @AsrReviewInfo = asrreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['ImgReviewInfo'].nil?
            @ImgReviewInfo = PornImgReviewTemplateInfo.new.deserialize(params[ImgReviewInfo])
          end
          unless params['AsrReviewInfo'].nil?
            @AsrReviewInfo = PornAsrReviewTemplateInfo.new.deserialize(params[AsrReviewInfo])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = PornOcrReviewTemplateInfo.new.deserialize(params[OcrReviewInfo])
          end
        end
      end

      # 鉴黄任务控制参数。
      class PornConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param ImgReviewInfo: 画面鉴黄控制参数。
        # @type ImgReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PornImgReviewTemplateInfoForUpdate`
        # @param AsrReviewInfo: 语音鉴黄控制参数。
        # @type AsrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PornAsrReviewTemplateInfoForUpdate`
        # @param OcrReviewInfo: 文本鉴黄控制参数。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.PornOcrReviewTemplateInfoForUpdate`

        attr_accessor :ImgReviewInfo, :AsrReviewInfo, :OcrReviewInfo
        
        def initialize(imgreviewinfo=nil, asrreviewinfo=nil, ocrreviewinfo=nil)
          @ImgReviewInfo = imgreviewinfo
          @AsrReviewInfo = asrreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['ImgReviewInfo'].nil?
            @ImgReviewInfo = PornImgReviewTemplateInfoForUpdate.new.deserialize(params[ImgReviewInfo])
          end
          unless params['AsrReviewInfo'].nil?
            @AsrReviewInfo = PornAsrReviewTemplateInfoForUpdate.new.deserialize(params[AsrReviewInfo])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = PornOcrReviewTemplateInfoForUpdate.new.deserialize(params[OcrReviewInfo])
          end
        end
      end

      # 画面鉴黄任务控制参数
      class PornImgReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 画面鉴黄任务开关，可选值：
        # <li>ON：开启画面鉴黄任务；</li>
        # <li>OFF：关闭画面鉴黄任务。</li>
        # @type Switch: String
        # @param LabelSet: 画面鉴黄过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回，可选值为：
        # <li>porn：色情；</li>
        # <li>vulgar：低俗；</li>
        # <li>intimacy：亲密行为；</li>
        # <li>sexy：性感。</li>
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 90 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 0 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 画面鉴黄任务控制参数。
      class PornImgReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 画面鉴黄任务开关，可选值：
        # <li>ON：开启画面鉴黄任务；</li>
        # <li>OFF：关闭画面鉴黄任务。</li>
        # @type Switch: String
        # @param LabelSet: 画面鉴黄过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回，可选值为：
        # <li>porn：色情；</li>
        # <li>vulgar：低俗；</li>
        # <li>intimacy：亲密行为；</li>
        # <li>sexy：性感。</li>
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 文本鉴黄任务控制参数
      class PornOcrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 文本鉴黄任务开关，可选值：
        # <li>ON：开启文本鉴黄任务；</li>
        # <li>OFF：关闭文本鉴黄任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 文本鉴黄任务控制参数。
      class PornOcrReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 文本鉴黄任务开关，可选值：
        # <li>ON：开启文本鉴黄任务；</li>
        # <li>OFF：关闭文本鉴黄任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 视频处理任务信息
      class ProcedureTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 视频处理任务 ID。
        # @type TaskId: String
        # @param Status: 任务流状态，取值：
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param ErrCode: 已弃用，请使用各个具体任务的 ErrCode。
        # @type ErrCode: Integer
        # @param Message: 已弃用，请使用各个具体任务的 Message。
        # @type Message: String
        # @param FileId: 媒体文件 ID
        # <li>若流程由 [ProcessMedia](https://cloud.tencent.com/document/product/266/33427) 发起，该字段表示 [MediaInfo](https://cloud.tencent.com/document/product/266/31773#MediaInfo) 的 FileId；</li>
        # <li>若流程由 [ProcessMediaByUrl](https://cloud.tencent.com/document/product/266/33426) 发起，该字段表示 [MediaInputInfo](https://cloud.tencent.com/document/product/266/31773#MediaInputInfo) 的 Id。</li>
        # @type FileId: String
        # @param FileName: 媒体文件名称
        # <li>若流程由 [ProcessMedia](https://cloud.tencent.com/document/product/266/33427) 发起，该字段表示 [MediaInfo](https://cloud.tencent.com/document/product/266/31773#MediaInfo) 的 BasicInfo.Name；</li>
        # <li>若流程由 [ProcessMediaByUrl](https://cloud.tencent.com/document/product/266/33426) 发起，该字段表示 [MediaInputInfo](https://cloud.tencent.com/document/product/266/31773#MediaInputInfo) 的 Name。</li>
        # @type FileName: String
        # @param FileUrl: 媒体文件地址
        # <li>若流程由 [ProcessMedia](https://cloud.tencent.com/document/product/266/33427) 发起，该字段表示 [MediaInfo](https://cloud.tencent.com/document/product/266/31773#MediaInfo) 的 BasicInfo.MediaUrl；</li>
        # <li>若流程由 [ProcessMediaByUrl](https://cloud.tencent.com/document/product/266/33426) 发起，该字段表示 [MediaInputInfo](https://cloud.tencent.com/document/product/266/31773#MediaInputInfo) 的 Url。</li>
        # @type FileUrl: String
        # @param MetaData: 原始视频的元信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MetaData: :class:`Tencentcloud::Vod.v20180717.models.MediaMetaData`
        # @param MediaProcessResultSet: 视频处理任务的执行状态与结果。
        # @type MediaProcessResultSet: Array
        # @param AiContentReviewResultSet: 视频内容审核任务的执行状态与结果。
        # @type AiContentReviewResultSet: Array
        # @param AiAnalysisResultSet: 视频内容分析任务的执行状态与结果。
        # @type AiAnalysisResultSet: Array
        # @param AiRecognitionResultSet: 视频内容识别任务的执行状态与结果。
        # @type AiRecognitionResultSet: Array
        # @param TasksPriority: 任务流的优先级，取值范围为 [-10, 10]。
        # @type TasksPriority: Integer
        # @param TasksNotifyMode: 任务流状态变更通知模式。
        # <li>Finish：只有当任务流全部执行完毕时，才发起一次事件通知；</li>
        # <li>Change：只要任务流中每个子任务的状态发生变化，都进行事件通知；</li>
        # <li>None：不接受该任务流回调。</li>
        # @type TasksNotifyMode: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String

        attr_accessor :TaskId, :Status, :ErrCode, :Message, :FileId, :FileName, :FileUrl, :MetaData, :MediaProcessResultSet, :AiContentReviewResultSet, :AiAnalysisResultSet, :AiRecognitionResultSet, :TasksPriority, :TasksNotifyMode, :SessionContext, :SessionId
        
        def initialize(taskid=nil, status=nil, errcode=nil, message=nil, fileid=nil, filename=nil, fileurl=nil, metadata=nil, mediaprocessresultset=nil, aicontentreviewresultset=nil, aianalysisresultset=nil, airecognitionresultset=nil, taskspriority=nil, tasksnotifymode=nil, sessioncontext=nil, sessionid=nil)
          @TaskId = taskid
          @Status = status
          @ErrCode = errcode
          @Message = message
          @FileId = fileid
          @FileName = filename
          @FileUrl = fileurl
          @MetaData = metadata
          @MediaProcessResultSet = mediaprocessresultset
          @AiContentReviewResultSet = aicontentreviewresultset
          @AiAnalysisResultSet = aianalysisresultset
          @AiRecognitionResultSet = airecognitionresultset
          @TasksPriority = taskspriority
          @TasksNotifyMode = tasksnotifymode
          @SessionContext = sessioncontext
          @SessionId = sessionid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          @FileId = params['FileId']
          @FileName = params['FileName']
          @FileUrl = params['FileUrl']
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new.deserialize(params[MetaData])
          end
          @MediaProcessResultSet = params['MediaProcessResultSet']
          @AiContentReviewResultSet = params['AiContentReviewResultSet']
          @AiAnalysisResultSet = params['AiAnalysisResultSet']
          @AiRecognitionResultSet = params['AiRecognitionResultSet']
          @TasksPriority = params['TasksPriority']
          @TasksNotifyMode = params['TasksNotifyMode']
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
        end
      end

      # 任务流模板详情
      class ProcedureTemplate < TencentCloud::Common::AbstractModel
        # @param Name: 任务流名字。
        # @type Name: String
        # @param Type: 任务流模板类型，取值范围：
        # <li>Preset：系统预置任务流模板；</li>
        # <li>Custom：用户自定义任务流模板。</li>
        # @type Type: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param MediaProcessTask: 视频处理类型任务参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaProcessTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskInput`
        # @param AiContentReviewTask: AI 智能内容审核类型任务参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AiContentReviewTask: :class:`Tencentcloud::Vod.v20180717.models.AiContentReviewTaskInput`
        # @param AiAnalysisTask: AI 智能内容分析类型任务参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AiAnalysisTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskInput`
        # @param AiRecognitionTask: AI 内容识别类型任务参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AiRecognitionTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskInput`
        # @param MiniProgramPublishTask: 微信小程序发布任务参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MiniProgramPublishTask: :class:`Tencentcloud::Vod.v20180717.models.WechatMiniProgramPublishTaskInput`
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String

        attr_accessor :Name, :Type, :Comment, :MediaProcessTask, :AiContentReviewTask, :AiAnalysisTask, :AiRecognitionTask, :MiniProgramPublishTask, :CreateTime, :UpdateTime
        
        def initialize(name=nil, type=nil, comment=nil, mediaprocesstask=nil, aicontentreviewtask=nil, aianalysistask=nil, airecognitiontask=nil, miniprogrampublishtask=nil, createtime=nil, updatetime=nil)
          @Name = name
          @Type = type
          @Comment = comment
          @MediaProcessTask = mediaprocesstask
          @AiContentReviewTask = aicontentreviewtask
          @AiAnalysisTask = aianalysistask
          @AiRecognitionTask = airecognitiontask
          @MiniProgramPublishTask = miniprogrampublishtask
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Name = params['Name']
          @Type = params['Type']
          @Comment = params['Comment']
          unless params['MediaProcessTask'].nil?
            @MediaProcessTask = MediaProcessTaskInput.new.deserialize(params[MediaProcessTask])
          end
          unless params['AiContentReviewTask'].nil?
            @AiContentReviewTask = AiContentReviewTaskInput.new.deserialize(params[AiContentReviewTask])
          end
          unless params['AiAnalysisTask'].nil?
            @AiAnalysisTask = AiAnalysisTaskInput.new.deserialize(params[AiAnalysisTask])
          end
          unless params['AiRecognitionTask'].nil?
            @AiRecognitionTask = AiRecognitionTaskInput.new.deserialize(params[AiRecognitionTask])
          end
          unless params['MiniProgramPublishTask'].nil?
            @MiniProgramPublishTask = WechatMiniProgramPublishTaskInput.new.deserialize(params[MiniProgramPublishTask])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # ProcessMediaByProcedure请求参数结构体
      class ProcessMediaByProcedureRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件 ID。
        # @type FileId: String
        # @param ProcedureName: [任务流模板](/document/product/266/11700#.E4.BB.BB.E5.8A.A1.E6.B5.81.E6.A8.A1.E6.9D.BF)名字。
        # @type ProcedureName: String
        # @param TasksPriority: 任务流的优先级，数值越大优先级越高，取值范围是-10到10，不填代表0。
        # @type TasksPriority: Integer
        # @param TasksNotifyMode: 任务流状态变更通知模式，可取值有 Finish，Change 和 None，不填代表 Finish。
        # @type TasksNotifyMode: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param SessionId: 用于去重的识别码，如果一天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param ExtInfo: 保留字段，特殊用途时使用。
        # @type ExtInfo: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :FileId, :ProcedureName, :TasksPriority, :TasksNotifyMode, :SessionContext, :SessionId, :ExtInfo, :SubAppId
        
        def initialize(fileid=nil, procedurename=nil, taskspriority=nil, tasksnotifymode=nil, sessioncontext=nil, sessionid=nil, extinfo=nil, subappid=nil)
          @FileId = fileid
          @ProcedureName = procedurename
          @TasksPriority = taskspriority
          @TasksNotifyMode = tasksnotifymode
          @SessionContext = sessioncontext
          @SessionId = sessionid
          @ExtInfo = extinfo
          @SubAppId = subappid
        end

        def deserialize(params)
          @FileId = params['FileId']
          @ProcedureName = params['ProcedureName']
          @TasksPriority = params['TasksPriority']
          @TasksNotifyMode = params['TasksNotifyMode']
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
          @ExtInfo = params['ExtInfo']
          @SubAppId = params['SubAppId']
        end
      end

      # ProcessMediaByProcedure返回参数结构体
      class ProcessMediaByProcedureResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ProcessMediaByUrl请求参数结构体
      class ProcessMediaByUrlRequest < TencentCloud::Common::AbstractModel
        # @param InputInfo: 输入视频信息，包括视频 URL ， 名称、视频自定义 ID。
        # @type InputInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaInputInfo`
        # @param OutputInfo: 输出文件 COS 路径信息。
        # @type OutputInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaOutputInfo`
        # @param AiContentReviewTask: 视频内容审核类型任务参数。
        # @type AiContentReviewTask: :class:`Tencentcloud::Vod.v20180717.models.AiContentReviewTaskInput`
        # @param AiAnalysisTask: 视频内容分析类型任务参数。
        # @type AiAnalysisTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskInput`
        # @param AiRecognitionTask: 视频内容识别类型任务参数。
        # @type AiRecognitionTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskInput`
        # @param TasksPriority: 任务流的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        # @type TasksPriority: Integer
        # @param TasksNotifyMode: 任务流状态变更通知模式，可取值有 Finish，Change 和 None，不填代表 Finish。
        # @type TasksNotifyMode: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :InputInfo, :OutputInfo, :AiContentReviewTask, :AiAnalysisTask, :AiRecognitionTask, :TasksPriority, :TasksNotifyMode, :SessionContext, :SessionId, :SubAppId
        
        def initialize(inputinfo=nil, outputinfo=nil, aicontentreviewtask=nil, aianalysistask=nil, airecognitiontask=nil, taskspriority=nil, tasksnotifymode=nil, sessioncontext=nil, sessionid=nil, subappid=nil)
          @InputInfo = inputinfo
          @OutputInfo = outputinfo
          @AiContentReviewTask = aicontentreviewtask
          @AiAnalysisTask = aianalysistask
          @AiRecognitionTask = airecognitiontask
          @TasksPriority = taskspriority
          @TasksNotifyMode = tasksnotifymode
          @SessionContext = sessioncontext
          @SessionId = sessionid
          @SubAppId = subappid
        end

        def deserialize(params)
          unless params['InputInfo'].nil?
            @InputInfo = MediaInputInfo.new.deserialize(params[InputInfo])
          end
          unless params['OutputInfo'].nil?
            @OutputInfo = MediaOutputInfo.new.deserialize(params[OutputInfo])
          end
          unless params['AiContentReviewTask'].nil?
            @AiContentReviewTask = AiContentReviewTaskInput.new.deserialize(params[AiContentReviewTask])
          end
          unless params['AiAnalysisTask'].nil?
            @AiAnalysisTask = AiAnalysisTaskInput.new.deserialize(params[AiAnalysisTask])
          end
          unless params['AiRecognitionTask'].nil?
            @AiRecognitionTask = AiRecognitionTaskInput.new.deserialize(params[AiRecognitionTask])
          end
          @TasksPriority = params['TasksPriority']
          @TasksNotifyMode = params['TasksNotifyMode']
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
          @SubAppId = params['SubAppId']
        end
      end

      # ProcessMediaByUrl返回参数结构体
      class ProcessMediaByUrlResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # ProcessMedia请求参数结构体
      class ProcessMediaRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件 ID，即该文件在云点播上的全局唯一标识符，在上传成功后由云点播后台分配。可以在 [视频上传完成事件通知](/document/product/266/7830) 或 [云点播控制台](https://console.cloud.tencent.com/vod/media) 获取该字段。
        # @type FileId: String
        # @param MediaProcessTask: 视频处理类型任务参数。
        # @type MediaProcessTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskInput`
        # @param AiContentReviewTask: 视频内容审核类型任务参数。
        # @type AiContentReviewTask: :class:`Tencentcloud::Vod.v20180717.models.AiContentReviewTaskInput`
        # @param AiAnalysisTask: 视频内容分析类型任务参数。
        # @type AiAnalysisTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskInput`
        # @param AiRecognitionTask: 视频内容识别类型任务参数。
        # @type AiRecognitionTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskInput`
        # @param TasksPriority: 任务流的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        # @type TasksPriority: Integer
        # @param TasksNotifyMode: 任务流状态变更通知模式，可取值有 Finish，Change 和 None，不填代表 Finish。
        # @type TasksNotifyMode: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param ExtInfo: 保留字段，特殊用途时使用。
        # @type ExtInfo: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :FileId, :MediaProcessTask, :AiContentReviewTask, :AiAnalysisTask, :AiRecognitionTask, :TasksPriority, :TasksNotifyMode, :SessionContext, :SessionId, :ExtInfo, :SubAppId
        
        def initialize(fileid=nil, mediaprocesstask=nil, aicontentreviewtask=nil, aianalysistask=nil, airecognitiontask=nil, taskspriority=nil, tasksnotifymode=nil, sessioncontext=nil, sessionid=nil, extinfo=nil, subappid=nil)
          @FileId = fileid
          @MediaProcessTask = mediaprocesstask
          @AiContentReviewTask = aicontentreviewtask
          @AiAnalysisTask = aianalysistask
          @AiRecognitionTask = airecognitiontask
          @TasksPriority = taskspriority
          @TasksNotifyMode = tasksnotifymode
          @SessionContext = sessioncontext
          @SessionId = sessionid
          @ExtInfo = extinfo
          @SubAppId = subappid
        end

        def deserialize(params)
          @FileId = params['FileId']
          unless params['MediaProcessTask'].nil?
            @MediaProcessTask = MediaProcessTaskInput.new.deserialize(params[MediaProcessTask])
          end
          unless params['AiContentReviewTask'].nil?
            @AiContentReviewTask = AiContentReviewTaskInput.new.deserialize(params[AiContentReviewTask])
          end
          unless params['AiAnalysisTask'].nil?
            @AiAnalysisTask = AiAnalysisTaskInput.new.deserialize(params[AiAnalysisTask])
          end
          unless params['AiRecognitionTask'].nil?
            @AiRecognitionTask = AiRecognitionTaskInput.new.deserialize(params[AiRecognitionTask])
          end
          @TasksPriority = params['TasksPriority']
          @TasksNotifyMode = params['TasksNotifyMode']
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
          @ExtInfo = params['ExtInfo']
          @SubAppId = params['SubAppId']
        end
      end

      # ProcessMedia返回参数结构体
      class ProcessMediaResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 语音违禁任务控制参数
      class ProhibitedAsrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 语音违禁任务开关，可选值：
        # <li>ON：开启语音违禁任务；</li>
        # <li>OFF：关闭语音违禁任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 语音违禁任务控制参数
      class ProhibitedAsrReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 语音违禁任务开关，可选值：
        # <li>ON：开启语音违禁任务；</li>
        # <li>OFF：关闭语音违禁任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 违禁任务控制参数
      class ProhibitedConfigureInfo < TencentCloud::Common::AbstractModel
        # @param AsrReviewInfo: 语音违禁控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.ProhibitedAsrReviewTemplateInfo`
        # @param OcrReviewInfo: 文本违禁控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.ProhibitedOcrReviewTemplateInfo`

        attr_accessor :AsrReviewInfo, :OcrReviewInfo
        
        def initialize(asrreviewinfo=nil, ocrreviewinfo=nil)
          @AsrReviewInfo = asrreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['AsrReviewInfo'].nil?
            @AsrReviewInfo = ProhibitedAsrReviewTemplateInfo.new.deserialize(params[AsrReviewInfo])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = ProhibitedOcrReviewTemplateInfo.new.deserialize(params[OcrReviewInfo])
          end
        end
      end

      # 违禁任务控制参数
      class ProhibitedConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param AsrReviewInfo: 语音违禁控制参数。
        # @type AsrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.ProhibitedAsrReviewTemplateInfoForUpdate`
        # @param OcrReviewInfo: 文本违禁控制参数。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.ProhibitedOcrReviewTemplateInfoForUpdate`

        attr_accessor :AsrReviewInfo, :OcrReviewInfo
        
        def initialize(asrreviewinfo=nil, ocrreviewinfo=nil)
          @AsrReviewInfo = asrreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['AsrReviewInfo'].nil?
            @AsrReviewInfo = ProhibitedAsrReviewTemplateInfoForUpdate.new.deserialize(params[AsrReviewInfo])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = ProhibitedOcrReviewTemplateInfoForUpdate.new.deserialize(params[OcrReviewInfo])
          end
        end
      end

      # 文本违禁任务控制参数
      class ProhibitedOcrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 文本违禁任务开关，可选值：
        # <li>ON：开启文本违禁任务；</li>
        # <li>OFF：关闭文本违禁任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 文本违禁任务控制参数
      class ProhibitedOcrReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 文本违禁任务开关，可选值：
        # <li>ON：开启文本违禁任务；</li>
        # <li>OFF：关闭文本违禁任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # PullEvents请求参数结构体
      class PullEventsRequest < TencentCloud::Common::AbstractModel
        # @param ExtInfo: 保留字段，特殊用途时使用。
        # @type ExtInfo: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :ExtInfo, :SubAppId
        
        def initialize(extinfo=nil, subappid=nil)
          @ExtInfo = extinfo
          @SubAppId = subappid
        end

        def deserialize(params)
          @ExtInfo = params['ExtInfo']
          @SubAppId = params['SubAppId']
        end
      end

      # PullEvents返回参数结构体
      class PullEventsResponse < TencentCloud::Common::AbstractModel
        # @param EventSet: 事件列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EventSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :EventSet, :RequestId
        
        def initialize(eventset=nil, requestid=nil)
          @EventSet = eventset
          @RequestId = requestid
        end

        def deserialize(params)
          @EventSet = params['EventSet']
          @RequestId = params['RequestId']
        end
      end

      # PullUpload请求参数结构体
      class PullUploadRequest < TencentCloud::Common::AbstractModel
        # @param MediaUrl: 要拉取的媒体 URL，暂不支持拉取 Dash 格式（可以支持 HLS）。
        # 支持的扩展名详见[媒体类型](https://cloud.tencent.com/document/product/266/9760#.E5.AA.92.E4.BD.93.E7.B1.BB.E5.9E.8B)。
        # @type MediaUrl: String
        # @param MediaName: 媒体名称。
        # @type MediaName: String
        # @param CoverUrl: 要拉取的视频封面 URL。仅支持 gif、jpeg、png 三种图片格式。
        # @type CoverUrl: String
        # @param Procedure: 媒体后续任务操作，详见[上传指定任务流](https://cloud.tencent.com/document/product/266/9759)。
        # @type Procedure: String
        # @param ExpireTime: 媒体文件过期时间，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type ExpireTime: String
        # @param StorageRegion: 指定上传园区，仅适用于对上传地域有特殊需求的用户（目前仅支持北京、上海和重庆园区）。
        # @type StorageRegion: String
        # @param ClassId: 分类ID，用于对媒体进行分类管理，可通过[创建分类](https://cloud.tencent.com/document/product/266/7812)接口，创建分类，获得分类 ID。
        # @type ClassId: Integer
        # @param SessionContext: 来源上下文，用于透传用户请求信息，当指定 Procedure 任务后，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String
        # @param ExtInfo: 保留字段，特殊用途时使用。
        # @type ExtInfo: String
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer
        # @param SourceContext: 来源上下文，用于透传用户请求信息，[上传完成回调](/document/product/266/7830) 将返回该字段值，最长 250 个字符。
        # @type SourceContext: String

        attr_accessor :MediaUrl, :MediaName, :CoverUrl, :Procedure, :ExpireTime, :StorageRegion, :ClassId, :SessionContext, :SessionId, :ExtInfo, :SubAppId, :SourceContext
        
        def initialize(mediaurl=nil, medianame=nil, coverurl=nil, procedure=nil, expiretime=nil, storageregion=nil, classid=nil, sessioncontext=nil, sessionid=nil, extinfo=nil, subappid=nil, sourcecontext=nil)
          @MediaUrl = mediaurl
          @MediaName = medianame
          @CoverUrl = coverurl
          @Procedure = procedure
          @ExpireTime = expiretime
          @StorageRegion = storageregion
          @ClassId = classid
          @SessionContext = sessioncontext
          @SessionId = sessionid
          @ExtInfo = extinfo
          @SubAppId = subappid
          @SourceContext = sourcecontext
        end

        def deserialize(params)
          @MediaUrl = params['MediaUrl']
          @MediaName = params['MediaName']
          @CoverUrl = params['CoverUrl']
          @Procedure = params['Procedure']
          @ExpireTime = params['ExpireTime']
          @StorageRegion = params['StorageRegion']
          @ClassId = params['ClassId']
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
          @ExtInfo = params['ExtInfo']
          @SubAppId = params['SubAppId']
          @SourceContext = params['SourceContext']
        end
      end

      # PullUpload返回参数结构体
      class PullUploadResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 拉取上传视频的任务 ID，可以通过该 ID 查询拉取上传任务的状态。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 视频转拉任务信息
      class PullUploadTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 转拉上传任务 ID。
        # @type TaskId: String
        # @param Status: 任务流状态，取值：
        # <li>PROCESSING：处理中；</li>
        # <li>FINISH：已完成。</li>
        # @type Status: String
        # @param ErrCode: 错误码，0 表示成功，其他值表示失败：
        # <li>40000：输入参数不合法，请检查输入参数；</li>
        # <li>60000：源文件错误（如视频数据损坏），请确认源文件是否正常；</li>
        # <li>70000：内部服务错误，建议重试。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param FileId: 转拉上传完成后生成的视频 ID。
        # @type FileId: String
        # @param MediaBasicInfo: 转拉完成后生成的媒体文件基础信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaBasicInfo: :class:`Tencentcloud::Vod.v20180717.models.MediaBasicInfo`
        # @param FileUrl: 转拉上传完成后生成的播放地址。
        # @type FileUrl: String
        # @param ProcedureTaskId: 若转拉上传时指定了视频处理流程，则该参数为流程任务 ID。
        # @type ProcedureTaskId: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        # @type SessionContext: String
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        # @type SessionId: String

        attr_accessor :TaskId, :Status, :ErrCode, :Message, :FileId, :MediaBasicInfo, :FileUrl, :ProcedureTaskId, :SessionContext, :SessionId
        
        def initialize(taskid=nil, status=nil, errcode=nil, message=nil, fileid=nil, mediabasicinfo=nil, fileurl=nil, proceduretaskid=nil, sessioncontext=nil, sessionid=nil)
          @TaskId = taskid
          @Status = status
          @ErrCode = errcode
          @Message = message
          @FileId = fileid
          @MediaBasicInfo = mediabasicinfo
          @FileUrl = fileurl
          @ProcedureTaskId = proceduretaskid
          @SessionContext = sessioncontext
          @SessionId = sessionid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          @FileId = params['FileId']
          unless params['MediaBasicInfo'].nil?
            @MediaBasicInfo = MediaBasicInfo.new.deserialize(params[MediaBasicInfo])
          end
          @FileUrl = params['FileUrl']
          @ProcedureTaskId = params['ProcedureTaskId']
          @SessionContext = params['SessionContext']
          @SessionId = params['SessionId']
        end
      end

      # PushUrlCache请求参数结构体
      class PushUrlCacheRequest < TencentCloud::Common::AbstractModel
        # @param Urls: 预热的 URL 列表，单次最多指定20个 URL。
        # @type Urls: Array
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Urls, :SubAppId
        
        def initialize(urls=nil, subappid=nil)
          @Urls = urls
          @SubAppId = subappid
        end

        def deserialize(params)
          @Urls = params['Urls']
          @SubAppId = params['SubAppId']
        end
      end

      # PushUrlCache返回参数结构体
      class PushUrlCacheResponse < TencentCloud::Common::AbstractModel
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

      # ResetProcedureTemplate请求参数结构体
      class ResetProcedureTemplateRequest < TencentCloud::Common::AbstractModel
        # @param Name: 任务流名字
        # @type Name: String
        # @param Comment: 模板描述信息，长度限制：256 个字符。
        # @type Comment: String
        # @param MediaProcessTask: 视频处理类型任务参数。
        # @type MediaProcessTask: :class:`Tencentcloud::Vod.v20180717.models.MediaProcessTaskInput`
        # @param AiContentReviewTask: AI 智能内容审核类型任务参数。
        # @type AiContentReviewTask: :class:`Tencentcloud::Vod.v20180717.models.AiContentReviewTaskInput`
        # @param AiAnalysisTask: AI 智能内容分析类型任务参数。
        # @type AiAnalysisTask: :class:`Tencentcloud::Vod.v20180717.models.AiAnalysisTaskInput`
        # @param AiRecognitionTask: AI 内容识别类型任务参数。
        # @type AiRecognitionTask: :class:`Tencentcloud::Vod.v20180717.models.AiRecognitionTaskInput`
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Name, :Comment, :MediaProcessTask, :AiContentReviewTask, :AiAnalysisTask, :AiRecognitionTask, :SubAppId
        
        def initialize(name=nil, comment=nil, mediaprocesstask=nil, aicontentreviewtask=nil, aianalysistask=nil, airecognitiontask=nil, subappid=nil)
          @Name = name
          @Comment = comment
          @MediaProcessTask = mediaprocesstask
          @AiContentReviewTask = aicontentreviewtask
          @AiAnalysisTask = aianalysistask
          @AiRecognitionTask = airecognitiontask
          @SubAppId = subappid
        end

        def deserialize(params)
          @Name = params['Name']
          @Comment = params['Comment']
          unless params['MediaProcessTask'].nil?
            @MediaProcessTask = MediaProcessTaskInput.new.deserialize(params[MediaProcessTask])
          end
          unless params['AiContentReviewTask'].nil?
            @AiContentReviewTask = AiContentReviewTaskInput.new.deserialize(params[AiContentReviewTask])
          end
          unless params['AiAnalysisTask'].nil?
            @AiAnalysisTask = AiAnalysisTaskInput.new.deserialize(params[AiAnalysisTask])
          end
          unless params['AiRecognitionTask'].nil?
            @AiRecognitionTask = AiRecognitionTaskInput.new.deserialize(params[AiRecognitionTask])
          end
          @SubAppId = params['SubAppId']
        end
      end

      # ResetProcedureTemplate返回参数结构体
      class ResetProcedureTemplateResponse < TencentCloud::Common::AbstractModel
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

      # 播放器子流名字信息
      class ResolutionNameInfo < TencentCloud::Common::AbstractModel
        # @param MinEdgeLength: 视频短边长度，单位：像素。
        # @type MinEdgeLength: Integer
        # @param Name: 展示名字。
        # @type Name: String

        attr_accessor :MinEdgeLength, :Name
        
        def initialize(minedgelength=nil, name=nil)
          @MinEdgeLength = minedgelength
          @Name = name
        end

        def deserialize(params)
          @MinEdgeLength = params['MinEdgeLength']
          @Name = params['Name']
        end
      end

      # 对视频做采样截图任务输入参数类型
      class SampleSnapshotTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 采样截图模板 ID。
        # @type Definition: Integer
        # @param WatermarkSet: 水印列表，支持多张图片或文字水印，最大可支持 10 张。
        # @type WatermarkSet: Array

        attr_accessor :Definition, :WatermarkSet
        
        def initialize(definition=nil, watermarkset=nil)
          @Definition = definition
          @WatermarkSet = watermarkset
        end

        def deserialize(params)
          @Definition = params['Definition']
          @WatermarkSet = params['WatermarkSet']
        end
      end

      # 采样截图模板详情
      class SampleSnapshotTemplate < TencentCloud::Common::AbstractModel
        # @param Definition: 采样截图模板唯一标识。
        # @type Definition: Integer
        # @param Type: 模板类型，取值范围：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param Name: 采样截图模板名称。
        # @type Name: String
        # @param Comment: 模板描述信息。
        # @type Comment: String
        # @param Width: 截图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 截图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param Format: 图片格式。
        # @type Format: String
        # @param SampleType: 采样截图类型。
        # @type SampleType: String
        # @param SampleInterval: 采样间隔。
        # @type SampleInterval: Integer
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # <li>white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。</li>
        # <li>gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊。</li>
        # 默认值：black 。
        # @type FillType: String

        attr_accessor :Definition, :Type, :Name, :Comment, :Width, :Height, :ResolutionAdaptive, :Format, :SampleType, :SampleInterval, :CreateTime, :UpdateTime, :FillType
        
        def initialize(definition=nil, type=nil, name=nil, comment=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, sampletype=nil, sampleinterval=nil, createtime=nil, updatetime=nil, filltype=nil)
          @Definition = definition
          @Type = type
          @Name = name
          @Comment = comment
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @Format = format
          @SampleType = sampletype
          @SampleInterval = sampleinterval
          @CreateTime = createtime
          @UpdateTime = updatetime
          @FillType = filltype
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Type = params['Type']
          @Name = params['Name']
          @Comment = params['Comment']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Format = params['Format']
          @SampleType = params['SampleType']
          @SampleInterval = params['SampleInterval']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @FillType = params['FillType']
        end
      end

      # SearchMedia请求参数结构体
      class SearchMediaRequest < TencentCloud::Common::AbstractModel
        # @param Text: 搜索文本，模糊匹配媒体文件名称或描述信息，匹配项越多，匹配度越高，排序越优先。长度限制：64个字符。
        # @type Text: String
        # @param Tags: 标签集合，匹配集合中任意元素。
        # <li>单个标签长度限制：8个字符。</li>
        # <li>数组长度限制：10。</li>
        # @type Tags: Array
        # @param ClassIds: 分类 ID 集合，匹配集合指定 ID 的分类及其所有子类。数组长度限制：10。
        # @type ClassIds: Array
        # @param StartTime: 创建时间的开始时间。
        # <li>大于等于开始时间。</li>
        # <li>格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。</li>
        # @type StartTime: String
        # @param EndTime: 创建时间的结束时间。
        # <li>小于结束时间。</li>
        # <li>格式按照 ISO 8601标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。</li>
        # @type EndTime: String
        # @param SourceType: 媒体文件来源，来源取值参见 [SourceType](https://cloud.tencent.com/document/product/266/31773#MediaSourceData)。
        # @type SourceType: String
        # @param StreamId: 推流 [直播码](https://cloud.tencent.com/document/product/267/5959)。
        # @type StreamId: String
        # @param Vid: 直播录制文件的唯一标识。
        # @type Vid: String
        # @param Sort: 排序方式。
        # <li>Sort.Field 可选值：CreateTime</li>
        # <li>指定 Text 搜索时，将根据匹配度排序，该字段无效</li>
        # @type Sort: :class:`Tencentcloud::Vod.v20180717.models.SortBy`
        # @param Offset: <div id="p_offset">分页返回的起始偏移量，默认值：0。将返回第 Offset 到第 Offset+Limit-1 条。
        # <li>取值范围：Offset + Limit 不超过5000。（参见：<a href="#maxResultsDesc">接口返回结果数限制</a>）</li></div>
        # @type Offset: Integer
        # @param Limit: <div id="p_limit">分页返回的记录条数，默认值：10。将返回第 Offset 到第 Offset+Limit-1 条。
        # <li>取值范围：Offset + Limit 不超过5000。（参见：<a href="#maxResultsDesc">接口返回结果数限制</a>）</li></div>
        # @type Limit: Integer
        # @param Categories: 文件类型：
        # <li>Video: 视频文件</li>
        # <li>Audio: 音频文件</li>
        # <li>Image: 图片文件</li>
        # @type Categories: Array
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Text, :Tags, :ClassIds, :StartTime, :EndTime, :SourceType, :StreamId, :Vid, :Sort, :Offset, :Limit, :Categories, :SubAppId
        
        def initialize(text=nil, tags=nil, classids=nil, starttime=nil, endtime=nil, sourcetype=nil, streamid=nil, vid=nil, sort=nil, offset=nil, limit=nil, categories=nil, subappid=nil)
          @Text = text
          @Tags = tags
          @ClassIds = classids
          @StartTime = starttime
          @EndTime = endtime
          @SourceType = sourcetype
          @StreamId = streamid
          @Vid = vid
          @Sort = sort
          @Offset = offset
          @Limit = limit
          @Categories = categories
          @SubAppId = subappid
        end

        def deserialize(params)
          @Text = params['Text']
          @Tags = params['Tags']
          @ClassIds = params['ClassIds']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @SourceType = params['SourceType']
          @StreamId = params['StreamId']
          @Vid = params['Vid']
          unless params['Sort'].nil?
            @Sort = SortBy.new.deserialize(params[Sort])
          end
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Categories = params['Categories']
          @SubAppId = params['SubAppId']
        end
      end

      # SearchMedia返回参数结构体
      class SearchMediaResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 符合搜索条件的记录总数。
        # <li>最大值：5000。当命中记录数超过5000时，该字段将返回 5000，而非实际命中总数。</li>
        # @type TotalCount: Integer
        # @param MediaInfoSet: 媒体文件信息列表，只包含基础信息（BasicInfo）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MediaInfoSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :MediaInfoSet, :RequestId
        
        def initialize(totalcount=nil, mediainfoset=nil, requestid=nil)
          @TotalCount = totalcount
          @MediaInfoSet = mediainfoset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @MediaInfoSet = params['MediaInfoSet']
          @RequestId = params['RequestId']
        end
      end

      # 视频拆条任务识别控制参数
      class SegmentConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 视频拆条识别任务开关，可选值：
        # <li>ON：开启智能视频拆条识别任务；</li>
        # <li>OFF：关闭智能视频拆条识别任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 视频拆条识别任务控制参数
      class SegmentConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 视频拆条识别任务开关，可选值：
        # <li>ON：开启智能视频拆条识别任务；</li>
        # <li>OFF：关闭智能视频拆条识别任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # SimpleHlsClip请求参数结构体
      class SimpleHlsClipRequest < TencentCloud::Common::AbstractModel
        # @param Url: 需要裁剪的腾讯云点播 HLS 视频 URL。
        # @type Url: String
        # @param StartTimeOffset: 裁剪的开始偏移时间，单位秒。默认 0，即从视频开头开始裁剪。负数表示距离视频结束多少秒开始裁剪。例如 -10 表示从倒数第 10 秒开始裁剪。
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 裁剪的结束偏移时间，单位秒。默认 0，即裁剪到视频尾部。负数表示距离视频结束多少秒结束裁剪。例如 -10 表示到倒数第 10 秒结束裁剪。
        # @type EndTimeOffset: Float
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :Url, :StartTimeOffset, :EndTimeOffset, :SubAppId
        
        def initialize(url=nil, starttimeoffset=nil, endtimeoffset=nil, subappid=nil)
          @Url = url
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
          @SubAppId = subappid
        end

        def deserialize(params)
          @Url = params['Url']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
          @SubAppId = params['SubAppId']
        end
      end

      # SimpleHlsClip返回参数结构体
      class SimpleHlsClipResponse < TencentCloud::Common::AbstractModel
        # @param Url: 裁剪后的视频地址。
        # @type Url: String
        # @param MetaData: 裁剪后的视频元信息。目前`Size`，`Rotate`，`VideoDuration`，`AudioDuration` 几个字段暂时缺省，没有真实数据。
        # @type MetaData: :class:`Tencentcloud::Vod.v20180717.models.MediaMetaData`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Url, :MetaData, :RequestId
        
        def initialize(url=nil, metadata=nil, requestid=nil)
          @Url = url
          @MetaData = metadata
          @RequestId = requestid
        end

        def deserialize(params)
          @Url = params['Url']
          unless params['MetaData'].nil?
            @MetaData = MediaMetaData.new.deserialize(params[MetaData])
          end
          @RequestId = params['RequestId']
        end
      end

      # 截图输出信息（2017 版）
      class SnapshotByTimeOffset2017 < TencentCloud::Common::AbstractModel
        # @param ErrCode: 错误码
        # <li>0：成功；</li>
        # <li>其他值：失败。</li>
        # @type ErrCode: Integer
        # @param TimeOffset: 截图的具体时间点，单位：毫秒。
        # @type TimeOffset: Integer
        # @param Url: 截图输出文件地址。
        # @type Url: String

        attr_accessor :ErrCode, :TimeOffset, :Url
        
        def initialize(errcode=nil, timeoffset=nil, url=nil)
          @ErrCode = errcode
          @TimeOffset = timeoffset
          @Url = url
        end

        def deserialize(params)
          @ErrCode = params['ErrCode']
          @TimeOffset = params['TimeOffset']
          @Url = params['Url']
        end
      end

      # 视频指定时间点截图任务信息，该结构仅用于 2017 版[指定时间点截图](https://cloud.tencent.com/document/product/266/8102)接口发起的任务。
      class SnapshotByTimeOffsetTask2017 < TencentCloud::Common::AbstractModel
        # @param TaskId: 截图任务 ID。
        # @type TaskId: String
        # @param FileId: 截图文件 ID。
        # @type FileId: String
        # @param Definition: 截图规格，参见[指定时间点截图参数模板](https://cloud.tencent.com/document/product/266/33480#.E6.97.B6.E9.97.B4.E7.82.B9.E6.88.AA.E5.9B.BE.E6.A8.A1.E6.9D.BF)。
        # @type Definition: Integer
        # @param SnapshotInfoSet: 截图结果信息。
        # @type SnapshotInfoSet: Array

        attr_accessor :TaskId, :FileId, :Definition, :SnapshotInfoSet
        
        def initialize(taskid=nil, fileid=nil, definition=nil, snapshotinfoset=nil)
          @TaskId = taskid
          @FileId = fileid
          @Definition = definition
          @SnapshotInfoSet = snapshotinfoset
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @FileId = params['FileId']
          @Definition = params['Definition']
          @SnapshotInfoSet = params['SnapshotInfoSet']
        end
      end

      # 对视频按指定时间点截图任务输入参数类型
      class SnapshotByTimeOffsetTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 指定时间点截图模板 ID。
        # @type Definition: Integer
        # @param ExtTimeOffsetSet: 截图时间点列表，时间点支持 s、% 两种格式：
        # <li>当字符串以 s 结尾，表示时间点单位为秒，如 3.5s 表示时间点为第3.5秒；</li>
        # <li>当字符串以 % 结尾，表示时间点为视频时长的百分比大小，如10%表示时间点为视频前第10%的时间。</li>
        # @type ExtTimeOffsetSet: Array
        # @param TimeOffsetSet: 截图时间点列表，单位为<font color=red>毫秒</font>。此参数已不再建议使用，建议您使用 ExtTimeOffsetSet 参数。
        # @type TimeOffsetSet: Array
        # @param WatermarkSet: 水印列表，支持多张图片或文字水印，最大可支持 10 张。
        # @type WatermarkSet: Array

        attr_accessor :Definition, :ExtTimeOffsetSet, :TimeOffsetSet, :WatermarkSet
        
        def initialize(definition=nil, exttimeoffsetset=nil, timeoffsetset=nil, watermarkset=nil)
          @Definition = definition
          @ExtTimeOffsetSet = exttimeoffsetset
          @TimeOffsetSet = timeoffsetset
          @WatermarkSet = watermarkset
        end

        def deserialize(params)
          @Definition = params['Definition']
          @ExtTimeOffsetSet = params['ExtTimeOffsetSet']
          @TimeOffsetSet = params['TimeOffsetSet']
          @WatermarkSet = params['WatermarkSet']
        end
      end

      # 指定时间点截图模板详情
      class SnapshotByTimeOffsetTemplate < TencentCloud::Common::AbstractModel
        # @param Definition: 指定时间点截图模板唯一标识。
        # @type Definition: Integer
        # @param Type: 模板类型，取值范围：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param Name: 指定时间点截图模板名称。
        # @type Name: String
        # @param Comment: 模板描述信息。
        # @type Comment: String
        # @param Width: 截图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 截图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param Format: 图片格式。
        # @type Format: String
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # <li>black：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。</li>
        # <li>black：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊。</li>
        # 默认值：black 。
        # @type FillType: String

        attr_accessor :Definition, :Type, :Name, :Comment, :Width, :Height, :ResolutionAdaptive, :Format, :CreateTime, :UpdateTime, :FillType
        
        def initialize(definition=nil, type=nil, name=nil, comment=nil, width=nil, height=nil, resolutionadaptive=nil, format=nil, createtime=nil, updatetime=nil, filltype=nil)
          @Definition = definition
          @Type = type
          @Name = name
          @Comment = comment
          @Width = width
          @Height = height
          @ResolutionAdaptive = resolutionadaptive
          @Format = format
          @CreateTime = createtime
          @UpdateTime = updatetime
          @FillType = filltype
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Type = params['Type']
          @Name = params['Name']
          @Comment = params['Comment']
          @Width = params['Width']
          @Height = params['Height']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Format = params['Format']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @FillType = params['FillType']
        end
      end

      # 排序依据
      class SortBy < TencentCloud::Common::AbstractModel
        # @param Field: 排序字段
        # @type Field: String
        # @param Order: 排序方式，可选值：Asc（升序）、Desc（降序）
        # @type Order: String

        attr_accessor :Field, :Order
        
        def initialize(field=nil, order=nil)
          @Field = field
          @Order = order
        end

        def deserialize(params)
          @Field = params['Field']
          @Order = params['Order']
        end
      end

      # 指定规格任务统计数据。
      class SpecificationDataItem < TencentCloud::Common::AbstractModel
        # @param Specification: 任务规格。
        # @type Specification: String
        # @param Data: 统计数据。
        # @type Data: Array

        attr_accessor :Specification, :Data
        
        def initialize(specification=nil, data=nil)
          @Specification = specification
          @Data = data
        end

        def deserialize(params)
          @Specification = params['Specification']
          @Data = params['Data']
        end
      end

      # 统计数据
      class StatDataItem < TencentCloud::Common::AbstractModel
        # @param Time: 数据所在时间区间的开始时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。如：当时间粒度为天，2018-12-01T00:00:00+08:00，表示2018年12月1日（含）到2018年12月2日（不含）区间。
        # <li>表示小时级别数据时，2019-08-22T00:00:00+08:00表示2019-08-22日0点到1点的统计数据。</li>
        # <li>表示天级别数据时，2019-08-22T00:00:00+08:00表示2019-08-22日的统计数据。</li>
        # @type Time: String
        # @param Value: 数据大小。
        # <li>存储空间的数据，单位是字节。</li>
        # <li>转码时长的数据，单位是秒。</li>
        # <li>流量数据，单位是字节。</li>
        # <li>带宽数据，单位是比特每秒。</li>
        # @type Value: Integer

        attr_accessor :Time, :Value
        
        def initialize(time=nil, value=nil)
          @Time = time
          @Value = value
        end

        def deserialize(params)
          @Time = params['Time']
          @Value = params['Value']
        end
      end

      # 贴图轨上的贴图信息。
      class StickerTrackItem < TencentCloud::Common::AbstractModel
        # @param SourceMedia: 贴图素材的媒体文件来源。可以是点播的文件 ID，也可以是其它文件的 URL。
        # @type SourceMedia: String
        # @param Duration: 贴图的持续时间，单位为秒。
        # @type Duration: Float
        # @param StartTime: 贴图在轨道上的起始时间，单位为秒。
        # @type StartTime: Float
        # @param CoordinateOrigin: 原点位置，取值有：
        # <li>Center：坐标原点为中心位置，如画布中心。</li>
        # 默认值：Center。
        # @type CoordinateOrigin: String
        # @param XPos: 贴图原点距离画布原点的水平位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示贴图 XPos 为画布宽度指定百分比的位置，如 10% 表示 XPos 为画布宽度的 10%。</li><li>当字符串以 px 结尾，表示贴图 XPos 单位为像素，如 100px 表示 XPos 为 100 像素。</li>
        # 默认值：0px。
        # @type XPos: String
        # @param YPos: 贴图原点距离画布原点的垂直位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示贴图 YPos 为画布高度指定百分比的位置，如 10% 表示 YPos 为画布高度的 10%。</li>
        # <li>当字符串以 px 结尾，表示贴图 YPos 单位为像素，如 100px 表示 YPos 为 100 像素。</li>
        # 默认值：0px。
        # @type YPos: String
        # @param Width: 贴图的宽度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示贴图 Width 为画布宽度的百分比大小，如 10% 表示 Width 为画布宽度的 10%。</li>
        # <li>当字符串以 px 结尾，表示贴图 Width 单位为像素，如 100px 表示 Width 为 100 像素。</li>
        # <li>当 Width、Height 均为空，则 Width 和 Height 取贴图素材本身的 Width、Height。</li>
        # <li>当 Width 为空0，Height 非空，则 Width 按比例缩放</li>
        # <li>当 Width 非空，Height 为空，则 Height 按比例缩放。</li>
        # @type Width: String
        # @param Height: 贴图的高度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示贴图 Height 为画布高度的百分比大小，如 10% 表示 Height 为画布高度的 10%。</li>
        # <li>当字符串以 px 结尾，表示贴图 Height 单位为像素，如 100px 表示 Hieght 为 100 像素。</li>
        # <li>当 Width、Height 均为空，则 Width 和 Height 取贴图素材本身的 Width、Height。</li>
        # <li>当 Width 为空，Height 非空，则 Width 按比例缩放</li>
        # <li>当 Width 非空，Height 为空，则 Height 按比例缩放。</li>
        # @type Height: String
        # @param ImageOperations: 对贴图进行的操作，如图像旋转等。
        # @type ImageOperations: Array

        attr_accessor :SourceMedia, :Duration, :StartTime, :CoordinateOrigin, :XPos, :YPos, :Width, :Height, :ImageOperations
        
        def initialize(sourcemedia=nil, duration=nil, starttime=nil, coordinateorigin=nil, xpos=nil, ypos=nil, width=nil, height=nil, imageoperations=nil)
          @SourceMedia = sourcemedia
          @Duration = duration
          @StartTime = starttime
          @CoordinateOrigin = coordinateorigin
          @XPos = xpos
          @YPos = ypos
          @Width = width
          @Height = height
          @ImageOperations = imageoperations
        end

        def deserialize(params)
          @SourceMedia = params['SourceMedia']
          @Duration = params['Duration']
          @StartTime = params['StartTime']
          @CoordinateOrigin = params['CoordinateOrigin']
          @XPos = params['XPos']
          @YPos = params['YPos']
          @Width = params['Width']
          @Height = params['Height']
          @ImageOperations = params['ImageOperations']
        end
      end

      # 子应用信息。
      class SubAppIdInfo < TencentCloud::Common::AbstractModel
        # @param SubAppId: 子应用 ID。
        # @type SubAppId: Integer
        # @param Name: 子应用名称。
        # @type Name: String
        # @param Description: 子应用简介。
        # @type Description: String
        # @param CreateTime: 子应用创建时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param Status: 子应用状态，有效值：
        # <li>On：启用；</li>
        # <li>Off：停用。</li>
        # @type Status: String

        attr_accessor :SubAppId, :Name, :Description, :CreateTime, :Status
        
        def initialize(subappid=nil, name=nil, description=nil, createtime=nil, status=nil)
          @SubAppId = subappid
          @Name = name
          @Description = description
          @CreateTime = createtime
          @Status = status
        end

        def deserialize(params)
          @SubAppId = params['SubAppId']
          @Name = params['Name']
          @Description = params['Description']
          @CreateTime = params['CreateTime']
          @Status = params['Status']
        end
      end

      # SVG水印模板输入参数
      class SvgWatermarkInput < TencentCloud::Common::AbstractModel
        # @param Width: 水印的宽度，支持 px，%，W%，H%，S%，L% 六种格式：
        # <li>当字符串以 px 结尾，表示水印 Width 单位为像素，如 100px 表示 Width 为 100 像素；当填 0px 且
        #  Height 不为 0px 时，表示水印的宽度按原始 SVG 图像等比缩放；当 Width、Height 都填 0px 时，表示水印的宽度取原始 SVG 图像的宽度；</li>
        # <li>当字符串以 W% 结尾，表示水印 Width 为视频宽度的百分比大小，如 10W% 表示 Width 为视频宽度的 10%；</li>
        # <li>当字符串以 H% 结尾，表示水印 Width 为视频高度的百分比大小，如 10H% 表示 Width 为视频高度的 10%；</li>
        # <li>当字符串以 S% 结尾，表示水印 Width 为视频短边的百分比大小，如 10S% 表示 Width 为视频短边的 10%；</li>
        # <li>当字符串以 L% 结尾，表示水印 Width 为视频长边的百分比大小，如 10L% 表示 Width 为视频长边的 10%；</li>
        # <li>当字符串以 % 结尾时，含义同 W%。</li>
        # 默认值为 10W%。
        # @type Width: String
        # @param Height: 水印的高度，支持 px，W%，H%，S%，L% 六种格式：
        # <li>当字符串以 px 结尾，表示水印 Height 单位为像素，如 100px 表示 Height 为 100 像素；当填 0px 且
        #  Width 不为 0px 时，表示水印的高度按原始 SVG 图像等比缩放；当 Width、Height 都填 0px 时，表示水印的高度取原始 SVG 图像的高度；</li>
        # <li>当字符串以 W% 结尾，表示水印 Height 为视频宽度的百分比大小，如 10W% 表示 Height 为视频宽度的 10%；</li>
        # <li>当字符串以 H% 结尾，表示水印 Height 为视频高度的百分比大小，如 10H% 表示 Height 为视频高度的 10%；</li>
        # <li>当字符串以 S% 结尾，表示水印 Height 为视频短边的百分比大小，如 10S% 表示 Height 为视频短边的 10%；</li>
        # <li>当字符串以 L% 结尾，表示水印 Height 为视频长边的百分比大小，如 10L% 表示 Height 为视频长边的 10%；</li>
        # <li>当字符串以 % 结尾时，含义同 H%。</li>
        # 默认值为 0px。
        # @type Height: String

        attr_accessor :Width, :Height
        
        def initialize(width=nil, height=nil)
          @Width = width
          @Height = height
        end

        def deserialize(params)
          @Width = params['Width']
          @Height = params['Height']
        end
      end

      # SVG水印模板输入参数
      class SvgWatermarkInputForUpdate < TencentCloud::Common::AbstractModel
        # @param Width: 水印的宽度，支持 px，%，W%，H%，S%，L% 六种格式：
        # <li>当字符串以 px 结尾，表示水印 Width 单位为像素，如 100px 表示 Width 为 100 像素；当填 0px 且
        #  Height 不为 0px 时，表示水印的宽度按原始 SVG 图像等比缩放；当 Width、Height 都填 0px 时，表示水印的宽度取原始 SVG 图像的宽度；</li>
        # <li>当字符串以 W% 结尾，表示水印 Width 为视频宽度的百分比大小，如 10W% 表示 Width 为视频宽度的 10%；</li>
        # <li>当字符串以 H% 结尾，表示水印 Width 为视频高度的百分比大小，如 10H% 表示 Width 为视频高度的 10%；</li>
        # <li>当字符串以 S% 结尾，表示水印 Width 为视频短边的百分比大小，如 10S% 表示 Width 为视频短边的 10%；</li>
        # <li>当字符串以 L% 结尾，表示水印 Width 为视频长边的百分比大小，如 10L% 表示 Width 为视频长边的 10%；</li>
        # <li>当字符串以 % 结尾时，含义同 W%。</li>
        # 默认值为 10W%。
        # @type Width: String
        # @param Height: 水印的高度，支持 px，%，W%，H%，S%，L% 六种格式：
        # <li>当字符串以 px 结尾，表示水印 Height 单位为像素，如 100px 表示 Height 为 100 像素；当填 0px 且
        #  Width 不为 0px 时，表示水印的高度按原始 SVG 图像等比缩放；当 Width、Height 都填 0px 时，表示水印的高度取原始 SVG 图像的高度；</li>
        # <li>当字符串以 W% 结尾，表示水印 Height 为视频宽度的百分比大小，如 10W% 表示 Height 为视频宽度的 10%；</li>
        # <li>当字符串以 H% 结尾，表示水印 Height 为视频高度的百分比大小，如 10H% 表示 Height 为视频高度的 10%；</li>
        # <li>当字符串以 S% 结尾，表示水印 Height 为视频短边的百分比大小，如 10S% 表示 Height 为视频短边的 10%；</li>
        # <li>当字符串以 L% 结尾，表示水印 Height 为视频长边的百分比大小，如 10L% 表示 Height 为视频长边的 10%；</li>
        # <li>当字符串以 % 结尾时，含义同 H%。
        # 默认值为 0px。
        # @type Height: String
        # @param CycleConfig: 水印周期配置，用于配置水印周期性地显示与隐藏。
        # 主要使用场景是：为了视频防遮标，在视频多个地方设置水印，这些水印按固定顺序周期性地显示与隐藏。
        # 例如，设置 A、B、C、D 4 个水印分别位于视频的左上角、右上角、右下角、左下角处，视频开始时，{ A 显示 5 秒 -> B 显示 5 秒 -> C 显示 5 秒 -> D 显示 5 秒 } -> A 显示 5 秒 -> B 显示 5 秒 -> ...，任何时刻只显示一处水印。
        # 花括号 {} 表示由 A、B、C、D 4 个水印组成的大周期，可以看出每个大周期持续 20 秒。
        # 可以看出，A、B、C、D 都是周期性地显示 5 秒、隐藏 15 秒，且四者有固定的显示顺序。
        # 此配置项即用来描述单个水印的周期配置。
        # @type CycleConfig: :class:`Tencentcloud::Vod.v20180717.models.WatermarkCycleConfigForUpdate`

        attr_accessor :Width, :Height, :CycleConfig
        
        def initialize(width=nil, height=nil, cycleconfig=nil)
          @Width = width
          @Height = height
          @CycleConfig = cycleconfig
        end

        def deserialize(params)
          @Width = params['Width']
          @Height = params['Height']
          unless params['CycleConfig'].nil?
            @CycleConfig = WatermarkCycleConfigForUpdate.new.deserialize(params[CycleConfig])
          end
        end
      end

      # 极速高清参数配置。
      class TEHDConfig < TencentCloud::Common::AbstractModel
        # @param Type: 极速高清类型，可选值：
        # <li>TEHD-100：极速高清-100。</li>
        # 不填代表不启用极速高清。
        # @type Type: String
        # @param MaxVideoBitrate: 视频码率上限，当 Type 指定了极速高清类型时有效。
        # 不填或填0表示不设视频码率上限。
        # @type MaxVideoBitrate: Integer

        attr_accessor :Type, :MaxVideoBitrate
        
        def initialize(type=nil, maxvideobitrate=nil)
          @Type = type
          @MaxVideoBitrate = maxvideobitrate
        end

        def deserialize(params)
          @Type = params['Type']
          @MaxVideoBitrate = params['MaxVideoBitrate']
        end
      end

      # 极速高清参数配置。
      class TEHDConfigForUpdate < TencentCloud::Common::AbstractModel
        # @param Type: 极速高清类型，可选值：
        # <li>TEHD-100：极速高清-100。</li>
        # 不填代表不修改。
        # @type Type: String
        # @param MaxVideoBitrate: 视频码率上限，不填代表不修改。
        # @type MaxVideoBitrate: Integer

        attr_accessor :Type, :MaxVideoBitrate
        
        def initialize(type=nil, maxvideobitrate=nil)
          @Type = type
          @MaxVideoBitrate = maxvideobitrate
        end

        def deserialize(params)
          @Type = params['Type']
          @MaxVideoBitrate = params['MaxVideoBitrate']
        end
      end

      # 智能标签任务控制参数
      class TagConfigureInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 智能标签任务开关，可选值：
        # <li>ON：开启智能标签任务；</li>
        # <li>OFF：关闭智能标签任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 智能标签任务控制参数
      class TagConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 智能标签任务开关，可选值：
        # <li>ON：开启智能标签任务；</li>
        # <li>OFF：关闭智能标签任务。</li>
        # @type Switch: String

        attr_accessor :Switch
        
        def initialize(switch=nil)
          @Switch = switch
        end

        def deserialize(params)
          @Switch = params['Switch']
        end
      end

      # 任务概要信息
      class TaskSimpleInfo < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: String
        # @param TaskType: 任务类型，取值：
        # <li>Procedure：视频处理任务；</li>
        # <li>EditMedia：视频编辑任务</li>
        # <li>WechatDistribute：微信发布任务。</li>
        # 兼容 2017 版的任务类型：
        # <li>Transcode：视频转码任务；</li>
        # <li>SnapshotByTimeOffset：视频截图任务；</li>
        # <li>Concat：视频拼接任务；</li>
        # <li>Clip：视频剪辑任务；</li>
        # <li>ImageSprites：截取雪碧图任务。</li>
        # @type TaskType: String
        # @param CreateTime: 任务创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param BeginProcessTime: 任务开始执行时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。若任务尚未开始，该字段为空。
        # @type BeginProcessTime: String
        # @param FinishTime: 任务结束时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。若任务尚未完成，该字段为空。
        # @type FinishTime: String
        # @param SessionId: 用于去重的识别码，如果七天内曾有过相同的识别码的请求。
        # @type SessionId: String
        # @param SessionContext: 来源上下文，用于透传用户请求信息。
        # @type SessionContext: String

        attr_accessor :TaskId, :TaskType, :CreateTime, :BeginProcessTime, :FinishTime, :SessionId, :SessionContext
        
        def initialize(taskid=nil, tasktype=nil, createtime=nil, beginprocesstime=nil, finishtime=nil, sessionid=nil, sessioncontext=nil)
          @TaskId = taskid
          @TaskType = tasktype
          @CreateTime = createtime
          @BeginProcessTime = beginprocesstime
          @FinishTime = finishtime
          @SessionId = sessionid
          @SessionContext = sessioncontext
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @TaskType = params['TaskType']
          @CreateTime = params['CreateTime']
          @BeginProcessTime = params['BeginProcessTime']
          @FinishTime = params['FinishTime']
          @SessionId = params['SessionId']
          @SessionContext = params['SessionContext']
        end
      end

      # 视频处理任务统计数据。
      class TaskStatData < TencentCloud::Common::AbstractModel
        # @param TaskType: 任务类型。
        # <li>Transcode: 转码</li>
        # <li>Snapshot: 截图</li>
        # @type TaskType: String
        # @param Summary: 任务数统计数据概览。
        # <li>Transcode: 用量单位为秒</li>
        # @type Summary: Array
        # @param Details: 不同规格任务统计数据详情。
        # 转码规格：
        # <li>Remuxing: 转封装</li>
        # <li>Audio: 音频转码</li>
        # <li>Standard.H264.SD: H.264编码方式标清转码</li>
        # <li>Standard.H264.HD: H.264编码方式高清转码</li>
        # <li>Standard.H264.FHD: H.264编码方式全高清转码</li>
        # <li>Standard.H264.2K: H.264编码方式2K转码</li>
        # <li>Standard.H264.4K: H.264编码方式4K转码</li>
        # <li>Standard.H265.SD: H.265编码方式标清转码</li>
        # <li>Standard.H265.HD: H.265编码方式高清转码</li>
        # <li>Standard.H265.FHD: H.265编码方式全高清转码</li>
        # <li>Standard.H265.2K: H.265编码方式2K转码</li>
        # <li>Standard.H265.4K: H.265编码方式4K转码</li>
        # <li>TESHD-10.H264.SD: H.264编码方式标清极速高清转码</li>
        # <li>TESHD-10.H264.HD: H.264编码方式高清极速高清转码</li>
        # <li>TESHD-10.H264.FHD: H.264编码方式全高清极速高清转码</li>
        # <li>TESHD-10.H264.2K: H.264编码方式2K极速高清转码</li>
        # <li>TESHD-10.H264.4K: H.264编码方式4K极速高清转码</li>
        # <li>TESHD-10.H265.SD: H.265编码方式标清极速高清转码</li>
        # <li>TESHD-10.H265.HD: H.265编码方式高清极速高清转码</li>
        # <li>TESHD-10.H265.FHD: H.265编码方式全高清极速高清转码</li>
        # <li>TESHD-10.H265.2K: H.265编码方式2K极速高清转码</li>
        # <li>TESHD-10.H265.4K: H.265编码方式4K极速高清转码</li>
        # <li>Edit.Audio: 音频编辑</li>
        # <li>Edit.H264.SD: H.264编码方式标清视频编辑</li>
        # <li>Edit.H264.HD: H.264编码方式高清视频编辑</li>
        # <li>Edit.H264.FHD: H.264编码方式全高清视频编辑</li>
        # <li>Edit.H264.2K: H.264编码方式2K视频编辑</li>
        # <li>Edit.H264.4K: H.264编码方式4K视频编辑</li>
        # <li>Edit.H265.SD: H.265编码方式标清视频编辑</li>
        # <li>Edit.H265.HD: H.265编码方式高清视频编辑</li>
        # <li>Edit.H265.FHD: H.265编码方式全高清视频编辑</li>
        # <li>Edit.H265.2K: H.265编码方式2K视频编辑</li>
        # <li>Edit.H265.4K: H.265编码方式4K视频编辑</li>
        # @type Details: Array

        attr_accessor :TaskType, :Summary, :Details
        
        def initialize(tasktype=nil, summary=nil, details=nil)
          @TaskType = tasktype
          @Summary = summary
          @Details = details
        end

        def deserialize(params)
          @TaskType = params['TaskType']
          @Summary = params['Summary']
          @Details = params['Details']
        end
      end

      # 任务统计数据，包括任务数和用量。
      class TaskStatDataItem < TencentCloud::Common::AbstractModel
        # @param Time: 数据所在时间区间的开始时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#52)。如：当时间粒度为天，2018-12-01T00:00:00+08:00，表示2018年12月1日（含）到2018年12月2日（不含）区间。
        # @type Time: String
        # @param Count: 任务数。
        # @type Count: Integer
        # @param Usage: 任务用量。
        # @type Usage: Integer

        attr_accessor :Time, :Count, :Usage
        
        def initialize(time=nil, count=nil, usage=nil)
          @Time = time
          @Count = count
          @Usage = usage
        end

        def deserialize(params)
          @Time = params['Time']
          @Count = params['Count']
          @Usage = params['Usage']
        end
      end

      # 临时凭证
      class TempCertificate < TencentCloud::Common::AbstractModel
        # @param SecretId: 临时安全证书 Id。
        # @type SecretId: String
        # @param SecretKey: 临时安全证书 Key。
        # @type SecretKey: String
        # @param Token: Token 值。
        # @type Token: String
        # @param ExpiredTime: 证书无效的时间，返回 Unix 时间戳，精确到秒。
        # @type ExpiredTime: Integer

        attr_accessor :SecretId, :SecretKey, :Token, :ExpiredTime
        
        def initialize(secretid=nil, secretkey=nil, token=nil, expiredtime=nil)
          @SecretId = secretid
          @SecretKey = secretkey
          @Token = token
          @ExpiredTime = expiredtime
        end

        def deserialize(params)
          @SecretId = params['SecretId']
          @SecretKey = params['SecretKey']
          @Token = params['Token']
          @ExpiredTime = params['ExpiredTime']
        end
      end

      # 鉴恐任务控制参数
      class TerrorismConfigureInfo < TencentCloud::Common::AbstractModel
        # @param ImgReviewInfo: 画面鉴恐任务控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImgReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.TerrorismImgReviewTemplateInfo`
        # @param OcrReviewInfo: 文字鉴恐任务控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.TerrorismOcrReviewTemplateInfo`

        attr_accessor :ImgReviewInfo, :OcrReviewInfo
        
        def initialize(imgreviewinfo=nil, ocrreviewinfo=nil)
          @ImgReviewInfo = imgreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['ImgReviewInfo'].nil?
            @ImgReviewInfo = TerrorismImgReviewTemplateInfo.new.deserialize(params[ImgReviewInfo])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = TerrorismOcrReviewTemplateInfo.new.deserialize(params[OcrReviewInfo])
          end
        end
      end

      # 鉴恐任务控制参数。
      class TerrorismConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param ImgReviewInfo: 画面鉴恐任务控制参数。
        # @type ImgReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.TerrorismImgReviewTemplateInfoForUpdate`
        # @param OcrReviewInfo: 文本鉴恐任务控制参数。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.TerrorismOcrReviewTemplateInfoForUpdate`

        attr_accessor :ImgReviewInfo, :OcrReviewInfo
        
        def initialize(imgreviewinfo=nil, ocrreviewinfo=nil)
          @ImgReviewInfo = imgreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['ImgReviewInfo'].nil?
            @ImgReviewInfo = TerrorismImgReviewTemplateInfoForUpdate.new.deserialize(params[ImgReviewInfo])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = TerrorismOcrReviewTemplateInfoForUpdate.new.deserialize(params[OcrReviewInfo])
          end
        end
      end

      # 画面鉴恐任务控制参数
      class TerrorismImgReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 画面鉴恐任务开关，可选值：
        # <li>ON：开启画面鉴恐任务；</li>
        # <li>OFF：关闭画面鉴恐任务。</li>
        # @type Switch: String
        # @param LabelSet: 画面鉴恐过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回，可选值为：
        # <li>guns：武器枪支；</li>
        # <li>crowd：人群聚集；</li>
        # <li>bloody：血腥画面；</li>
        # <li>police：警察部队；</li>
        # <li>banners：暴恐旗帜；</li>
        # <li>militant：武装分子；</li>
        # <li>explosion：爆炸火灾；</li>
        # <li>terrorists：暴恐人物。</li>
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 90 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 80 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 画面鉴恐任务控制参数。
      class TerrorismImgReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 画面鉴恐任务开关，可选值：
        # <li>ON：开启画面鉴恐任务；</li>
        # <li>OFF：关闭画面鉴恐任务。</li>
        # @type Switch: String
        # @param LabelSet: 画面鉴恐过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回，可选值为：
        # <li>guns：武器枪支；</li>
        # <li>crowd：人群聚集；</li>
        # <li>bloody：血腥画面；</li>
        # <li>police：警察部队；</li>
        # <li>banners：暴恐旗帜；</li>
        # <li>militant：武装分子；</li>
        # <li>explosion：爆炸火灾；</li>
        # <li>terrorists：暴恐人物。</li>
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 文本鉴恐任务控制参数
      class TerrorismOcrReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 文本鉴恐任务开关，可选值：
        # <li>ON：开启文本鉴恐任务；</li>
        # <li>OFF：关闭文本鉴恐任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 文本鉴恐任务控制参数
      class TerrorismOcrReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 文本鉴恐任务开关，可选值：
        # <li>ON：开启文本鉴恐任务；</li>
        # <li>OFF：关闭文本鉴恐任务。</li>
        # @type Switch: String
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 文字水印模板
      class TextWatermarkTemplateInput < TencentCloud::Common::AbstractModel
        # @param FontType: 字体类型，目前可以支持两种：
        # <li>simkai.ttf：可以支持中文和英文；</li>
        # <li>arial.ttf：仅支持英文。</li>
        # @type FontType: String
        # @param FontSize: 字体大小，格式：Npx，N 为数值。
        # @type FontSize: String
        # @param FontColor: 字体颜色，格式：0xRRGGBB，默认值：0xFFFFFF（白色）。
        # @type FontColor: String
        # @param FontAlpha: 文字透明度，取值范围：(0, 1]
        # <li>0：完全透明</li>
        # <li>1：完全不透明</li>
        # 默认值：1。
        # @type FontAlpha: Float

        attr_accessor :FontType, :FontSize, :FontColor, :FontAlpha
        
        def initialize(fonttype=nil, fontsize=nil, fontcolor=nil, fontalpha=nil)
          @FontType = fonttype
          @FontSize = fontsize
          @FontColor = fontcolor
          @FontAlpha = fontalpha
        end

        def deserialize(params)
          @FontType = params['FontType']
          @FontSize = params['FontSize']
          @FontColor = params['FontColor']
          @FontAlpha = params['FontAlpha']
        end
      end

      # 文字水印模板
      class TextWatermarkTemplateInputForUpdate < TencentCloud::Common::AbstractModel
        # @param FontType: 字体类型，目前可以支持两种：
        # <li>simkai.ttf：可以支持中文和英文；</li>
        # <li>arial.ttf：仅支持英文。</li>
        # @type FontType: String
        # @param FontSize: 字体大小，格式：Npx，N 为数值。
        # @type FontSize: String
        # @param FontColor: 字体颜色，格式：0xRRGGBB，默认值：0xFFFFFF（白色）。
        # @type FontColor: String
        # @param FontAlpha: 文字透明度，取值范围：(0, 1]
        # <li>0：完全透明</li>
        # <li>1：完全不透明</li>
        # @type FontAlpha: Float

        attr_accessor :FontType, :FontSize, :FontColor, :FontAlpha
        
        def initialize(fonttype=nil, fontsize=nil, fontcolor=nil, fontalpha=nil)
          @FontType = fonttype
          @FontSize = fontsize
          @FontColor = fontcolor
          @FontAlpha = fontalpha
        end

        def deserialize(params)
          @FontType = params['FontType']
          @FontSize = params['FontSize']
          @FontColor = params['FontColor']
          @FontAlpha = params['FontAlpha']
        end
      end

      # 视频转码播放信息（2017 版）
      class TranscodePlayInfo2017 < TencentCloud::Common::AbstractModel
        # @param Url: 播放地址。
        # @type Url: String
        # @param Definition: 转码规格 ID，参见[转码参数模板](https://cloud.tencent.com/document/product/266/33476)。
        # @type Definition: Integer
        # @param Bitrate: 视频流码率平均值与音频流码率平均值之和， 单位：bps。
        # @type Bitrate: Integer
        # @param Height: 视频流高度的最大值，单位：px。
        # @type Height: Integer
        # @param Width: 视频流宽度的最大值，单位：px。
        # @type Width: Integer

        attr_accessor :Url, :Definition, :Bitrate, :Height, :Width
        
        def initialize(url=nil, definition=nil, bitrate=nil, height=nil, width=nil)
          @Url = url
          @Definition = definition
          @Bitrate = bitrate
          @Height = height
          @Width = width
        end

        def deserialize(params)
          @Url = params['Url']
          @Definition = params['Definition']
          @Bitrate = params['Bitrate']
          @Height = params['Height']
          @Width = params['Width']
        end
      end

      # 视频转码任务信息，该结构仅用于对 2017 版[视频转码](https://cloud.tencent.com/document/product/266/7822)接口发起的任务。
      class TranscodeTask2017 < TencentCloud::Common::AbstractModel
        # @param TaskId: 转码任务 ID。
        # @type TaskId: String
        # @param ErrCode: 错误码
        # <li>0：成功；</li>
        # <li>其他值：失败。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param FileId: 被转码文件 ID。
        # @type FileId: String
        # @param FileName: 被转码文件名称。
        # @type FileName: String
        # @param Duration: 视频时长，单位：秒。
        # @type Duration: Integer
        # @param CoverUrl: 封面地址。
        # @type CoverUrl: String
        # @param PlayInfoSet: 视频转码后生成的播放信息。
        # @type PlayInfoSet: Array

        attr_accessor :TaskId, :ErrCode, :Message, :FileId, :FileName, :Duration, :CoverUrl, :PlayInfoSet
        
        def initialize(taskid=nil, errcode=nil, message=nil, fileid=nil, filename=nil, duration=nil, coverurl=nil, playinfoset=nil)
          @TaskId = taskid
          @ErrCode = errcode
          @Message = message
          @FileId = fileid
          @FileName = filename
          @Duration = duration
          @CoverUrl = coverurl
          @PlayInfoSet = playinfoset
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          @FileId = params['FileId']
          @FileName = params['FileName']
          @Duration = params['Duration']
          @CoverUrl = params['CoverUrl']
          @PlayInfoSet = params['PlayInfoSet']
        end
      end

      # 转码任务输入参数类型
      class TranscodeTaskInput < TencentCloud::Common::AbstractModel
        # @param Definition: 视频转码模板 ID。
        # @type Definition: Integer
        # @param WatermarkSet: 水印列表，支持多张图片或文字水印，最大可支持 10 张。
        # @type WatermarkSet: Array
        # @param MosaicSet: 马赛克列表，最大可支持 10 张。
        # @type MosaicSet: Array

        attr_accessor :Definition, :WatermarkSet, :MosaicSet
        
        def initialize(definition=nil, watermarkset=nil, mosaicset=nil)
          @Definition = definition
          @WatermarkSet = watermarkset
          @MosaicSet = mosaicset
        end

        def deserialize(params)
          @Definition = params['Definition']
          @WatermarkSet = params['WatermarkSet']
          @MosaicSet = params['MosaicSet']
        end
      end

      # 转码模板详情
      class TranscodeTemplate < TencentCloud::Common::AbstractModel
        # @param Definition: 转码模板唯一标识。
        # @type Definition: String
        # @param Container: 封装格式，取值：mp4、flv、hls、mp3、flac、ogg。
        # @type Container: String
        # @param Name: 转码模板名称。
        # @type Name: String
        # @param Comment: 模板描述信息。
        # @type Comment: String
        # @param Type: 模板类型，取值：
        # <li>Preset：系统预置模板；</li>
        # <li>Custom：用户自定义模板。</li>
        # @type Type: String
        # @param RemoveVideo: 是否去除视频数据，取值：
        # <li>0：保留；</li>
        # <li>1：去除。</li>
        # @type RemoveVideo: Integer
        # @param RemoveAudio: 是否去除音频数据，取值：
        # <li>0：保留；</li>
        # <li>1：去除。</li>
        # @type RemoveAudio: Integer
        # @param VideoTemplate: 视频流配置参数，仅当 RemoveVideo 为 0，该字段有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type VideoTemplate: :class:`Tencentcloud::Vod.v20180717.models.VideoTemplateInfo`
        # @param AudioTemplate: 音频流配置参数，仅当 RemoveAudio 为 0，该字段有效 。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AudioTemplate: :class:`Tencentcloud::Vod.v20180717.models.AudioTemplateInfo`
        # @param TEHDConfig: 极速高清转码参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TEHDConfig: :class:`Tencentcloud::Vod.v20180717.models.TEHDConfig`
        # @param ContainerType: 封装格式过滤条件，可选值：
        # <li>Video：视频格式，可以同时包含视频流和音频流的封装格式；</li>
        # <li>PureAudio：纯音频格式，只能包含音频流的封装格式板。</li>
        # @type ContainerType: String
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String

        attr_accessor :Definition, :Container, :Name, :Comment, :Type, :RemoveVideo, :RemoveAudio, :VideoTemplate, :AudioTemplate, :TEHDConfig, :ContainerType, :CreateTime, :UpdateTime
        
        def initialize(definition=nil, container=nil, name=nil, comment=nil, type=nil, removevideo=nil, removeaudio=nil, videotemplate=nil, audiotemplate=nil, tehdconfig=nil, containertype=nil, createtime=nil, updatetime=nil)
          @Definition = definition
          @Container = container
          @Name = name
          @Comment = comment
          @Type = type
          @RemoveVideo = removevideo
          @RemoveAudio = removeaudio
          @VideoTemplate = videotemplate
          @AudioTemplate = audiotemplate
          @TEHDConfig = tehdconfig
          @ContainerType = containertype
          @CreateTime = createtime
          @UpdateTime = updatetime
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Container = params['Container']
          @Name = params['Name']
          @Comment = params['Comment']
          @Type = params['Type']
          @RemoveVideo = params['RemoveVideo']
          @RemoveAudio = params['RemoveAudio']
          unless params['VideoTemplate'].nil?
            @VideoTemplate = VideoTemplateInfo.new.deserialize(params[VideoTemplate])
          end
          unless params['AudioTemplate'].nil?
            @AudioTemplate = AudioTemplateInfo.new.deserialize(params[AudioTemplate])
          end
          unless params['TEHDConfig'].nil?
            @TEHDConfig = TEHDConfig.new.deserialize(params[TEHDConfig])
          end
          @ContainerType = params['ContainerType']
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
        end
      end

      # 转场操作
      class TransitionOpertion < TencentCloud::Common::AbstractModel
        # @param Type: 转场类型，取值有：
        # <ul>
        # <li>图像的转场操作，用于两个视频片段图像间的转场处理：
        # <ul>
        # <li>ImageFadeInFadeOut：图像淡入淡出。 </li>
        # <li>BowTieHorizontal：水平蝴蝶结。 </li>
        # <li>BowTieVertical：垂直蝴蝶结。 </li>
        # <li>ButterflyWaveScrawler：晃动。 </li>
        # <li>Cannabisleaf：枫叶。 </li>
        # <li>Circle：弧形收放。 </li>
        # <li>CircleCrop：圆环聚拢。 </li>
        # <li>Circleopen：椭圆聚拢。 </li>
        # <li>Crosswarp：横向翘曲。 </li>
        # <li>Cube：立方体。 </li>
        # <li>DoomScreenTransition：幕布。 </li>
        # <li>Doorway：门廊。 </li>
        # <li>Dreamy：波浪。 </li>
        # <li>DreamyZoom：水平聚拢。 </li>
        # <li>FilmBurn：火烧云。 </li>
        # <li>GlitchMemories：抖动。 </li>
        # <li>Heart：心形。 </li>
        # <li>InvertedPageCurl：翻页。 </li>
        # <li>Luma：腐蚀。 </li>
        # <li>Mosaic：九宫格。 </li>
        # <li>Pinwheel：风车。 </li>
        # <li>PolarFunction：椭圆扩散。 </li>
        # <li>PolkaDotsCurtain：弧形扩散。 </li>
        # <li>Radial：雷达扫描 </li>
        # <li>RotateScaleFade：上下收放。 </li>
        # <li>Squeeze：上下聚拢。 </li>
        # <li>Swap：放大切换。 </li>
        # <li>Swirl：螺旋。 </li>
        # <li>UndulatingBurnOutSwirl：水流蔓延。 </li>
        # <li>Windowblinds：百叶窗。 </li>
        # <li>WipeDown：向下收起。 </li>
        # <li>WipeLeft：向左收起。 </li>
        # <li>WipeRight：向右收起。 </li>
        # <li>WipeUp：向上收起。 </li>
        # <li>ZoomInCircles：水波纹。 </li>
        # </ul>
        # </li>
        # <li>音频的转场操作，用于两个音频片段间的转场处理：
        # <ul>
        # <li>AudioFadeInFadeOut：声音淡入淡出。 </li>
        # </ul>
        # </li>
        # </ul>
        # @type Type: String

        attr_accessor :Type
        
        def initialize(type=nil)
          @Type = type
        end

        def deserialize(params)
          @Type = params['Type']
        end
      end

      # 用户自定义语音审核任务控制参数
      class UserDefineAsrTextReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 用户自定语音审核任务开关，可选值：
        # <li>ON：开启自定义语音审核任务；</li>
        # <li>OFF：关闭自定义语音审核任务。</li>
        # @type Switch: String
        # @param LabelSet: 用户自定义语音过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回。如果要使用标签过滤功能，添加自定义语音关键词素材时需要添加对应标签。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 用户自定义语音审核任务控制参数
      class UserDefineAsrTextReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 用户自定语音审核任务开关，可选值：
        # <li>ON：开启自定义语音审核任务；</li>
        # <li>OFF：关闭自定义语音审核任务。</li>
        # @type Switch: String
        # @param LabelSet: 用户自定义语音过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回。如果要使用标签过滤功能，添加自定义语音关键词素材时需要添加对应标签。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 用户自定义审核任务控制参数
      class UserDefineConfigureInfo < TencentCloud::Common::AbstractModel
        # @param FaceReviewInfo: 用户自定义人物审核控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FaceReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.UserDefineFaceReviewTemplateInfo`
        # @param AsrReviewInfo: 用户自定义语音审核控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AsrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.UserDefineAsrTextReviewTemplateInfo`
        # @param OcrReviewInfo: 用户自定义文本审核控制参数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.UserDefineOcrTextReviewTemplateInfo`

        attr_accessor :FaceReviewInfo, :AsrReviewInfo, :OcrReviewInfo
        
        def initialize(facereviewinfo=nil, asrreviewinfo=nil, ocrreviewinfo=nil)
          @FaceReviewInfo = facereviewinfo
          @AsrReviewInfo = asrreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['FaceReviewInfo'].nil?
            @FaceReviewInfo = UserDefineFaceReviewTemplateInfo.new.deserialize(params[FaceReviewInfo])
          end
          unless params['AsrReviewInfo'].nil?
            @AsrReviewInfo = UserDefineAsrTextReviewTemplateInfo.new.deserialize(params[AsrReviewInfo])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = UserDefineOcrTextReviewTemplateInfo.new.deserialize(params[OcrReviewInfo])
          end
        end
      end

      # 用户自定义审核任务控制参数。
      class UserDefineConfigureInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param FaceReviewInfo: 用户自定义人物审核控制参数。
        # @type FaceReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.UserDefineFaceReviewTemplateInfoForUpdate`
        # @param AsrReviewInfo: 用户自定义语音审核控制参数。
        # @type AsrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.UserDefineAsrTextReviewTemplateInfoForUpdate`
        # @param OcrReviewInfo: 用户自定义文本审核控制参数。
        # @type OcrReviewInfo: :class:`Tencentcloud::Vod.v20180717.models.UserDefineOcrTextReviewTemplateInfoForUpdate`

        attr_accessor :FaceReviewInfo, :AsrReviewInfo, :OcrReviewInfo
        
        def initialize(facereviewinfo=nil, asrreviewinfo=nil, ocrreviewinfo=nil)
          @FaceReviewInfo = facereviewinfo
          @AsrReviewInfo = asrreviewinfo
          @OcrReviewInfo = ocrreviewinfo
        end

        def deserialize(params)
          unless params['FaceReviewInfo'].nil?
            @FaceReviewInfo = UserDefineFaceReviewTemplateInfoForUpdate.new.deserialize(params[FaceReviewInfo])
          end
          unless params['AsrReviewInfo'].nil?
            @AsrReviewInfo = UserDefineAsrTextReviewTemplateInfoForUpdate.new.deserialize(params[AsrReviewInfo])
          end
          unless params['OcrReviewInfo'].nil?
            @OcrReviewInfo = UserDefineOcrTextReviewTemplateInfoForUpdate.new.deserialize(params[OcrReviewInfo])
          end
        end
      end

      # 用户自定义人物审核任务控制参数
      class UserDefineFaceReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 用户自定义人物审核任务开关，可选值：
        # <li>ON：开启自定义人物审核任务；</li>
        # <li>OFF：关闭自定义人物审核任务。</li>
        # @type Switch: String
        # @param LabelSet: 用户自定义人物过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回。如果要使用标签过滤功能，添加自定义人物库的时，需要添加对应人物标签。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 97 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 95 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 用户自定义人物审核任务控制参数。
      class UserDefineFaceReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 用户自定义人物审核任务开关，可选值：
        # <li>ON：开启自定义人物审核任务；</li>
        # <li>OFF：关闭自定义人物审核任务。</li>
        # @type Switch: String
        # @param LabelSet: 用户自定义人物过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回。如果要使用标签过滤功能，添加自定义人物库的时，需要添加对应人物标签。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 用户自定义文本审核任务控制参数
      class UserDefineOcrTextReviewTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Switch: 用户自定文本审核任务开关，可选值：
        # <li>ON：开启自定义文本审核任务；</li>
        # <li>OFF：关闭自定义文本审核任务。</li>
        # @type Switch: String
        # @param LabelSet: 用户自定义文本过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回。如果要使用标签过滤功能，添加自定义文本关键词素材时需要添加对应标签。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规，不填默认为 100 分。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核，不填默认为 75 分。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 用户自定义文本审核任务控制参数。
      class UserDefineOcrTextReviewTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Switch: 用户自定文本审核任务开关，可选值：
        # <li>ON：开启自定义文本审核任务；</li>
        # <li>OFF：关闭自定义文本审核任务。</li>
        # @type Switch: String
        # @param LabelSet: 用户自定义文本过滤标签，审核结果包含选择的标签则返回结果，如果过滤标签为空，则审核结果全部返回。如果要使用标签过滤功能，添加自定义文本关键词素材时需要添加对应标签。
        # 标签个数最多 10 个，每个标签长度最多 16 个字符。
        # @type LabelSet: Array
        # @param BlockConfidence: 判定涉嫌违规的分数阈值，当智能审核达到该分数以上，认为涉嫌违规。取值范围：0~100。
        # @type BlockConfidence: Integer
        # @param ReviewConfidence: 判定需人工复核是否违规的分数阈值，当智能审核达到该分数以上，认为需人工复核。取值范围：0~100。
        # @type ReviewConfidence: Integer

        attr_accessor :Switch, :LabelSet, :BlockConfidence, :ReviewConfidence
        
        def initialize(switch=nil, labelset=nil, blockconfidence=nil, reviewconfidence=nil)
          @Switch = switch
          @LabelSet = labelset
          @BlockConfidence = blockconfidence
          @ReviewConfidence = reviewconfidence
        end

        def deserialize(params)
          @Switch = params['Switch']
          @LabelSet = params['LabelSet']
          @BlockConfidence = params['BlockConfidence']
          @ReviewConfidence = params['ReviewConfidence']
        end
      end

      # 视频流配置参数
      class VideoTemplateInfo < TencentCloud::Common::AbstractModel
        # @param Codec: 视频流的编码格式，可选值：
        # <li>libx264：H.264 编码</li>
        # <li>libx265：H.265 编码</li>
        # <li>av1：AOMedia Video 1 编码</li>
        # 目前 H.265 编码必须指定分辨率，并且需要在 640*480 以内。av1 编码容器目前只支持 mp4 。
        # @type Codec: String
        # @param Fps: 视频帧率，取值范围：[0, 60]，单位：Hz。
        # 当取值为 0，表示帧率和原始视频保持一致。
        # @type Fps: Integer
        # @param Bitrate: 视频流的码率，取值范围：0 和 [128, 35000]，单位：kbps。
        # 当取值为 0，表示视频码率和原始视频保持一致。
        # @type Bitrate: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # 默认值：open。
        # @type ResolutionAdaptive: String
        # @param Width: 视频流宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Width: Integer
        # @param Height: 视频流高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # 默认值：0。
        # @type Height: Integer
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # 默认值：black 。
        # @type FillType: String

        attr_accessor :Codec, :Fps, :Bitrate, :ResolutionAdaptive, :Width, :Height, :FillType
        
        def initialize(codec=nil, fps=nil, bitrate=nil, resolutionadaptive=nil, width=nil, height=nil, filltype=nil)
          @Codec = codec
          @Fps = fps
          @Bitrate = bitrate
          @ResolutionAdaptive = resolutionadaptive
          @Width = width
          @Height = height
          @FillType = filltype
        end

        def deserialize(params)
          @Codec = params['Codec']
          @Fps = params['Fps']
          @Bitrate = params['Bitrate']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Width = params['Width']
          @Height = params['Height']
          @FillType = params['FillType']
        end
      end

      # 视频流配置参数
      class VideoTemplateInfoForUpdate < TencentCloud::Common::AbstractModel
        # @param Codec: 视频流的编码格式，可选值：
        # <li>libx264：H.264 编码</li>
        # <li>libx265：H.265 编码</li>
        # <li>av1：AOMedia Video 1 编码</li>
        # 目前 H.265 编码必须指定分辨率，并且需要在 640*480 以内。av1 编码容器目前只支持 mp4 。
        # @type Codec: String
        # @param Fps: 视频帧率，取值范围：[0, 60]，单位：Hz。
        # 当取值为 0，表示帧率和原始视频保持一致。
        # @type Fps: Integer
        # @param Bitrate: 视频流的码率，取值范围：0 和 [128, 35000]，单位：kbps。
        # 当取值为 0，表示视频码率和原始视频保持一致。
        # @type Bitrate: Integer
        # @param ResolutionAdaptive: 分辨率自适应，可选值：
        # <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        # <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        # @type ResolutionAdaptive: String
        # @param Width: 视频流宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # <li>当 Width、Height 均为 0，则分辨率同源；</li>
        # <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        # <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        # <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        # @type Width: Integer
        # @param Height: 视频流高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        # @type Height: Integer
        # @param FillType: 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        # <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        # <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        # 默认值：black 。
        # @type FillType: String

        attr_accessor :Codec, :Fps, :Bitrate, :ResolutionAdaptive, :Width, :Height, :FillType
        
        def initialize(codec=nil, fps=nil, bitrate=nil, resolutionadaptive=nil, width=nil, height=nil, filltype=nil)
          @Codec = codec
          @Fps = fps
          @Bitrate = bitrate
          @ResolutionAdaptive = resolutionadaptive
          @Width = width
          @Height = height
          @FillType = filltype
        end

        def deserialize(params)
          @Codec = params['Codec']
          @Fps = params['Fps']
          @Bitrate = params['Bitrate']
          @ResolutionAdaptive = params['ResolutionAdaptive']
          @Width = params['Width']
          @Height = params['Height']
          @FillType = params['FillType']
        end
      end

      # 视频轨的视频片段信息。
      class VideoTrackItem < TencentCloud::Common::AbstractModel
        # @param SourceMedia: 视频片段的媒体素材来源，可以是点播的文件 ID，或者是其它文件的 URL。
        # @type SourceMedia: String
        # @param SourceMediaStartTime: 视频片段取自素材文件的起始时间，单位为秒。默认为0。
        # @type SourceMediaStartTime: Float
        # @param Duration: 视频片段时长，单位为秒。默认取视频素材本身长度，表示截取全部素材。如果源文件是图片，Duration需要大于0。
        # @type Duration: Float
        # @param CoordinateOrigin: 视频原点位置，取值有：
        # <li>Center：坐标原点为中心位置，如画布中心。</li>
        # 默认值 ：Center。
        # @type CoordinateOrigin: String
        # @param XPos: 视频片段原点距离画布原点的水平位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示视频片段 XPos 为画布宽度指定百分比的位置，如 10% 表示 XPos 为画布口宽度的 10%。</li>
        # <li>当字符串以 px 结尾，表示视频片段 XPos 单位为像素，如 100px 表示 XPos 为100像素。</li>
        # 默认值：0px。
        # @type XPos: String
        # @param YPos: 视频片段原点距离画布原点的垂直位置。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示视频片段 YPos 为画布高度指定百分比的位置，如 10% 表示 YPos 为画布高度的 10%。</li>
        # <li>当字符串以 px 结尾，表示视频片段 YPos 单位为像素，如 100px 表示 YPos 为100像素。</li>
        # 默认值：0px。
        # @type YPos: String
        # @param Width: 视频片段的宽度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示视频片段 Width 为画布宽度的百分比大小，如 10% 表示 Width 为画布宽度的 10%。</li>
        # <li>当字符串以 px 结尾，表示视频片段 Width 单位为像素，如 100px 表示 Width 为100像素。</li>
        # <li>当 Width、Height 均为空，则 Width 和 Height 取视频素材本身的 Width、Height。</li>
        # <li>当 Width 为空，Height 非空，则 Width 按比例缩放</li>
        # <li>当 Width 非空，Height 为空，则 Height 按比例缩放。</li>
        # @type Width: String
        # @param Height: 视频片段的高度。支持 %、px 两种格式：
        # <li>当字符串以 % 结尾，表示视频片段 Height 为画布高度的百分比大小，如 10% 表示 Height 为画布高度的 10%；
        # </li><li>当字符串以 px 结尾，表示视频片段 Height 单位为像素，如 100px 表示 Height 为100像素。</li>
        # <li>当 Width、Height 均为空，则 Width 和 Height 取视频素材本身的 Width、Height。</li>
        # <li>当 Width 为空，Height 非空，则 Width 按比例缩放</li>
        # <li>当 Width 非空，Height 为空，则 Height 按比例缩放。</li>
        # @type Height: String
        # @param ImageOperations: 对图像进行的操作，如图像旋转等。
        # @type ImageOperations: Array
        # @param AudioOperations: 对音频进行操作，如静音等。
        # @type AudioOperations: Array

        attr_accessor :SourceMedia, :SourceMediaStartTime, :Duration, :CoordinateOrigin, :XPos, :YPos, :Width, :Height, :ImageOperations, :AudioOperations
        
        def initialize(sourcemedia=nil, sourcemediastarttime=nil, duration=nil, coordinateorigin=nil, xpos=nil, ypos=nil, width=nil, height=nil, imageoperations=nil, audiooperations=nil)
          @SourceMedia = sourcemedia
          @SourceMediaStartTime = sourcemediastarttime
          @Duration = duration
          @CoordinateOrigin = coordinateorigin
          @XPos = xpos
          @YPos = ypos
          @Width = width
          @Height = height
          @ImageOperations = imageoperations
          @AudioOperations = audiooperations
        end

        def deserialize(params)
          @SourceMedia = params['SourceMedia']
          @SourceMediaStartTime = params['SourceMediaStartTime']
          @Duration = params['Duration']
          @CoordinateOrigin = params['CoordinateOrigin']
          @XPos = params['XPos']
          @YPos = params['YPos']
          @Width = params['Width']
          @Height = params['Height']
          @ImageOperations = params['ImageOperations']
          @AudioOperations = params['AudioOperations']
        end
      end

      # 水印周期配置。
      class WatermarkCycleConfigForUpdate < TencentCloud::Common::AbstractModel
        # @param StartTime: 水印在视频里第一次出现的播放时间点，单位：秒。
        # @type StartTime: Float
        # @param DisplayDuration: 在一个水印周期内，水印显示的持续时间，单位：秒。
        # @type DisplayDuration: Float
        # @param CycleDuration: 一个水印周期的持续时间，单位：秒。
        # 填 0 表示水印只持续一个水印周期（即在整个视频里只显示 DisplayDuration 秒）。
        # @type CycleDuration: Float

        attr_accessor :StartTime, :DisplayDuration, :CycleDuration
        
        def initialize(starttime=nil, displayduration=nil, cycleduration=nil)
          @StartTime = starttime
          @DisplayDuration = displayduration
          @CycleDuration = cycleduration
        end

        def deserialize(params)
          @StartTime = params['StartTime']
          @DisplayDuration = params['DisplayDuration']
          @CycleDuration = params['CycleDuration']
        end
      end

      # 视频处理任务中的水印参数类型
      class WatermarkInput < TencentCloud::Common::AbstractModel
        # @param Definition: 水印模板 ID。
        # @type Definition: Integer
        # @param TextContent: 文字内容，长度不超过100个字符。仅当水印类型为文字水印时填写。
        # @type TextContent: String
        # @param SvgContent: SVG 内容。长度不超过 2000000 个字符。仅当水印类型为 SVG 水印时填写。
        # @type SvgContent: String
        # @param StartTimeOffset: 水印的起始时间偏移，单位：秒。不填或填0，表示水印从画面出现时开始显现。
        # <li>不填或填0，表示水印从画面开始就出现；</li>
        # <li>当数值大于0时（假设为 n），表示水印从画面开始的第 n 秒出现；</li>
        # <li>当数值小于0时（假设为 -n），表示水印从离画面结束 n 秒前开始出现。</li>
        # @type StartTimeOffset: Float
        # @param EndTimeOffset: 水印的结束时间偏移，单位：秒。
        # <li>不填或填0，表示水印持续到画面结束；</li>
        # <li>当数值大于0时（假设为 n），表示水印持续到第 n 秒时消失；</li>
        # <li>当数值小于0时（假设为 -n），表示水印持续到离画面结束 n 秒前消失。</li>
        # @type EndTimeOffset: Float

        attr_accessor :Definition, :TextContent, :SvgContent, :StartTimeOffset, :EndTimeOffset
        
        def initialize(definition=nil, textcontent=nil, svgcontent=nil, starttimeoffset=nil, endtimeoffset=nil)
          @Definition = definition
          @TextContent = textcontent
          @SvgContent = svgcontent
          @StartTimeOffset = starttimeoffset
          @EndTimeOffset = endtimeoffset
        end

        def deserialize(params)
          @Definition = params['Definition']
          @TextContent = params['TextContent']
          @SvgContent = params['SvgContent']
          @StartTimeOffset = params['StartTimeOffset']
          @EndTimeOffset = params['EndTimeOffset']
        end
      end

      # 水印模板详情
      class WatermarkTemplate < TencentCloud::Common::AbstractModel
        # @param Definition: 水印模板唯一标识。
        # @type Definition: Integer
        # @param Type: 水印类型，取值：
        # <li>image：图片水印；</li>
        # <li>text：文字水印。</li>
        # @type Type: String
        # @param Name: 水印模板名称。
        # @type Name: String
        # @param Comment: 模板描述信息。
        # @type Comment: String
        # @param XPos: 水印图片原点距离视频图像原点的水平位置。
        # <li>当字符串以 % 结尾，表示水印 Left 为视频宽度指定百分比的位置，如 10% 表示 Left 为视频宽度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 Left 为视频宽度指定像素的位置，如 100px 表示 Left 为 100 像素。</li>
        # @type XPos: String
        # @param YPos: 水印图片原点距离视频图像原点的垂直位置。
        # <li>当字符串以 % 结尾，表示水印 Top 为视频高度指定百分比的位置，如 10% 表示 Top 为视频高度的 10%；</li>
        # <li>当字符串以 px 结尾，表示水印 Top 为视频高度指定像素的位置，如 100px 表示 Top 为 100 像素。</li>
        # @type YPos: String
        # @param ImageTemplate: 图片水印模板，仅当 Type 为 image，该字段有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ImageTemplate: :class:`Tencentcloud::Vod.v20180717.models.ImageWatermarkTemplate`
        # @param TextTemplate: 文字水印模板，仅当 Type 为 text，该字段有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TextTemplate: :class:`Tencentcloud::Vod.v20180717.models.TextWatermarkTemplateInput`
        # @param SvgTemplate: SVG 水印模板，当 Type 为 svg，该字段有效。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SvgTemplate: :class:`Tencentcloud::Vod.v20180717.models.SvgWatermarkInput`
        # @param CreateTime: 模板创建时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type CreateTime: String
        # @param UpdateTime: 模板最后修改时间，使用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        # @type UpdateTime: String
        # @param CoordinateOrigin: 原点位置，可选值：
        # <li>topLeft：表示坐标原点位于视频图像左上角，水印原点为图片或文字的左上角；</li>
        # <li>topRight：表示坐标原点位于视频图像的右上角，水印原点为图片或文字的右上角；</li>
        # <li>bottomLeft：表示坐标原点位于视频图像的左下角，水印原点为图片或文字的左下角；</li>
        # <li>bottomRight：表示坐标原点位于视频图像的右下角，水印原点为图片或文字的右下。；</li>
        # @type CoordinateOrigin: String

        attr_accessor :Definition, :Type, :Name, :Comment, :XPos, :YPos, :ImageTemplate, :TextTemplate, :SvgTemplate, :CreateTime, :UpdateTime, :CoordinateOrigin
        
        def initialize(definition=nil, type=nil, name=nil, comment=nil, xpos=nil, ypos=nil, imagetemplate=nil, texttemplate=nil, svgtemplate=nil, createtime=nil, updatetime=nil, coordinateorigin=nil)
          @Definition = definition
          @Type = type
          @Name = name
          @Comment = comment
          @XPos = xpos
          @YPos = ypos
          @ImageTemplate = imagetemplate
          @TextTemplate = texttemplate
          @SvgTemplate = svgtemplate
          @CreateTime = createtime
          @UpdateTime = updatetime
          @CoordinateOrigin = coordinateorigin
        end

        def deserialize(params)
          @Definition = params['Definition']
          @Type = params['Type']
          @Name = params['Name']
          @Comment = params['Comment']
          @XPos = params['XPos']
          @YPos = params['YPos']
          unless params['ImageTemplate'].nil?
            @ImageTemplate = ImageWatermarkTemplate.new.deserialize(params[ImageTemplate])
          end
          unless params['TextTemplate'].nil?
            @TextTemplate = TextWatermarkTemplateInput.new.deserialize(params[TextTemplate])
          end
          unless params['SvgTemplate'].nil?
            @SvgTemplate = SvgWatermarkInput.new.deserialize(params[SvgTemplate])
          end
          @CreateTime = params['CreateTime']
          @UpdateTime = params['UpdateTime']
          @CoordinateOrigin = params['CoordinateOrigin']
        end
      end

      # WeChatMiniProgramPublish请求参数结构体
      class WeChatMiniProgramPublishRequest < TencentCloud::Common::AbstractModel
        # @param FileId: 媒体文件 ID。
        # @type FileId: String
        # @param SourceDefinition: 发布视频所对应的转码模板 ID，为0代表原始视频。
        # @type SourceDefinition: Integer
        # @param SubAppId: 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        # @type SubAppId: Integer

        attr_accessor :FileId, :SourceDefinition, :SubAppId
        
        def initialize(fileid=nil, sourcedefinition=nil, subappid=nil)
          @FileId = fileid
          @SourceDefinition = sourcedefinition
          @SubAppId = subappid
        end

        def deserialize(params)
          @FileId = params['FileId']
          @SourceDefinition = params['SourceDefinition']
          @SubAppId = params['SubAppId']
        end
      end

      # WeChatMiniProgramPublish返回参数结构体
      class WeChatMiniProgramPublishResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 微信小程序发布任务信息
      class WechatMiniProgramPublishTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: String
        # @param Status: 任务状态，取值：
        # WAITING：等待中；
        # PROCESSING：处理中；
        # FINISH：已完成。
        # @type Status: String
        # @param ErrCode: 错误码
        # <li>0：成功；</li>
        # <li>其他值：失败。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param FileId: 发布视频文件 ID。
        # @type FileId: String
        # @param SourceDefinition: 发布视频所对应的转码模板 ID，为 0 代表原始视频。
        # @type SourceDefinition: Integer
        # @param PublishResult: 微信小程序视频发布状态，取值：
        # <li>Pass：发布成功；</li>
        # <li>Failed：发布失败；</li>
        # <li>Rejected：审核未通过。</li>
        # @type PublishResult: String

        attr_accessor :TaskId, :Status, :ErrCode, :Message, :FileId, :SourceDefinition, :PublishResult
        
        def initialize(taskid=nil, status=nil, errcode=nil, message=nil, fileid=nil, sourcedefinition=nil, publishresult=nil)
          @TaskId = taskid
          @Status = status
          @ErrCode = errcode
          @Message = message
          @FileId = fileid
          @SourceDefinition = sourcedefinition
          @PublishResult = publishresult
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          @FileId = params['FileId']
          @SourceDefinition = params['SourceDefinition']
          @PublishResult = params['PublishResult']
        end
      end

      # 微信小程序发布任务类型
      class WechatMiniProgramPublishTaskInput < TencentCloud::Common::AbstractModel
        # @param SourceDefinition: 发布视频所对应的转码模板 ID，为 0 代表原始视频。
        # @type SourceDefinition: Integer

        attr_accessor :SourceDefinition
        
        def initialize(sourcedefinition=nil)
          @SourceDefinition = sourcedefinition
        end

        def deserialize(params)
          @SourceDefinition = params['SourceDefinition']
        end
      end

      # 微信发布任务信息
      class WechatPublishTask < TencentCloud::Common::AbstractModel
        # @param TaskId: 任务 ID。
        # @type TaskId: String
        # @param Status: 任务状态，取值：
        # WAITING：等待中；
        # PROCESSING：处理中；
        # FINISH：已完成。
        # @type Status: String
        # @param ErrCode: 错误码
        # <li>0：成功；</li>
        # <li>其他值：失败。</li>
        # @type ErrCode: Integer
        # @param Message: 错误信息。
        # @type Message: String
        # @param FileId: 发布视频文件 ID。
        # @type FileId: String
        # @param Definition: 微信发布模板 ID。
        # @type Definition: Integer
        # @param SourceDefinition: 发布视频所对应的转码模板 ID，为 0 代表原始视频。
        # @type SourceDefinition: Integer
        # @param WechatStatus: 微信发布状态，取值：
        # <li>FAIL：失败；</li>
        # <li>SUCCESS：成功；</li>
        # <li>AUDITNOTPASS：审核未通过；</li>
        # <li>NOTTRIGGERED：尚未发起微信发布。</li>
        # @type WechatStatus: String
        # @param WechatVid: 微信 Vid。
        # @type WechatVid: String
        # @param WechatUrl: 微信地址。
        # @type WechatUrl: String

        attr_accessor :TaskId, :Status, :ErrCode, :Message, :FileId, :Definition, :SourceDefinition, :WechatStatus, :WechatVid, :WechatUrl
        
        def initialize(taskid=nil, status=nil, errcode=nil, message=nil, fileid=nil, definition=nil, sourcedefinition=nil, wechatstatus=nil, wechatvid=nil, wechaturl=nil)
          @TaskId = taskid
          @Status = status
          @ErrCode = errcode
          @Message = message
          @FileId = fileid
          @Definition = definition
          @SourceDefinition = sourcedefinition
          @WechatStatus = wechatstatus
          @WechatVid = wechatvid
          @WechatUrl = wechaturl
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @Status = params['Status']
          @ErrCode = params['ErrCode']
          @Message = params['Message']
          @FileId = params['FileId']
          @Definition = params['Definition']
          @SourceDefinition = params['SourceDefinition']
          @WechatStatus = params['WechatStatus']
          @WechatVid = params['WechatVid']
          @WechatUrl = params['WechatUrl']
        end
      end

    end
  end
end
