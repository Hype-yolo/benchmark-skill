# Benchmark Skill

一个用于文章对标改写的 Agent Skill。

它包含两种模式：

- **诊断模式**：对比原文稿与仿写稿，按照 16 个维度检查仿写是否贴合。
- **产出模式**：先分析原文并询问仿写要求，用户确认后再生成最终文稿。

## 使用方式

### 诊断模式

```text
/benchmark 诊断模式

原文稿：
……

仿写稿：
……
```

### 产出模式

```text
/benchmark 产出模式

原文稿：
……
```

## 安装

克隆仓库：

```bash
git clone https://github.com/你的用户名/benchmark-skill.git
```

复制到 Agent skills 目录：

```bash
mkdir -p ~/.agents/skills/benchmark
cp benchmark-skill/SKILL.md ~/.agents/skills/benchmark/SKILL.md
```

## 16 个检查维度

内容、结构、语气、风格、目标受众、核心信息、关键数据、用词偏好、情感与逻辑侧重、人物与叙述视角、修辞手法、词汇难度、句式节奏、作者立场、语体类别、适用场景。

## 许可证

本项目采用 [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) 许可证。

- 个人使用、学习、研究、非商业项目：不需要署名，不需要申请
- 公开发布衍生作品（文章、工具、课程等）：请注明来源
- 商业用途：需要单独授权，请联系作者
