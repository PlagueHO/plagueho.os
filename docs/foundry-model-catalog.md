# Microsoft Azure AI Foundry Model Catalog

> **Last updated:** 2026-03-20  
> **Total models:** 156  
> **Publishers:** CompVis, Databricks, Deci AI, Google, HistAI, Hugging Face, Inria, Jean-Baptiste, Juan Manuel Pérez, Meta, Microsoft, Mims Harvard, Mistral AI, OpenAI, OpenMMLab, Paige, Projecte AINA, Runway, SDAIA, Salesforce, Sam Shleifer, Snowflake, Stability AI, StanfordMIMI, Van Dijk Lab, Wanglab, deepset, tiiuae

## Summary

This catalog snapshot lists the 156 models available in the Microsoft Azure AI Foundry model catalog, sourced from the public [Azure/azureml-assets](https://github.com/Azure/azureml-assets) GitHub repository. The catalog covers 28 publishers and spans task types including chat-completion, text-generation, embeddings, image classification, object detection, image segmentation, text-to-image, and more. Model data was collected on 2026-03-20. Regional deployment availability is managed dynamically by the Azure AI Foundry service and is not included in the static spec files; see [Regional Availability](#regional-availability) for guidance.

## Models

| Publisher | Model Name | Model ID | Type | Regions |
|-----------|------------|----------|------|---------|
| CompVis | compvis-stable-diffusion-v1-4 | `compvis-stable-diffusion-v1-4` | text-to-image | — |
| Databricks | databricks-dolly-v2-12b | `databricks-dolly-v2-12b` | text-generation | — |
| Deci AI | Deci-DeciCoder-1b | `Deci-DeciCoder-1b` | text-generation | — |
| Deci AI | deci-decidiffusion-v1-0 | `deci-decidiffusion-v1-0` | text-to-image | — |
| Deci AI | Deci-DeciLM-7B | `Deci-DeciLM-7B` | text-generation | — |
| Deci AI | Deci-DeciLM-7B-instruct | `Deci-DeciLM-7B-instruct` | text-generation | — |
| deepset | deepset-minilm-uncased-squad2 | `deepset-minilm-uncased-squad2` | question-answering | — |
| deepset | deepset-roberta-base-squad2 | `deepset-roberta-base-squad2` | question-answering | — |
| Google | google-vit-base-patch16-224 | `google-vit-base-patch16-224` | image-classification | — |
| Google | t5-base | `t5-base` | text-translation | — |
| Google | t5-large | `t5-large` | text-translation | — |
| Google | t5-small | `t5-small` | text-translation | — |
| HistAI | hibou-b | `hibou-b` | embeddings | — |
| HistAI | hibou-l | `hibou-l` | embeddings | — |
| Hugging Face | bert-base-cased | `bert-base-cased` | fill-mask | — |
| Hugging Face | bert-base-uncased | `bert-base-uncased` | fill-mask | — |
| Hugging Face | bert-large-cased | `bert-large-cased` | fill-mask | — |
| Hugging Face | bert-large-uncased | `bert-large-uncased` | fill-mask | — |
| Hugging Face | distilbert-base-cased | `distilbert-base-cased` | fill-mask | — |
| Hugging Face | distilbert-base-cased-distilled-squad | `distilbert-base-cased-distilled-squad` | question-answering | — |
| Hugging Face | distilbert-base-uncased | `distilbert-base-uncased` | fill-mask | — |
| Hugging Face | distilbert-base-uncased-distilled-squad | `distilbert-base-uncased-distilled-squad` | question-answering | — |
| Hugging Face | distilbert-base-uncased-finetuned-sst-2-english | `distilbert-base-uncased-finetuned-sst-2-english` | text-classification | — |
| Hugging Face | distilgpt2 | `distilgpt2` | text-generation | — |
| Hugging Face | distilroberta-base | `distilroberta-base` | fill-mask | — |
| Hugging Face | gpt2 | `gpt2` | text-generation | — |
| Hugging Face | gpt2-large | `gpt2-large` | text-generation | — |
| Hugging Face | gpt2-medium | `gpt2-medium` | text-generation | — |
| Hugging Face | roberta-base | `roberta-base` | fill-mask | — |
| Hugging Face | roberta-base-openai-detector | `roberta-base-openai-detector` | text-classification | — |
| Hugging Face | roberta-large | `roberta-large` | fill-mask | — |
| Hugging Face | roberta-large-mnli | `roberta-large-mnli` | text-classification | — |
| Hugging Face | roberta-large-openai-detector | `roberta-large-openai-detector` | text-classification | — |
| Inria | camembert-base | `camembert-base` | fill-mask | — |
| Jean-Baptiste | jean-baptiste-camembert-ner | `jean-baptiste-camembert-ner` | token-classification | — |
| Juan Manuel Pérez | finiteautomata-bertweet-base-sentiment-analysis | `finiteautomata-bertweet-base-sentiment-analysis` | text-classification | — |
| Meta | facebook-bart-large-cnn | `facebook-bart-large-cnn` | text-summarization | — |
| Meta | facebook-deit-base-patch16-224 | `facebook-deit-base-patch16-224` | image-classification | — |
| Meta | facebook-dinov2-base-imagenet1k-1-layer | `facebook-dinov2-base-imagenet1k-1-layer` | image-classification | — |
| Meta | facebook-dinov2-image-embeddings-base | `facebook-dinov2-image-embeddings-base` | embeddings | — |
| Meta | facebook-dinov2-image-embeddings-giant | `facebook-dinov2-image-embeddings-giant` | embeddings | — |
| Meta | facebook-sam-vit-base | `facebook-sam-vit-base` | image-segmentation | — |
| Meta | facebook-sam-vit-huge | `facebook-sam-vit-huge` | image-segmentation | — |
| Meta | facebook-sam-vit-large | `facebook-sam-vit-large` | image-segmentation | — |
| Meta | Llama-2-13b | `Llama-2-13b` | text-generation | — |
| Meta | Llama-2-13b-chat | `Llama-2-13b-chat` | chat-completion | — |
| Meta | Llama-2-70b | `Llama-2-70b` | text-generation | — |
| Meta | Llama-2-70b-chat | `Llama-2-70b-chat` | chat-completion | — |
| Meta | Llama-2-7b | `Llama-2-7b` | text-generation | — |
| Meta | Llama-2-7b-chat | `Llama-2-7b-chat` | chat-completion | — |
| Microsoft | Aurora | `aurora` | environmental-forecasting | — |
| Microsoft | automl-image-classification | `automl-image-classification` | image-classification | — |
| Microsoft | automl-ner | `automl-ner` | token-classification | — |
| Microsoft | automl-text-classification | `automl-text-classification` | text-classification | — |
| Microsoft | automl_instance_segmentation | `automl_instance_segmentation` | image-segmentation | — |
| Microsoft | automl_object_detection | `automl_object_detection` | object-detection | — |
| Microsoft | BiomedCLIP-PubMedBERT_256-vit_base_patch16_224 | `BiomedCLIP-PubMedBERT_256-vit_base_patch16_224` | zero-shot-image-classification | — |
| Microsoft | cxrreportgen | `cxrreportgen` | image-text-to-text | — |
| Microsoft | financial-reports-analysis | `financial-reports-analysis` | chat-completion | — |
| Microsoft | financial-reports-analysis-v2 | `financial-reports-analysis-v2` | chat-completion | — |
| Microsoft | mattersim | `mattersim` | materials-design | — |
| Microsoft | medimageinsight | `medimageinsight` | embeddings | — |
| Microsoft | MedImageInsight ONNX | `medimageinsight-onnx` | embeddings | — |
| Microsoft | medimageparse | `medimageparse` | image-segmentation | — |
| Microsoft | MedImageParse 3D | `MedImageParse3D` | image-segmentation | — |
| Microsoft | microsoft-beit-base-patch16-224-pt22k-ft22k | `microsoft-beit-base-patch16-224-pt22k-ft22k` | image-classification | — |
| Microsoft | microsoft-deberta-base | `microsoft-deberta-base` | fill-mask | — |
| Microsoft | microsoft-deberta-base-mnli | `microsoft-deberta-base-mnli` | text-classification | — |
| Microsoft | microsoft-deberta-large | `microsoft-deberta-large` | fill-mask | — |
| Microsoft | microsoft-deberta-large-mnli | `microsoft-deberta-large-mnli` | text-classification | — |
| Microsoft | microsoft-deberta-xlarge | `microsoft-deberta-xlarge` | fill-mask | — |
| Microsoft | microsoft-llava-med-v1.5-mistral-7b | `microsoft-llava-med-v1.5-mistral-7b` | image-text-to-text | — |
| Microsoft | microsoft-orca-2-13b | `microsoft-orca-2-13b` | text-generation | — |
| Microsoft | microsoft-orca-2-7b | `microsoft-orca-2-7b` | text-generation | — |
| Microsoft | microsoft-phi-1-5 | `microsoft-phi-1-5` | text-generation | — |
| Microsoft | microsoft-phi-2 | `microsoft-phi-2` | text-generation | — |
| Microsoft | microsoft-rad-dino | `microsoft-rad-dino` | embeddings | — |
| Microsoft | microsoft-swinv2-base-patch4-window12-192-22k | `microsoft-swinv2-base-patch4-window12-192-22k` | image-classification | — |
| Microsoft | mmeft | `mmeft` | multimodal-classification | — |
| Microsoft | Phi-3-medium instruct (128k) | `phi-3-medium-128k-instruct` | chat-completion | — |
| Microsoft | Phi-3-medium instruct (4k) | `phi-3-medium-4k-instruct` | chat-completion | — |
| Microsoft | Phi-3-mini instruct (128k) | `phi-3-mini-128k-instruct` | chat-completion | — |
| Microsoft | Phi-3-mini instruct (4k) | `phi-3-mini-4k-instruct` | chat-completion | — |
| Microsoft | Phi-3-small instruct (128k) | `phi-3-small-128k-instruct` | chat-completion | — |
| Microsoft | Phi-3-small instruct (8k) | `phi-3-small-8k-instruct` | chat-completion | — |
| Microsoft | phi-3-vision-128k-instruct | `phi-3-vision-128k-instruct` | chat-completion | — |
| Microsoft | Phi-3.5-mini instruct (128k) | `phi-3.5-mini-128k-instruct` | chat-completion | — |
| Microsoft | Phi-3.5-MoE instruct (128k) | `phi-3.5-moe-128k-instruct` | chat-completion | — |
| Microsoft | Phi-3.5-vision instruct (128k) | `phi-3.5-vision-128k-instruct` | chat-completion | — |
| Microsoft | Phi-4 | `Phi-4` | chat-completion | — |
| Microsoft | Prov-GigaPath | `Prov-GigaPath` | image-feature-extraction | — |
| Microsoft | supply-chain-trade-regulations | `supply-chain-trade-regulations` | chat-completion | — |
| Microsoft | supply-chain-trade-regulations-v2 | `supply-chain-trade-regulations-v2` | chat-completion | — |
| Microsoft | TamGen | `TamGen` | protein-design | — |
| Mims Harvard | Atomica | `Atomica` | embeddings | — |
| Mistral AI | Mistral-7B-Instruct-v0-1 | `Mistral-7B-Instruct-v0-1` | chat-completion | — |
| Mistral AI | Mistral-7B-Instruct-v0-2 | `Mistral-7B-Instruct-v0-2` | chat-completion | — |
| Mistral AI | Mistral-7B-Instruct-v0-3 | `Mistral-7B-Instruct-v0-3` | chat-completion | — |
| Mistral AI | Mistral-7B-v0-1 | `Mistral-7B-v0-1` | text-generation | — |
| Mistral AI | mistral-community-Mixtral-8x22B-v01 | `mistral-community-Mixtral-8x22B-v01` | text-generation | — |
| Mistral AI | mistralai-Mixtral-8x22B-Instruct-v0-1 | `mistralai-Mixtral-8x22B-Instruct-v0-1` | chat-completion | — |
| Mistral AI | mistralai-Mixtral-8x22B-v0-1 | `mistralai-Mixtral-8x22B-v0-1` | text-generation | — |
| Mistral AI | mistralai-Mixtral-8x7B-Instruct-v01 | `mistralai-Mixtral-8x7B-Instruct-v01` | chat-completion | — |
| Mistral AI | Mixtral-8x7B-v0-1 | `Mixtral-8x7B-v0-1` | text-generation | — |
| OpenAI | openai-clip-image-text-embeddings-vit-base-patch32 | `openai-clip-image-text-embeddings-vit-base-patch32` | embeddings | — |
| OpenAI | openai-clip-image-text-embeddings-vit-large-patch14-336 | `openai-clip-image-text-embeddings-vit-large-patch14-336` | embeddings | — |
| OpenAI | openai-clip-vit-base-patch32 | `openai-clip-vit-base-patch32` | zero-shot-image-classification | — |
| OpenAI | openai-clip-vit-large-patch14 | `openai-clip-vit-large-patch14` | zero-shot-image-classification | — |
| OpenAI | openai-whisper-large | `openai-whisper-large` | automatic-speech-recognition | — |
| OpenAI | openai-whisper-large-v3 | `openai-whisper-large-v3` | automatic-speech-recognition | — |
| OpenMMLab | bytetrack_yolox_x_crowdhuman_mot17-private-half | `bytetrack_yolox_x_crowdhuman_mot17-private-half` | multi-object-tracking | — |
| OpenMMLab | deformable_detr_twostage_refine_r50_16x2_50e_coco | `deformable_detr_twostage_refine_r50_16x2_50e_coco` | image-segmentation | — |
| OpenMMLab | mask_rcnn_swin-t-p4-w7_fpn_1x_coco | `mask_rcnn_swin-t-p4-w7_fpn_1x_coco` | image-segmentation | — |
| OpenMMLab | mmd-3x-deformable-detr_refine_twostage_r50_16xb2-50e_coco | `mmd-3x-deformable-detr_refine_twostage_r50_16xb2-50e_coco` | object-detection | — |
| OpenMMLab | mmd-3x-mask-rcnn_swin-t-p4-w7_fpn_1x_coco | `mmd-3x-mask-rcnn_swin-t-p4-w7_fpn_1x_coco` | image-segmentation | — |
| OpenMMLab | mmd-3x-rtmdet-ins_x_8xb16-300e_coco | `mmd-3x-rtmdet-ins_x_8xb16-300e_coco` | image-segmentation | — |
| OpenMMLab | mmd-3x-sparse-rcnn_r101_fpn_300-proposals_crop-ms-480-800-3x_coco | `mmd-3x-sparse-rcnn_r101_fpn_300-proposals_crop-ms-480-800-3x_coco` | object-detection | — |
| OpenMMLab | mmd-3x-sparse-rcnn_r50_fpn_300-proposals_crop-ms-480-800-3x_coco | `mmd-3x-sparse-rcnn_r50_fpn_300-proposals_crop-ms-480-800-3x_coco` | object-detection | — |
| OpenMMLab | mmd-3x-vfnet_r50-mdconv-c3-c5_fpn_ms-2x_coco | `mmd-3x-vfnet_r50-mdconv-c3-c5_fpn_ms-2x_coco` | object-detection | — |
| OpenMMLab | mmd-3x-vfnet_x101-64x4d-mdconv-c3-c5_fpn_ms-2x_coco | `mmd-3x-vfnet_x101-64x4d-mdconv-c3-c5_fpn_ms-2x_coco` | object-detection | — |
| OpenMMLab | mmd-3x-yolof_r50_c5_8x8_1x_coco | `mmd-3x-yolof_r50_c5_8x8_1x_coco` | object-detection | — |
| OpenMMLab | ocsort_yolox_x_crowdhuman_mot17-private-half | `ocsort_yolox_x_crowdhuman_mot17-private-half` | multi-object-tracking | — |
| OpenMMLab | sparse_rcnn_r101_fpn_300_proposals_crop_mstrain_480-800_3x_coco | `sparse_rcnn_r101_fpn_300_proposals_crop_mstrain_480-800_3x_coco` | object-detection | — |
| OpenMMLab | sparse_rcnn_r50_fpn_300_proposals_crop_mstrain_480-800_3x_coco | `sparse_rcnn_r50_fpn_300_proposals_crop_mstrain_480-800_3x_coco` | object-detection | — |
| OpenMMLab | vfnet_r50_fpn_mdconv_c3-c5_mstrain_2x_coco | `vfnet_r50_fpn_mdconv_c3-c5_mstrain_2x_coco` | object-detection | — |
| OpenMMLab | vfnet_x101_64x4d_fpn_mdconv_c3-c5_mstrain_2x_coco | `vfnet_x101_64x4d_fpn_mdconv_c3-c5_mstrain_2x_coco` | object-detection | — |
| OpenMMLab | yolof_r50_c5_8x8_1x_coco | `yolof_r50_c5_8x8_1x_coco` | object-detection | — |
| Paige | Prism | `Prism` | zero-shot-image-classification | — |
| Paige | Virchow | `Virchow` | image-feature-extraction | — |
| Paige | Virchow2 | `Virchow2` | image-feature-extraction | — |
| Projecte AINA | projecte-aina-aguila-7b | `projecte-aina-aguila-7b` | text-generation | — |
| Projecte AINA | projecte-aina-FLOR-1-3B | `projecte-aina-FLOR-1-3B` | text-generation | — |
| Projecte AINA | projecte-aina-FLOR-1-3B-Instructed | `projecte-aina-FLOR-1-3B-Instructed` | text-generation | — |
| Projecte AINA | projecte-aina-FLOR-6-3B | `projecte-aina-FLOR-6-3B` | text-generation | — |
| Projecte AINA | projecte-aina-FLOR-6-3B-Instructed | `projecte-aina-FLOR-6-3B-Instructed` | text-generation | — |
| Runway | runwayml-stable-diffusion-v1-5 | `runwayml-stable-diffusion-v1-5` | text-to-image | — |
| Runway | runwayml_stable_diffusion_inpainting | `runwayml_stable_diffusion_inpainting` | text-to-image | — |
| Salesforce | salesforce-blip-image-captioning-base | `salesforce-blip-image-captioning-base` | image-to-text | — |
| Salesforce | salesforce-blip-vqa-base | `salesforce-blip-vqa-base` | visual-question-answering | — |
| Salesforce | salesforce-blip2-opt-2-7b-image-to-text | `salesforce-blip2-opt-2-7b-image-to-text` | image-to-text | — |
| Salesforce | salesforce-blip2-opt-2-7b-vqa | `salesforce-blip2-opt-2-7b-vqa` | visual-question-answering | — |
| Sam Shleifer | sshleifer-distilbart-cnn-12-6 | `sshleifer-distilbart-cnn-12-6` | text-summarization | — |
| SDAIA | ALLaM-2-7b-instruct | `ALLaM-2-7b-instruct` | chat-completion | — |
| Snowflake | snowflake-arctic-base | `snowflake-arctic-base` | text-generation | — |
| Snowflake | snowflake-artic-instruct | `snowflake-artic-instruct` | chat-completion | — |
| Stability AI | stabilityai-stable-diffusion-2-1 | `stabilityai-stable-diffusion-2-1` | text-to-image | — |
| Stability AI | stabilityai-stable-diffusion-2-inpainting | `stabilityai-stable-diffusion-2-inpainting` | text-to-image | — |
| Stability AI | stabilityai-stable-diffusion-xl-base-1-0 | `stabilityai-stable-diffusion-xl-base-1-0` | text-to-image | — |
| Stability AI | stabilityai-stable-diffusion-xl-refiner-1-0 | `stabilityai-stable-diffusion-xl-refiner-1-0` | image-to-image | — |
| StanfordMIMI | MedVAE-8-4-2d | `MedVAE-8-4-2d` | embeddings | — |
| tiiuae | tiiuae-falcon-40b | `tiiuae-falcon-40b` | text-generation | — |
| tiiuae | tiiuae-falcon-40b-instruct | `tiiuae-falcon-40b-instruct` | text-generation | — |
| tiiuae | tiiuae-falcon-7b | `tiiuae-falcon-7b` | text-generation | — |
| tiiuae | tiiuae-falcon-7b-instruct | `tiiuae-falcon-7b-instruct` | text-generation | — |
| Van Dijk Lab | Cell2Sentence-Embedding | `Cell2Sentence-Embedding` | embeddings | — |
| Wanglab | MedSAM2 | `MedSAM2` | image-segmentation | — |

## Regional Availability

Regional availability for Azure AI Foundry models is dynamically managed by the Azure AI Foundry service and varies per model and deployment type.

For the most current regional availability, refer to the [Azure AI Foundry model catalog](https://ai.azure.com/explore/models) or the [Azure AI Foundry documentation](https://learn.microsoft.com/azure/ai-studio/).

### Models by Task Type

#### Automatic Speech Recognition

- **openai-whisper-large** (`openai-whisper-large`) — OpenAI
- **openai-whisper-large-v3** (`openai-whisper-large-v3`) — OpenAI

#### Chat Completion

- **Llama-2-13b-chat** (`Llama-2-13b-chat`) — Meta
- **Llama-2-70b-chat** (`Llama-2-70b-chat`) — Meta
- **Llama-2-7b-chat** (`Llama-2-7b-chat`) — Meta
- **financial-reports-analysis** (`financial-reports-analysis`) — Microsoft
- **financial-reports-analysis-v2** (`financial-reports-analysis-v2`) — Microsoft
- **Phi-3-medium instruct (128k)** (`phi-3-medium-128k-instruct`) — Microsoft
- **Phi-3-medium instruct (4k)** (`phi-3-medium-4k-instruct`) — Microsoft
- **Phi-3-mini instruct (128k)** (`phi-3-mini-128k-instruct`) — Microsoft
- **Phi-3-mini instruct (4k)** (`phi-3-mini-4k-instruct`) — Microsoft
- **Phi-3-small instruct (128k)** (`phi-3-small-128k-instruct`) — Microsoft
- **Phi-3-small instruct (8k)** (`phi-3-small-8k-instruct`) — Microsoft
- **phi-3-vision-128k-instruct** (`phi-3-vision-128k-instruct`) — Microsoft
- **Phi-3.5-mini instruct (128k)** (`phi-3.5-mini-128k-instruct`) — Microsoft
- **Phi-3.5-MoE instruct (128k)** (`phi-3.5-moe-128k-instruct`) — Microsoft
- **Phi-3.5-vision instruct (128k)** (`phi-3.5-vision-128k-instruct`) — Microsoft
- **Phi-4** (`Phi-4`) — Microsoft
- **supply-chain-trade-regulations** (`supply-chain-trade-regulations`) — Microsoft
- **supply-chain-trade-regulations-v2** (`supply-chain-trade-regulations-v2`) — Microsoft
- **Mistral-7B-Instruct-v0-1** (`Mistral-7B-Instruct-v0-1`) — Mistral AI
- **Mistral-7B-Instruct-v0-2** (`Mistral-7B-Instruct-v0-2`) — Mistral AI
- **Mistral-7B-Instruct-v0-3** (`Mistral-7B-Instruct-v0-3`) — Mistral AI
- **mistralai-Mixtral-8x22B-Instruct-v0-1** (`mistralai-Mixtral-8x22B-Instruct-v0-1`) — Mistral AI
- **mistralai-Mixtral-8x7B-Instruct-v01** (`mistralai-Mixtral-8x7B-Instruct-v01`) — Mistral AI
- **ALLaM-2-7b-instruct** (`ALLaM-2-7b-instruct`) — SDAIA
- **snowflake-artic-instruct** (`snowflake-artic-instruct`) — Snowflake

#### Embeddings

- **hibou-b** (`hibou-b`) — HistAI
- **hibou-l** (`hibou-l`) — HistAI
- **facebook-dinov2-image-embeddings-base** (`facebook-dinov2-image-embeddings-base`) — Meta
- **facebook-dinov2-image-embeddings-giant** (`facebook-dinov2-image-embeddings-giant`) — Meta
- **medimageinsight** (`medimageinsight`) — Microsoft
- **MedImageInsight ONNX** (`medimageinsight-onnx`) — Microsoft
- **microsoft-rad-dino** (`microsoft-rad-dino`) — Microsoft
- **Atomica** (`Atomica`) — Mims Harvard
- **openai-clip-image-text-embeddings-vit-base-patch32** (`openai-clip-image-text-embeddings-vit-base-patch32`) — OpenAI
- **openai-clip-image-text-embeddings-vit-large-patch14-336** (`openai-clip-image-text-embeddings-vit-large-patch14-336`) — OpenAI
- **MedVAE-8-4-2d** (`MedVAE-8-4-2d`) — StanfordMIMI
- **Cell2Sentence-Embedding** (`Cell2Sentence-Embedding`) — Van Dijk Lab

#### Environmental Forecasting

- **Aurora** (`aurora`) — Microsoft

#### Fill Mask

- **bert-base-cased** (`bert-base-cased`) — Hugging Face
- **bert-base-uncased** (`bert-base-uncased`) — Hugging Face
- **bert-large-cased** (`bert-large-cased`) — Hugging Face
- **bert-large-uncased** (`bert-large-uncased`) — Hugging Face
- **distilbert-base-cased** (`distilbert-base-cased`) — Hugging Face
- **distilbert-base-uncased** (`distilbert-base-uncased`) — Hugging Face
- **distilroberta-base** (`distilroberta-base`) — Hugging Face
- **roberta-base** (`roberta-base`) — Hugging Face
- **roberta-large** (`roberta-large`) — Hugging Face
- **camembert-base** (`camembert-base`) — Inria
- **microsoft-deberta-base** (`microsoft-deberta-base`) — Microsoft
- **microsoft-deberta-large** (`microsoft-deberta-large`) — Microsoft
- **microsoft-deberta-xlarge** (`microsoft-deberta-xlarge`) — Microsoft

#### Image Classification

- **google-vit-base-patch16-224** (`google-vit-base-patch16-224`) — Google
- **facebook-deit-base-patch16-224** (`facebook-deit-base-patch16-224`) — Meta
- **facebook-dinov2-base-imagenet1k-1-layer** (`facebook-dinov2-base-imagenet1k-1-layer`) — Meta
- **automl-image-classification** (`automl-image-classification`) — Microsoft
- **microsoft-beit-base-patch16-224-pt22k-ft22k** (`microsoft-beit-base-patch16-224-pt22k-ft22k`) — Microsoft
- **microsoft-swinv2-base-patch4-window12-192-22k** (`microsoft-swinv2-base-patch4-window12-192-22k`) — Microsoft

#### Image Feature Extraction

- **Prov-GigaPath** (`Prov-GigaPath`) — Microsoft
- **Virchow** (`Virchow`) — Paige
- **Virchow2** (`Virchow2`) — Paige

#### Image Segmentation

- **facebook-sam-vit-base** (`facebook-sam-vit-base`) — Meta
- **facebook-sam-vit-huge** (`facebook-sam-vit-huge`) — Meta
- **facebook-sam-vit-large** (`facebook-sam-vit-large`) — Meta
- **automl_instance_segmentation** (`automl_instance_segmentation`) — Microsoft
- **medimageparse** (`medimageparse`) — Microsoft
- **MedImageParse 3D** (`MedImageParse3D`) — Microsoft
- **deformable_detr_twostage_refine_r50_16x2_50e_coco** (`deformable_detr_twostage_refine_r50_16x2_50e_coco`) — OpenMMLab
- **mask_rcnn_swin-t-p4-w7_fpn_1x_coco** (`mask_rcnn_swin-t-p4-w7_fpn_1x_coco`) — OpenMMLab
- **mmd-3x-mask-rcnn_swin-t-p4-w7_fpn_1x_coco** (`mmd-3x-mask-rcnn_swin-t-p4-w7_fpn_1x_coco`) — OpenMMLab
- **mmd-3x-rtmdet-ins_x_8xb16-300e_coco** (`mmd-3x-rtmdet-ins_x_8xb16-300e_coco`) — OpenMMLab
- **MedSAM2** (`MedSAM2`) — Wanglab

#### Image Text To Text

- **cxrreportgen** (`cxrreportgen`) — Microsoft
- **microsoft-llava-med-v1.5-mistral-7b** (`microsoft-llava-med-v1.5-mistral-7b`) — Microsoft

#### Image To Image

- **stabilityai-stable-diffusion-xl-refiner-1-0** (`stabilityai-stable-diffusion-xl-refiner-1-0`) — Stability AI

#### Image To Text

- **salesforce-blip-image-captioning-base** (`salesforce-blip-image-captioning-base`) — Salesforce
- **salesforce-blip2-opt-2-7b-image-to-text** (`salesforce-blip2-opt-2-7b-image-to-text`) — Salesforce

#### Materials Design

- **mattersim** (`mattersim`) — Microsoft

#### Multi Object Tracking

- **bytetrack_yolox_x_crowdhuman_mot17-private-half** (`bytetrack_yolox_x_crowdhuman_mot17-private-half`) — OpenMMLab
- **ocsort_yolox_x_crowdhuman_mot17-private-half** (`ocsort_yolox_x_crowdhuman_mot17-private-half`) — OpenMMLab

#### Multimodal Classification

- **mmeft** (`mmeft`) — Microsoft

#### Object Detection

- **automl_object_detection** (`automl_object_detection`) — Microsoft
- **mmd-3x-deformable-detr_refine_twostage_r50_16xb2-50e_coco** (`mmd-3x-deformable-detr_refine_twostage_r50_16xb2-50e_coco`) — OpenMMLab
- **mmd-3x-sparse-rcnn_r101_fpn_300-proposals_crop-ms-480-800-3x_coco** (`mmd-3x-sparse-rcnn_r101_fpn_300-proposals_crop-ms-480-800-3x_coco`) — OpenMMLab
- **mmd-3x-sparse-rcnn_r50_fpn_300-proposals_crop-ms-480-800-3x_coco** (`mmd-3x-sparse-rcnn_r50_fpn_300-proposals_crop-ms-480-800-3x_coco`) — OpenMMLab
- **mmd-3x-vfnet_r50-mdconv-c3-c5_fpn_ms-2x_coco** (`mmd-3x-vfnet_r50-mdconv-c3-c5_fpn_ms-2x_coco`) — OpenMMLab
- **mmd-3x-vfnet_x101-64x4d-mdconv-c3-c5_fpn_ms-2x_coco** (`mmd-3x-vfnet_x101-64x4d-mdconv-c3-c5_fpn_ms-2x_coco`) — OpenMMLab
- **mmd-3x-yolof_r50_c5_8x8_1x_coco** (`mmd-3x-yolof_r50_c5_8x8_1x_coco`) — OpenMMLab
- **sparse_rcnn_r101_fpn_300_proposals_crop_mstrain_480-800_3x_coco** (`sparse_rcnn_r101_fpn_300_proposals_crop_mstrain_480-800_3x_coco`) — OpenMMLab
- **sparse_rcnn_r50_fpn_300_proposals_crop_mstrain_480-800_3x_coco** (`sparse_rcnn_r50_fpn_300_proposals_crop_mstrain_480-800_3x_coco`) — OpenMMLab
- **vfnet_r50_fpn_mdconv_c3-c5_mstrain_2x_coco** (`vfnet_r50_fpn_mdconv_c3-c5_mstrain_2x_coco`) — OpenMMLab
- **vfnet_x101_64x4d_fpn_mdconv_c3-c5_mstrain_2x_coco** (`vfnet_x101_64x4d_fpn_mdconv_c3-c5_mstrain_2x_coco`) — OpenMMLab
- **yolof_r50_c5_8x8_1x_coco** (`yolof_r50_c5_8x8_1x_coco`) — OpenMMLab

#### Protein Design

- **TamGen** (`TamGen`) — Microsoft

#### Question Answering

- **deepset-minilm-uncased-squad2** (`deepset-minilm-uncased-squad2`) — deepset
- **deepset-roberta-base-squad2** (`deepset-roberta-base-squad2`) — deepset
- **distilbert-base-cased-distilled-squad** (`distilbert-base-cased-distilled-squad`) — Hugging Face
- **distilbert-base-uncased-distilled-squad** (`distilbert-base-uncased-distilled-squad`) — Hugging Face

#### Text Classification

- **distilbert-base-uncased-finetuned-sst-2-english** (`distilbert-base-uncased-finetuned-sst-2-english`) — Hugging Face
- **roberta-base-openai-detector** (`roberta-base-openai-detector`) — Hugging Face
- **roberta-large-mnli** (`roberta-large-mnli`) — Hugging Face
- **roberta-large-openai-detector** (`roberta-large-openai-detector`) — Hugging Face
- **finiteautomata-bertweet-base-sentiment-analysis** (`finiteautomata-bertweet-base-sentiment-analysis`) — Juan Manuel Pérez
- **automl-text-classification** (`automl-text-classification`) — Microsoft
- **microsoft-deberta-base-mnli** (`microsoft-deberta-base-mnli`) — Microsoft
- **microsoft-deberta-large-mnli** (`microsoft-deberta-large-mnli`) — Microsoft

#### Text Generation

- **databricks-dolly-v2-12b** (`databricks-dolly-v2-12b`) — Databricks
- **Deci-DeciCoder-1b** (`Deci-DeciCoder-1b`) — Deci AI
- **Deci-DeciLM-7B** (`Deci-DeciLM-7B`) — Deci AI
- **Deci-DeciLM-7B-instruct** (`Deci-DeciLM-7B-instruct`) — Deci AI
- **distilgpt2** (`distilgpt2`) — Hugging Face
- **gpt2** (`gpt2`) — Hugging Face
- **gpt2-large** (`gpt2-large`) — Hugging Face
- **gpt2-medium** (`gpt2-medium`) — Hugging Face
- **Llama-2-13b** (`Llama-2-13b`) — Meta
- **Llama-2-70b** (`Llama-2-70b`) — Meta
- **Llama-2-7b** (`Llama-2-7b`) — Meta
- **microsoft-orca-2-13b** (`microsoft-orca-2-13b`) — Microsoft
- **microsoft-orca-2-7b** (`microsoft-orca-2-7b`) — Microsoft
- **microsoft-phi-1-5** (`microsoft-phi-1-5`) — Microsoft
- **microsoft-phi-2** (`microsoft-phi-2`) — Microsoft
- **Mistral-7B-v0-1** (`Mistral-7B-v0-1`) — Mistral AI
- **mistral-community-Mixtral-8x22B-v01** (`mistral-community-Mixtral-8x22B-v01`) — Mistral AI
- **mistralai-Mixtral-8x22B-v0-1** (`mistralai-Mixtral-8x22B-v0-1`) — Mistral AI
- **Mixtral-8x7B-v0-1** (`Mixtral-8x7B-v0-1`) — Mistral AI
- **projecte-aina-aguila-7b** (`projecte-aina-aguila-7b`) — Projecte AINA
- **projecte-aina-FLOR-1-3B** (`projecte-aina-FLOR-1-3B`) — Projecte AINA
- **projecte-aina-FLOR-1-3B-Instructed** (`projecte-aina-FLOR-1-3B-Instructed`) — Projecte AINA
- **projecte-aina-FLOR-6-3B** (`projecte-aina-FLOR-6-3B`) — Projecte AINA
- **projecte-aina-FLOR-6-3B-Instructed** (`projecte-aina-FLOR-6-3B-Instructed`) — Projecte AINA
- **snowflake-arctic-base** (`snowflake-arctic-base`) — Snowflake
- **tiiuae-falcon-40b** (`tiiuae-falcon-40b`) — tiiuae
- **tiiuae-falcon-40b-instruct** (`tiiuae-falcon-40b-instruct`) — tiiuae
- **tiiuae-falcon-7b** (`tiiuae-falcon-7b`) — tiiuae
- **tiiuae-falcon-7b-instruct** (`tiiuae-falcon-7b-instruct`) — tiiuae

#### Text Summarization

- **facebook-bart-large-cnn** (`facebook-bart-large-cnn`) — Meta
- **sshleifer-distilbart-cnn-12-6** (`sshleifer-distilbart-cnn-12-6`) — Sam Shleifer

#### Text To Image

- **compvis-stable-diffusion-v1-4** (`compvis-stable-diffusion-v1-4`) — CompVis
- **deci-decidiffusion-v1-0** (`deci-decidiffusion-v1-0`) — Deci AI
- **runwayml-stable-diffusion-v1-5** (`runwayml-stable-diffusion-v1-5`) — Runway
- **runwayml_stable_diffusion_inpainting** (`runwayml_stable_diffusion_inpainting`) — Runway
- **stabilityai-stable-diffusion-2-1** (`stabilityai-stable-diffusion-2-1`) — Stability AI
- **stabilityai-stable-diffusion-2-inpainting** (`stabilityai-stable-diffusion-2-inpainting`) — Stability AI
- **stabilityai-stable-diffusion-xl-base-1-0** (`stabilityai-stable-diffusion-xl-base-1-0`) — Stability AI

#### Text Translation

- **t5-base** (`t5-base`) — Google
- **t5-large** (`t5-large`) — Google
- **t5-small** (`t5-small`) — Google

#### Token Classification

- **jean-baptiste-camembert-ner** (`jean-baptiste-camembert-ner`) — Jean-Baptiste
- **automl-ner** (`automl-ner`) — Microsoft

#### Visual Question Answering

- **salesforce-blip-vqa-base** (`salesforce-blip-vqa-base`) — Salesforce
- **salesforce-blip2-opt-2-7b-vqa** (`salesforce-blip2-opt-2-7b-vqa`) — Salesforce

#### Zero Shot Image Classification

- **BiomedCLIP-PubMedBERT_256-vit_base_patch16_224** (`BiomedCLIP-PubMedBERT_256-vit_base_patch16_224`) — Microsoft
- **openai-clip-vit-base-patch32** (`openai-clip-vit-base-patch32`) — OpenAI
- **openai-clip-vit-large-patch14** (`openai-clip-vit-large-patch14`) — OpenAI
- **Prism** (`Prism`) — Paige

