# Microsoft Foundry Model Catalog

> **Last updated:** 2026-03-22
> **Total models:** 89
> **Publishers:** Anthropic, Black Forest Labs, Cohere, DeepSeek, Meta, Microsoft, Mistral AI, Moonshot AI, NTT DATA, Nixtla, OpenAI, Stability AI, xAI

## Summary

This document provides a snapshot of the Microsoft Azure AI Foundry model catalog as of March 22, 2026. It lists 89 documented models from 13 publishers across two categories: *Models sold directly by Azure* (Azure OpenAI and select partner models billed under Microsoft Product Terms with Global Standard deployment across all 30 Azure Foundry regions) and *Models from partners and community* (third-party models deployable as serverless APIs in a subset of regions). The full Foundry catalog exceeds 1,900 models, including hundreds of open-source models from the Hugging Face hub that are not individually enumerated here. Regional availability for serverless partner models is primarily: East US, East US 2, North Central US, South Central US, Sweden Central, West US, and West US 3 (exact coverage varies by model and is noted in the table below).

## Models

| Publisher | Model Name | Model ID | Type | Regions |
|-----------|------------|----------|------|---------|
| Anthropic | Claude Haiku 4.5 (Preview) | `claude-haiku-4-5` | chat-completion | East US 2, Sweden Central |
| Anthropic | Claude Opus 4.1 (Preview) | `claude-opus-4-1` | chat-completion | East US 2, Sweden Central |
| Anthropic | Claude Opus 4.5 (Preview) | `claude-opus-4-5` | chat-completion | East US 2, Sweden Central |
| Anthropic | Claude Opus 4.6 (Preview) | `claude-opus-4-6` | chat-completion | East US 2, Sweden Central |
| Anthropic | Claude Sonnet 4.5 (Preview) | `claude-sonnet-4-5` | chat-completion | East US 2, Sweden Central |
| Anthropic | Claude Sonnet 4.6 (Preview) | `claude-sonnet-4-6` | chat-completion | East US 2, Sweden Central |
| Black Forest Labs | FLUX-1.1 [pro] | `FLUX-1.1-pro` | image-generation | Global Standard — all Azure Foundry regions |
| Black Forest Labs | FLUX.1 Kontext [pro] | `FLUX.1-Kontext-pro` | image-generation | Global Standard — all Azure Foundry regions |
| Black Forest Labs | FLUX.2 [flex] | `FLUX.2-flex` | image-generation | Global Standard — all Azure Foundry regions |
| Black Forest Labs | FLUX.2 [pro] | `FLUX.2-pro` | image-generation | Global Standard — all Azure Foundry regions |
| Cohere | Cohere Command A | `Cohere-command-a` | chat-completion | Global Standard — all Azure Foundry regions |
| Cohere | Cohere Command R 08-2024 | `Cohere-command-r-08-2024` | chat-completion | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Cohere | Cohere Command R+ 08-2024 | `Cohere-command-r-plus-08-2024` | chat-completion | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Cohere | Cohere Embed v3 (English) | `Cohere-embed-v3-english` | text-embedding | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Cohere | Cohere Embed v3 (Multilingual) | `Cohere-embed-v3-multilingual` | text-embedding | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Cohere | Cohere Embed v4.0 | `embed-v-4-0` | text-embedding | Global Standard — all Azure Foundry regions |
| Cohere | Cohere Rerank v3.5 | `Cohere-rerank-v3.5` | text-reranking | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Cohere | Cohere Rerank v4.0 (fast) | `Cohere-rerank-v4.0-fast` | text-reranking | Global Standard — all Azure Foundry regions |
| Cohere | Cohere Rerank v4.0 (pro) | `Cohere-rerank-v4.0-pro` | text-reranking | Global Standard — all Azure Foundry regions |
| DeepSeek | DeepSeek R1 | `DeepSeek-R1` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| DeepSeek | DeepSeek R1 0528 | `DeepSeek-R1-0528` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| DeepSeek | DeepSeek V3-0324 | `DeepSeek-V3-0324` | chat-completion | Global Standard — all Azure Foundry regions |
| DeepSeek | DeepSeek V3.1 | `DeepSeek-V3.1` | chat-completion | Global Standard — all Azure Foundry regions |
| DeepSeek | DeepSeek V3.2 | `DeepSeek-V3.2` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| DeepSeek | DeepSeek V3.2 Speciale | `DeepSeek-V3.2-Speciale` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| Meta | Llama 3.1 405B Instruct | `Meta-Llama-3.1-405B-Instruct` | chat-completion | East US, East US 2, North Central US, South Central US, West US, West US 3 |
| Meta | Llama 3.1 8B Instruct | `Meta-Llama-3.1-8B-Instruct` | chat-completion | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Meta | Llama 3.2 11B Vision Instruct | `Llama-3.2-11B-Vision-Instruct` | chat-completion | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Meta | Llama 3.2 1B | `Llama-3.2-1B` | text-generation | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Meta | Llama 3.2 1B Instruct | `Llama-3.2-1B-Instruct` | chat-completion | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Meta | Llama 3.2 3B | `Llama-3.2-3B` | text-generation | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Meta | Llama 3.2 3B Instruct | `Llama-3.2-3B-Instruct` | chat-completion | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Meta | Llama 3.2 90B Vision Instruct | `Llama-3.2-90B-Vision-Instruct` | chat-completion | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Meta | Llama 3.3 70B Instruct | `Llama-3.3-70B-Instruct` | chat-completion | Global Standard — all Azure Foundry regions |
| Meta | Llama 4 Maverick 17B-128E Instruct FP8 | `Llama-4-Maverick-17B-128E-Instruct-FP8` | chat-completion | Global Standard — all Azure Foundry regions |
| Meta | Llama 4 Scout 17B-16E Instruct | `Llama-4-Scout-17B-16E-Instruct` | chat-completion | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Meta | Llama Guard 3 11B Vision | `Llama-Guard-3-11B-Vision` | content-safety | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Meta | Llama Guard 3 1B | `Llama-Guard-3-1B` | content-safety | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Microsoft | MAI-DS-R1 | `MAI-DS-R1` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| Microsoft | Model Router | `model-router` | chat-completion | East US 2, Sweden Central |
| Microsoft | Phi-4 | `Phi-4` | chat-completion | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Microsoft | Phi-4 Mini Instruct | `Phi-4-mini-instruct` | chat-completion | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Microsoft | Phi-4 Mini Reasoning | `Phi-4-mini-reasoning` | chat-completion (reasoning) | East US, East US 2, North Central US, South Central US, West US, West US 3 |
| Microsoft | Phi-4 Multimodal Instruct | `Phi-4-multimodal-instruct` | chat-completion | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Microsoft | Phi-4 Reasoning | `Phi-4-reasoning` | chat-completion (reasoning) | East US, East US 2, North Central US, South Central US, West US, West US 3 |
| Mistral AI | Codestral 2501 | `Codestral-2501` | chat-completion | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Mistral AI | Ministral 3B | `Ministral-3B` | chat-completion | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Mistral AI | Mistral Document AI 2505 | `mistral-document-ai-2505` | image-to-text | East US 2, Sweden Central |
| Mistral AI | Mistral Document AI 2512 | `mistral-document-ai-2512` | image-to-text | Global Standard — all Azure Foundry regions |
| Mistral AI | Mistral Large 3 | `Mistral-Large-3` | chat-completion | Global Standard — all Azure Foundry regions |
| Mistral AI | Mistral Medium 3 (25.05) | `Mistral-medium-2505` | chat-completion | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Mistral AI | Mistral Small 25.03 | `Mistral-small-2503` | chat-completion | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| Moonshot AI | Kimi K2 Thinking | `Kimi-K2-Thinking` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| Moonshot AI | Kimi K2.5 | `Kimi-K2.5` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| Nixtla | TimeGEN-1 | `TimeGEN-1` | time-series-forecasting | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| NTT DATA | tsuzumi 7B | `tsuzumi-7b` | chat-completion | East US, East US 2, North Central US, South Central US, Sweden Central, West US, West US 3 |
| OpenAI | GPT-4.1 (2025-04-14) | `gpt-4.1` | chat-completion | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-4.1 Mini (2025-04-14) | `gpt-4.1-mini` | chat-completion | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-4.1 Nano (2025-04-14) | `gpt-4.1-nano` | chat-completion | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-5 (2025-08-07) | `gpt-5` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-5 Chat (2025-08-07) | `gpt-5-chat` | chat-completion | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-5 Codex (2025-09-11) | `gpt-5-codex` | chat-completion | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-5 Mini (2025-08-07) | `gpt-5-mini` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-5 Nano (2025-08-07) | `gpt-5-nano` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-5 Pro (2025-10-06) | `gpt-5-pro` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-5.1 (2025-11-13) | `gpt-5.1` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-5.1 Chat (2025-11-13) | `gpt-5.1-chat` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-5.1 Codex (2025-11-13) | `gpt-5.1-codex` | chat-completion | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-5.1 Codex Max (2025-12-04) | `gpt-5.1-codex-max` | chat-completion | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-5.1 Codex Mini (2025-11-13) | `gpt-5.1-codex-mini` | chat-completion | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-5.2 (2025-12-11) | `gpt-5.2` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-5.2 Chat | `gpt-5.2-chat` | chat-completion | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-5.2 Codex (2026-01-14) | `gpt-5.2-codex` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-5.3 Codex (2026-02-24) | `gpt-5.3-codex` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-5.4 (2026-03-05) | `gpt-5.4` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-5.4 Pro (2026-03-05) | `gpt-5.4-pro` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-OSS 120B (Preview) | `gpt-oss-120b` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| OpenAI | GPT-OSS 20B (Preview) | `gpt-oss-20b` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| Stability AI | Stable Diffusion 3.5 Large | `stable-diffusion-3-5-large` | image-generation | East US, East US 2, North Central US, South Central US, West US, West US 3 |
| Stability AI | Stable Image Core | `stable-image-core` | image-generation | East US, East US 2, North Central US, South Central US, West US, West US 3 |
| Stability AI | Stable Image Ultra | `stable-image-ultra` | image-generation | East US, East US 2, North Central US, South Central US, West US, West US 3 |
| xAI | Grok 3 | `grok-3` | chat-completion | Global Standard — all Azure Foundry regions |
| xAI | Grok 3 Mini | `grok-3-mini` | chat-completion | Global Standard — all Azure Foundry regions |
| xAI | Grok 4 | `grok-4` | chat-completion | Global Standard — all Azure Foundry regions |
| xAI | Grok 4 Fast Non-Reasoning | `grok-4-fast-non-reasoning` | chat-completion | Global Standard — all Azure Foundry regions |
| xAI | Grok 4 Fast Reasoning | `grok-4-fast-reasoning` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| xAI | Grok 4.1 Fast Non-Reasoning | `grok-4.1-fast-non-reasoning` | chat-completion | Global Standard — all Azure Foundry regions |
| xAI | Grok 4.1 Fast Reasoning | `grok-4.1-fast-reasoning` | chat-completion (reasoning) | Global Standard — all Azure Foundry regions |
| xAI | Grok Code Fast 1 | `grok-code-fast-1` | chat-completion | Global Standard — all Azure Foundry regions |

