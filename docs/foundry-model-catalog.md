# Microsoft Azure AI Foundry — Model Catalog

> **Last updated:** 2026-03-15
> **Total models:** 187
> **Publishers:** Black Forest Labs, Cohere, Community, CompVis, Databricks, Deci AI, DeepSeek, Google, HistAI, Meta, Microsoft, Mims Harvard, Mistral AI, Moonshot AI, Paige, Runway, SDAIA, Salesforce, Snowflake, Stability AI, StanfordMIMI, Van Dijk Lab, Wanglab, tiiuae, xAI

## Summary

This catalog lists 187 models from 25 publishers available in the Microsoft Azure AI Foundry model catalog as of 2026-03-15. The catalog spans tasks including chat completion, embeddings, image generation, speech recognition, object detection, and specialised scientific workloads (materials simulation, medical imaging, genomics). Models are offered in two primary deployment modes: **Managed compute** (self-hosted on Azure GPU VM SKUs) and **Serverless / Global Standard** (pay-per-token with no infrastructure management). Azure Direct models (from Black Forest Labs, Cohere, DeepSeek, Meta, Microsoft, Mistral AI, Moonshot AI, and xAI) are billed through Azure subscriptions and covered by Microsoft SLAs.

## Models

| Publisher | Model Name | Model ID | Type | Regions |
|-----------|------------|----------|------|---------|
| Black Forest Labs | FLUX.1 Kontext [pro] | `FLUX.1-Kontext-pro` | image-generation | Global standard (all regions) |
| Black Forest Labs | FLUX.2 [flex] | `FLUX.2-flex` | image-generation | Global standard (all regions) |
| Black Forest Labs | FLUX.2 [pro] | `FLUX.2-pro` | image-generation | Global standard (all regions) |
| Black Forest Labs | FLUX1.1 [pro] | `FLUX-1.1-pro` | image-generation | Global standard (all regions) |
| Cohere | Cohere Command A | `Cohere-command-a` | chat-completion | Global standard (all regions) |
| Cohere | Cohere Embed v4.0 | `embed-v-4-0` | embeddings | Global standard (all regions) |
| Cohere | Cohere Rerank v4.0 Fast | `Cohere-rerank-v4.0-fast` | text-classification | Global standard (all regions), Managed compute |
| Cohere | Cohere Rerank v4.0 Pro | `Cohere-rerank-v4.0-pro` | text-classification | Global standard (all regions), Managed compute |
| Community | automl-image-classification | `automl-image-classification` | image-classification | Managed compute |
| Community | automl-ner | `automl-ner` | token-classification | Managed compute |
| Community | automl-text-classification | `automl-text-classification` | text-classification | Managed compute |
| Community | automl_instance_segmentation | `automl_instance_segmentation` | image-segmentation | Managed compute |
| Community | automl_object_detection | `automl_object_detection` | object-detection | Managed compute |
| Community | bert-base-cased | `bert-base-cased` | fill-mask | Managed compute |
| Community | bert-base-uncased | `bert-base-uncased` | fill-mask | Managed compute |
| Community | bert-large-cased | `bert-large-cased` | fill-mask | Managed compute |
| Community | bert-large-uncased | `bert-large-uncased` | fill-mask | Managed compute |
| Community | bytetrack_yolox_x_crowdhuman_mot17-private-half | `bytetrack_yolox_x_crowdhuman_mot17-private-half` | multi-object-tracking | Managed compute |
| Community | camembert-base | `camembert-base` | fill-mask | Managed compute |
| Community | deepset-minilm-uncased-squad2 | `deepset-minilm-uncased-squad2` | question-answering | Managed compute |
| Community | deepset-roberta-base-squad2 | `deepset-roberta-base-squad2` | question-answering | Managed compute |
| Community | deformable_detr_twostage_refine_r50_16x2_50e_coco | `deformable_detr_twostage_refine_r50_16x2_50e_coco` | image-segmentation | Managed compute |
| Community | distilbert-base-cased | `distilbert-base-cased` | fill-mask | Managed compute |
| Community | distilbert-base-cased-distilled-squad | `distilbert-base-cased-distilled-squad` | question-answering | Managed compute |
| Community | distilbert-base-uncased | `distilbert-base-uncased` | fill-mask | Managed compute |
| Community | distilbert-base-uncased-distilled-squad | `distilbert-base-uncased-distilled-squad` | question-answering | Managed compute |
| Community | distilbert-base-uncased-finetuned-sst-2-english | `distilbert-base-uncased-finetuned-sst-2-english` | text-classification | Managed compute |
| Community | distilgpt2 | `distilgpt2` | text-generation | Managed compute |
| Community | distilroberta-base | `distilroberta-base` | fill-mask | Managed compute |
| Community | facebook-bart-large-cnn | `facebook-bart-large-cnn` | text-summarization | Managed compute |
| Community | finiteautomata-bertweet-base-sentiment-analysis | `finiteautomata-bertweet-base-sentiment-analysis` | text-classification | Managed compute |
| Community | gpt2 | `gpt2` | text-generation | Managed compute |
| Community | gpt2-large | `gpt2-large` | text-generation | Managed compute |
| Community | gpt2-medium | `gpt2-medium` | text-generation | Managed compute |
| Community | jean-baptiste-camembert-ner | `jean-baptiste-camembert-ner` | token-classification | Managed compute |
| Community | mask_rcnn_swin-t-p4-w7_fpn_1x_coco | `mask_rcnn_swin-t-p4-w7_fpn_1x_coco` | image-segmentation | Managed compute |
| Community | microsoft-deberta-base | `microsoft-deberta-base` | fill-mask | Managed compute |
| Community | microsoft-deberta-base-mnli | `microsoft-deberta-base-mnli` | text-classification | Managed compute |
| Community | microsoft-deberta-large | `microsoft-deberta-large` | fill-mask | Managed compute |
| Community | microsoft-deberta-large-mnli | `microsoft-deberta-large-mnli` | text-classification | Managed compute |
| Community | microsoft-deberta-xlarge | `microsoft-deberta-xlarge` | fill-mask | Managed compute |
| Community | mmd-3x-deformable-detr_refine_twostage_r50_16xb2-50e_coco | `mmd-3x-deformable-detr_refine_twostage_r50_16xb2-50e_coco` | object-detection | Managed compute |
| Community | mmd-3x-mask-rcnn_swin-t-p4-w7_fpn_1x_coco | `mmd-3x-mask-rcnn_swin-t-p4-w7_fpn_1x_coco` | image-segmentation | Managed compute |
| Community | mmd-3x-rtmdet-ins_x_8xb16-300e_coco | `mmd-3x-rtmdet-ins_x_8xb16-300e_coco` | image-segmentation | Managed compute |
| Community | mmd-3x-sparse-rcnn_r101_fpn_300-proposals_crop-ms-480-800-3x_coco | `mmd-3x-sparse-rcnn_r101_fpn_300-proposals_crop-ms-480-800-3x_coco` | object-detection | Managed compute |
| Community | mmd-3x-sparse-rcnn_r50_fpn_300-proposals_crop-ms-480-800-3x_coco | `mmd-3x-sparse-rcnn_r50_fpn_300-proposals_crop-ms-480-800-3x_coco` | object-detection | Managed compute |
| Community | mmd-3x-vfnet_r50-mdconv-c3-c5_fpn_ms-2x_coco | `mmd-3x-vfnet_r50-mdconv-c3-c5_fpn_ms-2x_coco` | object-detection | Managed compute |
| Community | mmd-3x-vfnet_x101-64x4d-mdconv-c3-c5_fpn_ms-2x_coco | `mmd-3x-vfnet_x101-64x4d-mdconv-c3-c5_fpn_ms-2x_coco` | object-detection | Managed compute |
| Community | mmd-3x-yolof_r50_c5_8x8_1x_coco | `mmd-3x-yolof_r50_c5_8x8_1x_coco` | object-detection | Managed compute |
| Community | mmeft | `mmeft` | multimodal-classification | Managed compute |
| Community | ocsort_yolox_x_crowdhuman_mot17-private-half | `ocsort_yolox_x_crowdhuman_mot17-private-half` | multi-object-tracking | Managed compute |
| Community | openai-clip-image-text-embeddings-vit-base-patch32 | `openai-clip-image-text-embeddings-vit-base-patch32` | embeddings | Managed compute |
| Community | openai-clip-image-text-embeddings-vit-large-patch14-336 | `openai-clip-image-text-embeddings-vit-large-patch14-336` | embeddings | Managed compute |
| Community | openai-clip-vit-base-patch32 | `openai-clip-vit-base-patch32` | zero-shot-image-classification | Managed compute |
| Community | openai-clip-vit-large-patch14 | `openai-clip-vit-large-patch14` | zero-shot-image-classification | Managed compute |
| Community | openai-whisper-large | `openai-whisper-large` | automatic-speech-recognition | Managed compute |
| Community | openai-whisper-large-v3 | `openai-whisper-large-v3` | automatic-speech-recognition | Managed compute |
| Community | projecte-aina-aguila-7b | `projecte-aina-aguila-7b` | text-generation | Managed compute |
| Community | projecte-aina-FLOR-1-3B | `projecte-aina-FLOR-1-3B` | text-generation | Managed compute |
| Community | projecte-aina-FLOR-1-3B-Instructed | `projecte-aina-FLOR-1-3B-Instructed` | text-generation | Managed compute |
| Community | projecte-aina-FLOR-6-3B | `projecte-aina-FLOR-6-3B` | text-generation | Managed compute |
| Community | projecte-aina-FLOR-6-3B-Instructed | `projecte-aina-FLOR-6-3B-Instructed` | text-generation | Managed compute |
| Community | roberta-base | `roberta-base` | fill-mask | Managed compute |
| Community | roberta-base-openai-detector | `roberta-base-openai-detector` | text-classification | Managed compute |
| Community | roberta-large | `roberta-large` | fill-mask | Managed compute |
| Community | roberta-large-mnli | `roberta-large-mnli` | text-classification | Managed compute |
| Community | roberta-large-openai-detector | `roberta-large-openai-detector` | text-classification | Managed compute |
| Community | sparse_rcnn_r101_fpn_300_proposals_crop_mstrain_480-800_3x_coco | `sparse_rcnn_r101_fpn_300_proposals_crop_mstrain_480-800_3x_coco` | object-detection | Managed compute |
| Community | sparse_rcnn_r50_fpn_300_proposals_crop_mstrain_480-800_3x_coco | `sparse_rcnn_r50_fpn_300_proposals_crop_mstrain_480-800_3x_coco` | object-detection | Managed compute |
| Community | sshleifer-distilbart-cnn-12-6 | `sshleifer-distilbart-cnn-12-6` | text-summarization | Managed compute |
| Community | t5-base | `t5-base` | text-translation | Managed compute |
| Community | t5-large | `t5-large` | text-translation | Managed compute |
| Community | t5-small | `t5-small` | text-translation | Managed compute |
| Community | vfnet_r50_fpn_mdconv_c3-c5_mstrain_2x_coco | `vfnet_r50_fpn_mdconv_c3-c5_mstrain_2x_coco` | object-detection | Managed compute |
| Community | vfnet_x101_64x4d_fpn_mdconv_c3-c5_mstrain_2x_coco | `vfnet_x101_64x4d_fpn_mdconv_c3-c5_mstrain_2x_coco` | object-detection | Managed compute |
| Community | yolof_r50_c5_8x8_1x_coco | `yolof_r50_c5_8x8_1x_coco` | object-detection | Managed compute |
| CompVis | compvis-stable-diffusion-v1-4 | `compvis-stable-diffusion-v1-4` | text-to-image | Managed compute |
| Databricks | databricks-dolly-v2-12b | `databricks-dolly-v2-12b` | text-generation | Managed compute |
| Deci AI | Deci-DeciCoder-1b | `Deci-DeciCoder-1b` | text-generation | Managed compute |
| Deci AI | deci-decidiffusion-v1-0 | `deci-decidiffusion-v1-0` | text-to-image | Managed compute |
| Deci AI | Deci-DeciLM-7B | `Deci-DeciLM-7B` | text-generation | Managed compute |
| Deci AI | Deci-DeciLM-7B-instruct | `Deci-DeciLM-7B-instruct` | text-generation | Managed compute |
| DeepSeek | DeepSeek-R1 | `DeepSeek-R1` | chat-completion | Global standard (all regions), Global provisioned (all regions) |
| DeepSeek | DeepSeek-R1-0528 | `DeepSeek-R1-0528` | chat-completion | Global standard (all regions), Global provisioned (all regions) |
| DeepSeek | DeepSeek-V3-0324 | `DeepSeek-V3-0324` | chat-completion | Global standard (all regions), Global provisioned (all regions) |
| DeepSeek | DeepSeek-V3.1 | `DeepSeek-V3.1` | chat-completion | Global standard (all regions) |
| DeepSeek | DeepSeek-V3.2 | `DeepSeek-V3.2` | chat-completion | Global standard (all regions) |
| DeepSeek | DeepSeek-V3.2 Speciale | `DeepSeek-V3.2-Speciale` | chat-completion | Global standard (all regions) |
| Google | google-vit-base-patch16-224 | `google-vit-base-patch16-224` | image-classification | Managed compute |
| HistAI | hibou-b | `hibou-b` | embeddings | Managed compute |
| HistAI | hibou-l | `hibou-l` | embeddings | Managed compute |
| Meta | facebook-deit-base-patch16-224 | `facebook-deit-base-patch16-224` | image-classification | Managed compute |
| Meta | facebook-dinov2-base-imagenet1k-1-layer | `facebook-dinov2-base-imagenet1k-1-layer` | image-classification | Managed compute |
| Meta | facebook-dinov2-image-embeddings-base | `facebook-dinov2-image-embeddings-base` | embeddings | Managed compute |
| Meta | facebook-dinov2-image-embeddings-giant | `facebook-dinov2-image-embeddings-giant` | embeddings | Managed compute |
| Meta | facebook-sam-vit-base | `facebook-sam-vit-base` | image-segmentation | Managed compute |
| Meta | facebook-sam-vit-huge | `facebook-sam-vit-huge` | image-segmentation | Managed compute |
| Meta | facebook-sam-vit-large | `facebook-sam-vit-large` | image-segmentation | Managed compute |
| Meta | Llama 3.3 70B Instruct | `Llama-3.3-70B-Instruct` | chat-completion | Global standard (all regions), Global provisioned (all regions) |
| Meta | Llama 4 Maverick 17B 128E Instruct FP8 | `Llama-4-Maverick-17B-128E-Instruct-FP8` | chat-completion | Global standard (all regions) |
| Meta | Llama-2-13b | `Llama-2-13b` | text-generation | Managed compute |
| Meta | Llama-2-13b-chat | `Llama-2-13b-chat` | chat-completion | Managed compute |
| Meta | Llama-2-70b | `Llama-2-70b` | text-generation | Managed compute |
| Meta | Llama-2-70b-chat | `Llama-2-70b-chat` | chat-completion | Managed compute |
| Meta | Llama-2-7b | `Llama-2-7b` | text-generation | Managed compute |
| Meta | Llama-2-7b-chat | `Llama-2-7b-chat` | chat-completion | Managed compute |
| Microsoft | Aurora | `aurora` | environmental-forecasting | Managed compute |
| Microsoft | BiomedCLIP-PubMedBERT_256-vit_base_patch16_224 | `BiomedCLIP-PubMedBERT_256-vit_base_patch16_224` | zero-shot-image-classification | Managed compute |
| Microsoft | cxrreportgen | `cxrreportgen` | image-text-to-text | Managed compute |
| Microsoft | financial-reports-analysis | `financial-reports-analysis` | chat-completion | Managed compute |
| Microsoft | financial-reports-analysis-v2 | `financial-reports-analysis-v2` | chat-completion | Managed compute |
| Microsoft | MAI-DS-R1 | `MAI-DS-R1` | chat-completion | Global standard (all regions) |
| Microsoft | mattersim | `mattersim` | materials-design | Managed compute |
| Microsoft | medimageinsight | `medimageinsight` | embeddings | Managed compute |
| Microsoft | MedImageInsight ONNX | `medimageinsight-onnx` | embeddings | Managed compute |
| Microsoft | medimageparse | `medimageparse` | image-segmentation | Managed compute |
| Microsoft | MedImageParse 3D | `MedImageParse3D` | image-segmentation | Managed compute |
| Microsoft | microsoft-beit-base-patch16-224-pt22k-ft22k | `microsoft-beit-base-patch16-224-pt22k-ft22k` | image-classification | Managed compute |
| Microsoft | microsoft-llava-med-v1.5-mistral-7b | `microsoft-llava-med-v1.5-mistral-7b` | image-text-to-text | Managed compute |
| Microsoft | microsoft-orca-2-13b | `microsoft-orca-2-13b` | text-generation | Managed compute |
| Microsoft | microsoft-orca-2-7b | `microsoft-orca-2-7b` | text-generation | Managed compute |
| Microsoft | microsoft-phi-1-5 | `microsoft-phi-1-5` | text-generation | Managed compute |
| Microsoft | microsoft-phi-2 | `microsoft-phi-2` | text-generation | Managed compute |
| Microsoft | microsoft-rad-dino | `microsoft-rad-dino` | embeddings | Managed compute |
| Microsoft | microsoft-swinv2-base-patch4-window12-192-22k | `microsoft-swinv2-base-patch4-window12-192-22k` | image-classification | Managed compute |
| Microsoft | Model Router | `model-router` | chat-completion | Global standard (East US 2, Sweden Central), Data Zone standard (East US 2, Sweden Central) |
| Microsoft | Phi-3-medium instruct (128k) | `phi-3-medium-128k-instruct` | chat-completion | Managed compute, Serverless (MaaS) |
| Microsoft | Phi-3-medium instruct (4k) | `phi-3-medium-4k-instruct` | chat-completion | Managed compute, Serverless (MaaS) |
| Microsoft | Phi-3-mini instruct (128k) | `phi-3-mini-128k-instruct` | chat-completion | Managed compute, Serverless (MaaS) |
| Microsoft | Phi-3-mini instruct (4k) | `phi-3-mini-4k-instruct` | chat-completion | Managed compute, Serverless (MaaS) |
| Microsoft | Phi-3-small instruct (128k) | `phi-3-small-128k-instruct` | chat-completion | Managed compute, Serverless (MaaS) |
| Microsoft | Phi-3-small instruct (8k) | `phi-3-small-8k-instruct` | chat-completion | Managed compute, Serverless (MaaS) |
| Microsoft | phi-3-vision-128k-instruct | `phi-3-vision-128k-instruct` | chat-completion | Managed compute, Serverless (MaaS) |
| Microsoft | Phi-3.5-mini instruct (128k) | `phi-3.5-mini-128k-instruct` | chat-completion | Managed compute, Serverless (MaaS) |
| Microsoft | Phi-3.5-MoE instruct (128k) | `phi-3.5-moe-128k-instruct` | chat-completion | Managed compute, Serverless (MaaS) |
| Microsoft | Phi-3.5-vision instruct (128k) | `phi-3.5-vision-128k-instruct` | chat-completion | Managed compute, Serverless (MaaS) |
| Microsoft | Phi-4 | `Phi-4` | chat-completion | Managed compute, Serverless (MaaS) |
| Microsoft | Prov-GigaPath | `Prov-GigaPath` | image-feature-extraction | Managed compute |
| Microsoft | supply-chain-trade-regulations | `supply-chain-trade-regulations` | chat-completion | Managed compute |
| Microsoft | supply-chain-trade-regulations-v2 | `supply-chain-trade-regulations-v2` | chat-completion | Managed compute |
| Microsoft | TamGen | `TamGen` | protein-design | Managed compute |
| Mims Harvard | Atomica | `Atomica` | embeddings | Managed compute |
| Mistral AI | Mistral Document AI 2505 | `mistral-document-ai-2505` | image-to-text | Global standard (all regions), Data zone standard (US and EU) |
| Mistral AI | Mistral Document AI 2512 | `mistral-document-ai-2512` | image-to-text | Global standard (all regions), Data zone standard (US and EU) |
| Mistral AI | Mistral Large 3 | `Mistral-Large-3` | chat-completion | Global standard (all regions), Data zone standard (US and EU) |
| Mistral AI | Mistral-7B-Instruct-v0-1 | `Mistral-7B-Instruct-v0-1` | chat-completion | Managed compute |
| Mistral AI | Mistral-7B-Instruct-v0-2 | `Mistral-7B-Instruct-v0-2` | chat-completion | Managed compute |
| Mistral AI | Mistral-7B-Instruct-v0-3 | `Mistral-7B-Instruct-v0-3` | chat-completion | Managed compute |
| Mistral AI | Mistral-7B-v0-1 | `Mistral-7B-v0-1` | text-generation | Managed compute |
| Mistral AI | mistral-community-Mixtral-8x22B-v01 | `mistral-community-Mixtral-8x22B-v01` | text-generation | Managed compute |
| Mistral AI | mistralai-Mixtral-8x22B-Instruct-v0-1 | `mistralai-Mixtral-8x22B-Instruct-v0-1` | chat-completion | Managed compute |
| Mistral AI | mistralai-Mixtral-8x22B-v0-1 | `mistralai-Mixtral-8x22B-v0-1` | text-generation | Managed compute |
| Mistral AI | mistralai-Mixtral-8x7B-Instruct-v01 | `mistralai-Mixtral-8x7B-Instruct-v01` | chat-completion | Managed compute |
| Mistral AI | Mixtral-8x7B-v0-1 | `Mixtral-8x7B-v0-1` | text-generation | Managed compute |
| Moonshot AI | Kimi K2 Thinking | `Kimi-K2-Thinking` | chat-completion | Global standard (all regions) |
| Moonshot AI | Kimi K2.5 | `Kimi-K2.5` | chat-completion | Global standard (all regions) |
| Paige | Prism | `Prism` | zero-shot-image-classification | Managed compute |
| Paige | Virchow | `Virchow` | image-feature-extraction | Managed compute |
| Paige | Virchow2 | `Virchow2` | image-feature-extraction | Managed compute |
| Runway | runwayml-stable-diffusion-v1-5 | `runwayml-stable-diffusion-v1-5` | text-to-image | Managed compute |
| Runway | runwayml_stable_diffusion_inpainting | `runwayml_stable_diffusion_inpainting` | text-to-image | Managed compute |
| Salesforce | salesforce-blip-image-captioning-base | `salesforce-blip-image-captioning-base` | image-to-text | Managed compute |
| Salesforce | salesforce-blip-vqa-base | `salesforce-blip-vqa-base` | visual-question-answering | Managed compute |
| Salesforce | salesforce-blip2-opt-2-7b-image-to-text | `salesforce-blip2-opt-2-7b-image-to-text` | image-to-text | Managed compute |
| Salesforce | salesforce-blip2-opt-2-7b-vqa | `salesforce-blip2-opt-2-7b-vqa` | visual-question-answering | Managed compute |
| SDAIA | ALLaM-2-7b-instruct | `ALLaM-2-7b-instruct` | chat-completion | Managed compute |
| Snowflake | snowflake-arctic-base | `snowflake-arctic-base` | text-generation | Managed compute |
| Snowflake | snowflake-artic-instruct | `snowflake-artic-instruct` | chat-completion | Managed compute |
| Stability AI | stabilityai-stable-diffusion-2-1 | `stabilityai-stable-diffusion-2-1` | text-to-image | Managed compute |
| Stability AI | stabilityai-stable-diffusion-2-inpainting | `stabilityai-stable-diffusion-2-inpainting` | text-to-image | Managed compute |
| Stability AI | stabilityai-stable-diffusion-xl-base-1-0 | `stabilityai-stable-diffusion-xl-base-1-0` | text-to-image | Managed compute |
| Stability AI | stabilityai-stable-diffusion-xl-refiner-1-0 | `stabilityai-stable-diffusion-xl-refiner-1-0` | image-to-image | Managed compute |
| StanfordMIMI | MedVAE-8-4-2d | `MedVAE-8-4-2d` | embeddings | Managed compute |
| tiiuae | tiiuae-falcon-40b | `tiiuae-falcon-40b` | text-generation | Managed compute |
| tiiuae | tiiuae-falcon-40b-instruct | `tiiuae-falcon-40b-instruct` | text-generation | Managed compute |
| tiiuae | tiiuae-falcon-7b | `tiiuae-falcon-7b` | text-generation | Managed compute |
| tiiuae | tiiuae-falcon-7b-instruct | `tiiuae-falcon-7b-instruct` | text-generation | Managed compute |
| Van Dijk Lab | Cell2Sentence-Embedding | `Cell2Sentence-Embedding` | embeddings | Managed compute |
| Wanglab | MedSAM2 | `MedSAM2` | image-segmentation | Managed compute |
| xAI | Grok 3 | `grok-3` | chat-completion | Global standard (all regions), Data zone standard (US) |
| xAI | Grok 3 Mini | `grok-3-mini` | chat-completion | Global standard (all regions), Data zone standard (US) |
| xAI | Grok 4 | `grok-4` | chat-completion | Global standard (all regions) |
| xAI | Grok 4 Fast Non-Reasoning | `grok-4-fast-non-reasoning` | chat-completion | Global standard (all regions), Data zone standard (US) |
| xAI | Grok 4 Fast Reasoning | `grok-4-fast-reasoning` | chat-completion | Global standard (all regions), Data zone standard (US) |
| xAI | Grok 4.1 Fast Non-Reasoning | `grok-4.1-fast-non-reasoning` | chat-completion | Global standard (all regions) |
| xAI | Grok 4.1 Fast Reasoning | `grok-4.1-fast-reasoning` | chat-completion | Global standard (all regions) |
| xAI | Grok Code Fast 1 | `grok-code-fast-1` | chat-completion | Global standard (all regions) |

