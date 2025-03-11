- 🇨🇳 [README.md](sandbox:/mnt/data/README.md) (Original Chinese version, renamed for clarity)
- 🇬🇧 [README_EN.md](sandbox:/mnt/data/README_EN.md) (English version)

---
<h2 align="center">ChatGPT Adapter</h2>
<div>
This service integrates multiple AI reverse chat interfaces, including OpenAI API, Coze, DeepSeek, Cursor, Windsurf, Blackbox, You, Grok, and Bing Drawing, adapting them to OpenAI API standard server interfaces.
</div>

![image](https://github.com/user-attachments/assets/93be2041-8ebc-466a-9fd4-939f4f9082f2)

For detailed configuration, please refer to » [Documentation](https://bincooo.github.io/chatgpt-adapter) »

Supports high-speed streaming output and multi-turn conversations and is fully compatible with the ChatGPT interface.

By using this project, you can access the following services via the v1 interface:

- [ByteDance Coze International Version](https://www.coze.com)
- [New Bing Copilot](https://copilot.microsoft.com)
- [Cursor Editor](https://www.cursor.com)
- [Windsurf Editor](https://codeium.com)
- [Qodo](https://www.qodo.ai)
- [DeepSeek](https://www.deepseek.com)
- [Chatbot Arena LMSYS](https://lmarena.ai)
- [You](https://you.com)
- [Grok](https://grok.com)
- [Hugging Face Drawing](https://huggingface.io)

![image](https://github.com/user-attachments/assets/1edf6efe-028c-4ec8-a7c4-a3c4fc2753d8)

### Prerequisites

Install the intermediate compilation tool:
```shell
go install ./cmd/iocgo

# or 

make install
```
### Usage

Attach commands as follows:
```shell
# ----- go build ------ #
# Original command #
go build ./main.go

# Modified command #
go build -toolexec iocgo ./main.go


# ----- go run ------ #
# Original command #
go run ./main.go

# Modified command #
go run -toolexec iocgo ./main.go
```

Other `go` commands follow the same pattern.

### Running This Project (Linux / macOS / Windows)

```shell
make install

make build

./bin/[os]/server[.exe] -h
```

### Start with Docker

1. Run the following Docker command:
```shell
docker run -p 8080:8080 -v ./config.yaml:/app/config.yaml ghcr.io/bincooo/chatgpt-adapter:latest
```

2. Hugging Face: [Duplicate this Space](https://huggingface.co/spaces/wIK5Ez2o/DEMO/tree/main?duplicate=true)

### Systemctl Auto-Start Configuration
```adapter.service
[Unit]
Description=ChatGPT adapter
After=network.target

[Service]
Type=simple
WorkingDirectory=/your_work_dir
ExecStart=/your_app --port 7860
Restart=on-failure

[Install]
WantedBy=multi-user.target
```

### Other Information

Many users seem interested in reverse engineering web crawlers, so here are some personal insights:

- Reverse Engineering Crawlers: [JA3 Fingerprint](https://github.com/bincooo/chatgpt-adapter/discussions/106)
- Reverse Engineering Crawlers: [New Bing Copilot](https://github.com/bincooo/chatgpt-adapter/discussions/105)
- Reverse Engineering Crawlers: [Cursor & Windsurf (protobuf + gzip)](https://github.com/bincooo/chatgpt-adapter/discussions/107)

## Disclaimer

> The program code and any related unlocking or decryption scripts published in this repository are for testing and research purposes only. They must not be used for commercial purposes and their legality, accuracy, completeness, and effectiveness cannot be guaranteed. Please assess the risks before use.
>
> All resource files in this project are strictly prohibited from being reposted or published by public accounts or self-media in any form.
>
> The author is not responsible for any script/code/resource access issues, including but not limited to any losses or damages caused by script errors.
>
> Users who indirectly use these scripts, such as setting up VPS or spreading them in ways that violate laws or regulations, are fully responsible for any resulting privacy leaks or other consequences.
>
> Do not use any content from this repository for commercial or illegal purposes; otherwise, you bear all responsibility.
>
> If any organization or individual believes that this project's scripts, code, or resources may infringe on their rights, they should notify us with proof of identity and ownership. We will remove relevant scripts after verification.
>
> Anyone who views or directly or indirectly uses this project must carefully read this disclaimer. The author reserves the right to modify or supplement this disclaimer at any time. Once you use or copy any related script or project rules, you are deemed to have accepted this disclaimer.
>
> You must completely delete all content within 24 hours of downloading.
>
> By using or copying any script/code from this repository, you are deemed to have accepted this disclaimer. Please read carefully!