## Regional Availability

Models with *Global Standard* deployment are available across all 30 Azure Foundry regions listed below. Serverless (MaaS) partner models have limited regional coverage as shown in the Models table above.

### Australia East

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### Brazil South

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### Canada Central

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### Canada East

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### Central India

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### Central US

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### East Asia

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### East US

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Command R 08-2024** (`Cohere-command-r-08-2024`) — chat-completion
- **Cohere Command R+ 08-2024** (`Cohere-command-r-plus-08-2024`) — chat-completion
- **Cohere Embed v3 (English)** (`Cohere-embed-v3-english`) — text-embedding
- **Cohere Embed v3 (Multilingual)** (`Cohere-embed-v3-multilingual`) — text-embedding
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v3.5** (`Cohere-rerank-v3.5`) — text-reranking
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.1 405B Instruct** (`Meta-Llama-3.1-405B-Instruct`) — chat-completion
- **Llama 3.1 8B Instruct** (`Meta-Llama-3.1-8B-Instruct`) — chat-completion
- **Llama 3.2 11B Vision Instruct** (`Llama-3.2-11B-Vision-Instruct`) — chat-completion
- **Llama 3.2 1B** (`Llama-3.2-1B`) — text-generation
- **Llama 3.2 1B Instruct** (`Llama-3.2-1B-Instruct`) — chat-completion
- **Llama 3.2 3B** (`Llama-3.2-3B`) — text-generation
- **Llama 3.2 3B Instruct** (`Llama-3.2-3B-Instruct`) — chat-completion
- **Llama 3.2 90B Vision Instruct** (`Llama-3.2-90B-Vision-Instruct`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **Llama 4 Scout 17B-16E Instruct** (`Llama-4-Scout-17B-16E-Instruct`) — chat-completion
- **Llama Guard 3 11B Vision** (`Llama-Guard-3-11B-Vision`) — content-safety
- **Llama Guard 3 1B** (`Llama-Guard-3-1B`) — content-safety
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Phi-4** (`Phi-4`) — chat-completion
- **Phi-4 Mini Instruct** (`Phi-4-mini-instruct`) — chat-completion
- **Phi-4 Mini Reasoning** (`Phi-4-mini-reasoning`) — chat-completion (reasoning)
- **Phi-4 Multimodal Instruct** (`Phi-4-multimodal-instruct`) — chat-completion
- **Phi-4 Reasoning** (`Phi-4-reasoning`) — chat-completion (reasoning)
- **Codestral 2501** (`Codestral-2501`) — chat-completion
- **Ministral 3B** (`Ministral-3B`) — chat-completion
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Mistral Medium 3 (25.05)** (`Mistral-medium-2505`) — chat-completion
- **Mistral Small 25.03** (`Mistral-small-2503`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **TimeGEN-1** (`TimeGEN-1`) — time-series-forecasting
- **tsuzumi 7B** (`tsuzumi-7b`) — chat-completion
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Stable Diffusion 3.5 Large** (`stable-diffusion-3-5-large`) — image-generation
- **Stable Image Core** (`stable-image-core`) — image-generation
- **Stable Image Ultra** (`stable-image-ultra`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### East US 2

- **Claude Haiku 4.5 (Preview)** (`claude-haiku-4-5`) — chat-completion
- **Claude Opus 4.1 (Preview)** (`claude-opus-4-1`) — chat-completion
- **Claude Opus 4.5 (Preview)** (`claude-opus-4-5`) — chat-completion
- **Claude Opus 4.6 (Preview)** (`claude-opus-4-6`) — chat-completion
- **Claude Sonnet 4.5 (Preview)** (`claude-sonnet-4-5`) — chat-completion
- **Claude Sonnet 4.6 (Preview)** (`claude-sonnet-4-6`) — chat-completion
- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Command R 08-2024** (`Cohere-command-r-08-2024`) — chat-completion
- **Cohere Command R+ 08-2024** (`Cohere-command-r-plus-08-2024`) — chat-completion
- **Cohere Embed v3 (English)** (`Cohere-embed-v3-english`) — text-embedding
- **Cohere Embed v3 (Multilingual)** (`Cohere-embed-v3-multilingual`) — text-embedding
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v3.5** (`Cohere-rerank-v3.5`) — text-reranking
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.1 405B Instruct** (`Meta-Llama-3.1-405B-Instruct`) — chat-completion
- **Llama 3.1 8B Instruct** (`Meta-Llama-3.1-8B-Instruct`) — chat-completion
- **Llama 3.2 11B Vision Instruct** (`Llama-3.2-11B-Vision-Instruct`) — chat-completion
- **Llama 3.2 1B** (`Llama-3.2-1B`) — text-generation
- **Llama 3.2 1B Instruct** (`Llama-3.2-1B-Instruct`) — chat-completion
- **Llama 3.2 3B** (`Llama-3.2-3B`) — text-generation
- **Llama 3.2 3B Instruct** (`Llama-3.2-3B-Instruct`) — chat-completion
- **Llama 3.2 90B Vision Instruct** (`Llama-3.2-90B-Vision-Instruct`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **Llama 4 Scout 17B-16E Instruct** (`Llama-4-Scout-17B-16E-Instruct`) — chat-completion
- **Llama Guard 3 11B Vision** (`Llama-Guard-3-11B-Vision`) — content-safety
- **Llama Guard 3 1B** (`Llama-Guard-3-1B`) — content-safety
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Model Router** (`model-router`) — chat-completion
- **Phi-4** (`Phi-4`) — chat-completion
- **Phi-4 Mini Instruct** (`Phi-4-mini-instruct`) — chat-completion
- **Phi-4 Mini Reasoning** (`Phi-4-mini-reasoning`) — chat-completion (reasoning)
- **Phi-4 Multimodal Instruct** (`Phi-4-multimodal-instruct`) — chat-completion
- **Phi-4 Reasoning** (`Phi-4-reasoning`) — chat-completion (reasoning)
- **Codestral 2501** (`Codestral-2501`) — chat-completion
- **Ministral 3B** (`Ministral-3B`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Mistral Medium 3 (25.05)** (`Mistral-medium-2505`) — chat-completion
- **Mistral Small 25.03** (`Mistral-small-2503`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **TimeGEN-1** (`TimeGEN-1`) — time-series-forecasting
- **tsuzumi 7B** (`tsuzumi-7b`) — chat-completion
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Stable Diffusion 3.5 Large** (`stable-diffusion-3-5-large`) — image-generation
- **Stable Image Core** (`stable-image-core`) — image-generation
- **Stable Image Ultra** (`stable-image-ultra`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### France Central

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### Germany West Central

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### Italy North

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### Japan East

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### Korea Central

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### North Central US

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Command R 08-2024** (`Cohere-command-r-08-2024`) — chat-completion
- **Cohere Command R+ 08-2024** (`Cohere-command-r-plus-08-2024`) — chat-completion
- **Cohere Embed v3 (English)** (`Cohere-embed-v3-english`) — text-embedding
- **Cohere Embed v3 (Multilingual)** (`Cohere-embed-v3-multilingual`) — text-embedding
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v3.5** (`Cohere-rerank-v3.5`) — text-reranking
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.1 405B Instruct** (`Meta-Llama-3.1-405B-Instruct`) — chat-completion
- **Llama 3.1 8B Instruct** (`Meta-Llama-3.1-8B-Instruct`) — chat-completion
- **Llama 3.2 11B Vision Instruct** (`Llama-3.2-11B-Vision-Instruct`) — chat-completion
- **Llama 3.2 1B** (`Llama-3.2-1B`) — text-generation
- **Llama 3.2 1B Instruct** (`Llama-3.2-1B-Instruct`) — chat-completion
- **Llama 3.2 3B** (`Llama-3.2-3B`) — text-generation
- **Llama 3.2 3B Instruct** (`Llama-3.2-3B-Instruct`) — chat-completion
- **Llama 3.2 90B Vision Instruct** (`Llama-3.2-90B-Vision-Instruct`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **Llama 4 Scout 17B-16E Instruct** (`Llama-4-Scout-17B-16E-Instruct`) — chat-completion
- **Llama Guard 3 11B Vision** (`Llama-Guard-3-11B-Vision`) — content-safety
- **Llama Guard 3 1B** (`Llama-Guard-3-1B`) — content-safety
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Phi-4** (`Phi-4`) — chat-completion
- **Phi-4 Mini Instruct** (`Phi-4-mini-instruct`) — chat-completion
- **Phi-4 Mini Reasoning** (`Phi-4-mini-reasoning`) — chat-completion (reasoning)
- **Phi-4 Multimodal Instruct** (`Phi-4-multimodal-instruct`) — chat-completion
- **Phi-4 Reasoning** (`Phi-4-reasoning`) — chat-completion (reasoning)
- **Codestral 2501** (`Codestral-2501`) — chat-completion
- **Ministral 3B** (`Ministral-3B`) — chat-completion
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Mistral Medium 3 (25.05)** (`Mistral-medium-2505`) — chat-completion
- **Mistral Small 25.03** (`Mistral-small-2503`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **TimeGEN-1** (`TimeGEN-1`) — time-series-forecasting
- **tsuzumi 7B** (`tsuzumi-7b`) — chat-completion
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Stable Diffusion 3.5 Large** (`stable-diffusion-3-5-large`) — image-generation
- **Stable Image Core** (`stable-image-core`) — image-generation
- **Stable Image Ultra** (`stable-image-ultra`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### North Europe

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### Norway East

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### Qatar Central

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### South Africa North

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### South Central US

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Command R 08-2024** (`Cohere-command-r-08-2024`) — chat-completion
- **Cohere Command R+ 08-2024** (`Cohere-command-r-plus-08-2024`) — chat-completion
- **Cohere Embed v3 (English)** (`Cohere-embed-v3-english`) — text-embedding
- **Cohere Embed v3 (Multilingual)** (`Cohere-embed-v3-multilingual`) — text-embedding
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v3.5** (`Cohere-rerank-v3.5`) — text-reranking
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.1 405B Instruct** (`Meta-Llama-3.1-405B-Instruct`) — chat-completion
- **Llama 3.1 8B Instruct** (`Meta-Llama-3.1-8B-Instruct`) — chat-completion
- **Llama 3.2 11B Vision Instruct** (`Llama-3.2-11B-Vision-Instruct`) — chat-completion
- **Llama 3.2 1B** (`Llama-3.2-1B`) — text-generation
- **Llama 3.2 1B Instruct** (`Llama-3.2-1B-Instruct`) — chat-completion
- **Llama 3.2 3B** (`Llama-3.2-3B`) — text-generation
- **Llama 3.2 3B Instruct** (`Llama-3.2-3B-Instruct`) — chat-completion
- **Llama 3.2 90B Vision Instruct** (`Llama-3.2-90B-Vision-Instruct`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **Llama 4 Scout 17B-16E Instruct** (`Llama-4-Scout-17B-16E-Instruct`) — chat-completion
- **Llama Guard 3 11B Vision** (`Llama-Guard-3-11B-Vision`) — content-safety
- **Llama Guard 3 1B** (`Llama-Guard-3-1B`) — content-safety
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Phi-4** (`Phi-4`) — chat-completion
- **Phi-4 Mini Instruct** (`Phi-4-mini-instruct`) — chat-completion
- **Phi-4 Mini Reasoning** (`Phi-4-mini-reasoning`) — chat-completion (reasoning)
- **Phi-4 Multimodal Instruct** (`Phi-4-multimodal-instruct`) — chat-completion
- **Phi-4 Reasoning** (`Phi-4-reasoning`) — chat-completion (reasoning)
- **Codestral 2501** (`Codestral-2501`) — chat-completion
- **Ministral 3B** (`Ministral-3B`) — chat-completion
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Mistral Medium 3 (25.05)** (`Mistral-medium-2505`) — chat-completion
- **Mistral Small 25.03** (`Mistral-small-2503`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **TimeGEN-1** (`TimeGEN-1`) — time-series-forecasting
- **tsuzumi 7B** (`tsuzumi-7b`) — chat-completion
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Stable Diffusion 3.5 Large** (`stable-diffusion-3-5-large`) — image-generation
- **Stable Image Core** (`stable-image-core`) — image-generation
- **Stable Image Ultra** (`stable-image-ultra`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### South India

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### Southeast Asia

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### Spain Central

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### Sweden Central

- **Claude Haiku 4.5 (Preview)** (`claude-haiku-4-5`) — chat-completion
- **Claude Opus 4.1 (Preview)** (`claude-opus-4-1`) — chat-completion
- **Claude Opus 4.5 (Preview)** (`claude-opus-4-5`) — chat-completion
- **Claude Opus 4.6 (Preview)** (`claude-opus-4-6`) — chat-completion
- **Claude Sonnet 4.5 (Preview)** (`claude-sonnet-4-5`) — chat-completion
- **Claude Sonnet 4.6 (Preview)** (`claude-sonnet-4-6`) — chat-completion
- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Command R 08-2024** (`Cohere-command-r-08-2024`) — chat-completion
- **Cohere Command R+ 08-2024** (`Cohere-command-r-plus-08-2024`) — chat-completion
- **Cohere Embed v3 (English)** (`Cohere-embed-v3-english`) — text-embedding
- **Cohere Embed v3 (Multilingual)** (`Cohere-embed-v3-multilingual`) — text-embedding
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v3.5** (`Cohere-rerank-v3.5`) — text-reranking
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.1 8B Instruct** (`Meta-Llama-3.1-8B-Instruct`) — chat-completion
- **Llama 3.2 11B Vision Instruct** (`Llama-3.2-11B-Vision-Instruct`) — chat-completion
- **Llama 3.2 1B** (`Llama-3.2-1B`) — text-generation
- **Llama 3.2 1B Instruct** (`Llama-3.2-1B-Instruct`) — chat-completion
- **Llama 3.2 3B** (`Llama-3.2-3B`) — text-generation
- **Llama 3.2 3B Instruct** (`Llama-3.2-3B-Instruct`) — chat-completion
- **Llama 3.2 90B Vision Instruct** (`Llama-3.2-90B-Vision-Instruct`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **Llama 4 Scout 17B-16E Instruct** (`Llama-4-Scout-17B-16E-Instruct`) — chat-completion
- **Llama Guard 3 11B Vision** (`Llama-Guard-3-11B-Vision`) — content-safety
- **Llama Guard 3 1B** (`Llama-Guard-3-1B`) — content-safety
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Model Router** (`model-router`) — chat-completion
- **Phi-4** (`Phi-4`) — chat-completion
- **Phi-4 Mini Instruct** (`Phi-4-mini-instruct`) — chat-completion
- **Phi-4 Multimodal Instruct** (`Phi-4-multimodal-instruct`) — chat-completion
- **Codestral 2501** (`Codestral-2501`) — chat-completion
- **Ministral 3B** (`Ministral-3B`) — chat-completion
- **Mistral Document AI 2505** (`mistral-document-ai-2505`) — image-to-text
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Mistral Medium 3 (25.05)** (`Mistral-medium-2505`) — chat-completion
- **Mistral Small 25.03** (`Mistral-small-2503`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **TimeGEN-1** (`TimeGEN-1`) — time-series-forecasting
- **tsuzumi 7B** (`tsuzumi-7b`) — chat-completion
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### Switzerland North

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### UAE North

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### UK South

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### West Europe

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### West US

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Command R 08-2024** (`Cohere-command-r-08-2024`) — chat-completion
- **Cohere Command R+ 08-2024** (`Cohere-command-r-plus-08-2024`) — chat-completion
- **Cohere Embed v3 (English)** (`Cohere-embed-v3-english`) — text-embedding
- **Cohere Embed v3 (Multilingual)** (`Cohere-embed-v3-multilingual`) — text-embedding
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v3.5** (`Cohere-rerank-v3.5`) — text-reranking
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.1 405B Instruct** (`Meta-Llama-3.1-405B-Instruct`) — chat-completion
- **Llama 3.1 8B Instruct** (`Meta-Llama-3.1-8B-Instruct`) — chat-completion
- **Llama 3.2 11B Vision Instruct** (`Llama-3.2-11B-Vision-Instruct`) — chat-completion
- **Llama 3.2 1B** (`Llama-3.2-1B`) — text-generation
- **Llama 3.2 1B Instruct** (`Llama-3.2-1B-Instruct`) — chat-completion
- **Llama 3.2 3B** (`Llama-3.2-3B`) — text-generation
- **Llama 3.2 3B Instruct** (`Llama-3.2-3B-Instruct`) — chat-completion
- **Llama 3.2 90B Vision Instruct** (`Llama-3.2-90B-Vision-Instruct`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **Llama 4 Scout 17B-16E Instruct** (`Llama-4-Scout-17B-16E-Instruct`) — chat-completion
- **Llama Guard 3 11B Vision** (`Llama-Guard-3-11B-Vision`) — content-safety
- **Llama Guard 3 1B** (`Llama-Guard-3-1B`) — content-safety
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Phi-4** (`Phi-4`) — chat-completion
- **Phi-4 Mini Instruct** (`Phi-4-mini-instruct`) — chat-completion
- **Phi-4 Mini Reasoning** (`Phi-4-mini-reasoning`) — chat-completion (reasoning)
- **Phi-4 Multimodal Instruct** (`Phi-4-multimodal-instruct`) — chat-completion
- **Phi-4 Reasoning** (`Phi-4-reasoning`) — chat-completion (reasoning)
- **Codestral 2501** (`Codestral-2501`) — chat-completion
- **Ministral 3B** (`Ministral-3B`) — chat-completion
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Mistral Medium 3 (25.05)** (`Mistral-medium-2505`) — chat-completion
- **Mistral Small 25.03** (`Mistral-small-2503`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **TimeGEN-1** (`TimeGEN-1`) — time-series-forecasting
- **tsuzumi 7B** (`tsuzumi-7b`) — chat-completion
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Stable Diffusion 3.5 Large** (`stable-diffusion-3-5-large`) — image-generation
- **Stable Image Core** (`stable-image-core`) — image-generation
- **Stable Image Ultra** (`stable-image-ultra`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion

### West US 3

- **FLUX-1.1 [pro]** (`FLUX-1.1-pro`) — image-generation
- **FLUX.1 Kontext [pro]** (`FLUX.1-Kontext-pro`) — image-generation
- **FLUX.2 [flex]** (`FLUX.2-flex`) — image-generation
- **FLUX.2 [pro]** (`FLUX.2-pro`) — image-generation
- **Cohere Command A** (`Cohere-command-a`) — chat-completion
- **Cohere Command R 08-2024** (`Cohere-command-r-08-2024`) — chat-completion
- **Cohere Command R+ 08-2024** (`Cohere-command-r-plus-08-2024`) — chat-completion
- **Cohere Embed v3 (English)** (`Cohere-embed-v3-english`) — text-embedding
- **Cohere Embed v3 (Multilingual)** (`Cohere-embed-v3-multilingual`) — text-embedding
- **Cohere Embed v4.0** (`embed-v-4-0`) — text-embedding
- **Cohere Rerank v3.5** (`Cohere-rerank-v3.5`) — text-reranking
- **Cohere Rerank v4.0 (fast)** (`Cohere-rerank-v4.0-fast`) — text-reranking
- **Cohere Rerank v4.0 (pro)** (`Cohere-rerank-v4.0-pro`) — text-reranking
- **DeepSeek R1** (`DeepSeek-R1`) — chat-completion (reasoning)
- **DeepSeek R1 0528** (`DeepSeek-R1-0528`) — chat-completion (reasoning)
- **DeepSeek V3-0324** (`DeepSeek-V3-0324`) — chat-completion
- **DeepSeek V3.1** (`DeepSeek-V3.1`) — chat-completion
- **DeepSeek V3.2** (`DeepSeek-V3.2`) — chat-completion (reasoning)
- **DeepSeek V3.2 Speciale** (`DeepSeek-V3.2-Speciale`) — chat-completion (reasoning)
- **Llama 3.1 405B Instruct** (`Meta-Llama-3.1-405B-Instruct`) — chat-completion
- **Llama 3.1 8B Instruct** (`Meta-Llama-3.1-8B-Instruct`) — chat-completion
- **Llama 3.2 11B Vision Instruct** (`Llama-3.2-11B-Vision-Instruct`) — chat-completion
- **Llama 3.2 1B** (`Llama-3.2-1B`) — text-generation
- **Llama 3.2 1B Instruct** (`Llama-3.2-1B-Instruct`) — chat-completion
- **Llama 3.2 3B** (`Llama-3.2-3B`) — text-generation
- **Llama 3.2 3B Instruct** (`Llama-3.2-3B-Instruct`) — chat-completion
- **Llama 3.2 90B Vision Instruct** (`Llama-3.2-90B-Vision-Instruct`) — chat-completion
- **Llama 3.3 70B Instruct** (`Llama-3.3-70B-Instruct`) — chat-completion
- **Llama 4 Maverick 17B-128E Instruct FP8** (`Llama-4-Maverick-17B-128E-Instruct-FP8`) — chat-completion
- **Llama 4 Scout 17B-16E Instruct** (`Llama-4-Scout-17B-16E-Instruct`) — chat-completion
- **Llama Guard 3 11B Vision** (`Llama-Guard-3-11B-Vision`) — content-safety
- **Llama Guard 3 1B** (`Llama-Guard-3-1B`) — content-safety
- **MAI-DS-R1** (`MAI-DS-R1`) — chat-completion (reasoning)
- **Phi-4** (`Phi-4`) — chat-completion
- **Phi-4 Mini Instruct** (`Phi-4-mini-instruct`) — chat-completion
- **Phi-4 Mini Reasoning** (`Phi-4-mini-reasoning`) — chat-completion (reasoning)
- **Phi-4 Multimodal Instruct** (`Phi-4-multimodal-instruct`) — chat-completion
- **Phi-4 Reasoning** (`Phi-4-reasoning`) — chat-completion (reasoning)
- **Codestral 2501** (`Codestral-2501`) — chat-completion
- **Ministral 3B** (`Ministral-3B`) — chat-completion
- **Mistral Document AI 2512** (`mistral-document-ai-2512`) — image-to-text
- **Mistral Large 3** (`Mistral-Large-3`) — chat-completion
- **Mistral Medium 3 (25.05)** (`Mistral-medium-2505`) — chat-completion
- **Mistral Small 25.03** (`Mistral-small-2503`) — chat-completion
- **Kimi K2 Thinking** (`Kimi-K2-Thinking`) — chat-completion (reasoning)
- **Kimi K2.5** (`Kimi-K2.5`) — chat-completion (reasoning)
- **TimeGEN-1** (`TimeGEN-1`) — time-series-forecasting
- **tsuzumi 7B** (`tsuzumi-7b`) — chat-completion
- **GPT-4.1 (2025-04-14)** (`gpt-4.1`) — chat-completion
- **GPT-4.1 Mini (2025-04-14)** (`gpt-4.1-mini`) — chat-completion
- **GPT-4.1 Nano (2025-04-14)** (`gpt-4.1-nano`) — chat-completion
- **GPT-5 (2025-08-07)** (`gpt-5`) — chat-completion (reasoning)
- **GPT-5 Chat (2025-08-07)** (`gpt-5-chat`) — chat-completion
- **GPT-5 Codex (2025-09-11)** (`gpt-5-codex`) — chat-completion
- **GPT-5 Mini (2025-08-07)** (`gpt-5-mini`) — chat-completion (reasoning)
- **GPT-5 Nano (2025-08-07)** (`gpt-5-nano`) — chat-completion (reasoning)
- **GPT-5 Pro (2025-10-06)** (`gpt-5-pro`) — chat-completion (reasoning)
- **GPT-5.1 (2025-11-13)** (`gpt-5.1`) — chat-completion (reasoning)
- **GPT-5.1 Chat (2025-11-13)** (`gpt-5.1-chat`) — chat-completion (reasoning)
- **GPT-5.1 Codex (2025-11-13)** (`gpt-5.1-codex`) — chat-completion
- **GPT-5.1 Codex Max (2025-12-04)** (`gpt-5.1-codex-max`) — chat-completion
- **GPT-5.1 Codex Mini (2025-11-13)** (`gpt-5.1-codex-mini`) — chat-completion
- **GPT-5.2 (2025-12-11)** (`gpt-5.2`) — chat-completion (reasoning)
- **GPT-5.2 Chat** (`gpt-5.2-chat`) — chat-completion
- **GPT-5.2 Codex (2026-01-14)** (`gpt-5.2-codex`) — chat-completion (reasoning)
- **GPT-5.3 Codex (2026-02-24)** (`gpt-5.3-codex`) — chat-completion (reasoning)
- **GPT-5.4 (2026-03-05)** (`gpt-5.4`) — chat-completion (reasoning)
- **GPT-5.4 Pro (2026-03-05)** (`gpt-5.4-pro`) — chat-completion (reasoning)
- **GPT-OSS 120B (Preview)** (`gpt-oss-120b`) — chat-completion (reasoning)
- **GPT-OSS 20B (Preview)** (`gpt-oss-20b`) — chat-completion (reasoning)
- **Stable Diffusion 3.5 Large** (`stable-diffusion-3-5-large`) — image-generation
- **Stable Image Core** (`stable-image-core`) — image-generation
- **Stable Image Ultra** (`stable-image-ultra`) — image-generation
- **Grok 3** (`grok-3`) — chat-completion
- **Grok 3 Mini** (`grok-3-mini`) — chat-completion
- **Grok 4** (`grok-4`) — chat-completion
- **Grok 4 Fast Non-Reasoning** (`grok-4-fast-non-reasoning`) — chat-completion
- **Grok 4 Fast Reasoning** (`grok-4-fast-reasoning`) — chat-completion (reasoning)
- **Grok 4.1 Fast Non-Reasoning** (`grok-4.1-fast-non-reasoning`) — chat-completion
- **Grok 4.1 Fast Reasoning** (`grok-4.1-fast-reasoning`) — chat-completion (reasoning)
- **Grok Code Fast 1** (`grok-code-fast-1`) — chat-completion