## Regional Availability

The following sections list models available in each Azure region via **Global Standard** serverless deployment. Models deployed via managed compute can be provisioned in any Azure region that supports the required GPU SKU. The model-router is only available in East US 2 and Sweden Central.

### Australia East

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### Brazil South

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### Canada Central

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### Canada East

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### Central US

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### East US

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### East US 2

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Model Router** (`model-router`) — chat-completion

### France Central

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### Germany West Central

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### Italy North

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### Japan East

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### Japan West

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### Korea Central

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### North Central US

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### Norway East

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### Poland Central

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### South Africa North

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### South Central US

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### South India

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### Southeast Asia

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### Spain Central

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### Sweden Central

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Model Router** (`model-router`) — chat-completion

### Switzerland North

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### UAE North

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### UK South

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### UK West

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### West Europe

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### West US

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### West US 2

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion

### West US 3

- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — embeddings
- **Cohere Rerank v4.0 Fast** (`Cohere-rerank-v4.0-fast`) — text-classification
- **Cohere Rerank v4.0 Pro** (`Cohere-rerank-v4.0-pro`) — text-classification
- **DeepSeek-R1** (`DeepSeek-R1`) — chat-completion
- **DeepSeek-R1-0528** (`DeepSeek-R1-0528`) — chat-completion
- **DeepSeek-V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek-V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek-V3.2** (`DeepSeek-V3.2`) — chat-completion
- **DeepSeek-V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **FLUX1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B 128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
