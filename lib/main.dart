"""
AZ AI 2.0 - Master Prompt
الملف ده فيه الماستر برومبت كامل كمتغير نصي اسمه MASTER_PROMPT.
"""

MASTER_PROMPT = r"""MASTER PROMPT — AZ AI 2.0

Build a Complete, Production-Quality AI Assistant Application

Act as a senior software architect, Android/mobile engineer, AI integration specialist, UI/UX designer, security engineer, and QA tester.

Your task is to build AZ AI 2.0, a polished, multilingual AI assistant application with a premium black-and-gold identity.

Do not merely describe the application or generate a mockup. Inspect the available project, implement the actual application, connect its features wherever technically possible, test the implementation, and fix errors before declaring completion.

If an existing AZ AI project is available, inspect and improve it rather than unnecessarily replacing working code or deleting existing functionality.

---

1. Core Mission and Non-Negotiable Rules

AZ AI is intended to be a fast, capable, friendly alternative AI assistant.

The application's core goals are:

- Maximum practical quality.
- Fast and responsive interactions.
- Strong multilingual support.
- Intelligent model selection.
- Real web search with verifiable sources.
- Image, document, and video understanding.
- Voice input and voice output.
- A clean, premium mobile-first interface.
- Zero mandatory monetary cost for both the developer and every user.

Strict financial requirements:

1. Do not integrate paid APIs, paid models, paid search services, paid hosting, paid databases, or paid storage as mandatory dependencies.
2. Do not enable billing automatically.
3. Do not silently switch to a paid model when a free quota is exhausted.
4. Do not add subscriptions, advertisements, in-app purchases, or premium paywalls.
5. Prefer genuinely free services and on-device capabilities where practical.
6. Verify the current availability, usage limits, commercial-use terms, and technical requirements of every external service before integrating it.
7. If a free service becomes unavailable or reaches its quota, explain the limitation and offer a legitimate fallback.
8. Never bypass provider rate limits, create fake accounts to obtain quotas, or violate provider terms.
9. Never claim that usage is unlimited if the underlying services impose limits.

The zero-cost requirement is a hard architectural constraint. If a requested capability cannot be delivered reliably within that constraint, implement the best legitimate free alternative and clearly explain the limitation.

Do not invent successful integrations, API access, test results, or functionality that does not actually exist.

2. Brand Identity and Visual Design

Application name: AZ AI

Brand symbol: A ⚡ Z

The lightning bolt between A and Z is meaningful. It represents speed, energy, connection, and intelligent coordination between different AI capabilities.

Visual direction:

- Primary background: deep black or near-black.
- Accent color: refined metallic gold.
- Text: high-contrast white and muted gray.
- Subtle gold highlights and restrained gradients.
- Clean typography.
- Smooth, purposeful animations.
- Rounded components used consistently.
- Elegant loading indicators and response streaming.
- Premium spacing and balanced visual hierarchy.

The design must look mature, professional, modern, and trustworthy. Avoid excessive neon, clutter, childish graphics, unnecessary glowing borders, and generic AI-dashboard aesthetics.

Create a distinctive AZ logo using the letters A and Z with a lightning bolt between them. Keep the logo legible at small sizes and on the application icon.

Provide light mode only if it can be implemented consistently; dark mode is the primary experience.

3. Mobile-First Application Experience

Build a responsive interface designed primarily for Android phones.

The application should include:

Main chat screen

- A clean welcome screen.
- A prominent message composer.
- Send and stop-generation controls.
- Voice-input button.
- Attachment button.
- Image and video upload support.
- A clear indicator when a response is being generated.
- Streaming responses when supported.
- Markdown rendering.
- Readable code blocks with copy functionality.
- Copy, retry, and regenerate actions.
- Text selection and sharing where supported.
- Helpful error messages with retry options.

Navigation

Include:

- New chat.
- Conversation history.
- Search conversations.
- Rename conversations.
- Delete conversations with confirmation.
- Pin important conversations.
- Settings.
- Model and service status.
- File and media analysis access.

Keep navigation intuitive and avoid unnecessary screens.

Home screen

Create a restrained, premium welcome experience with useful quick actions such as:

- Ask anything.
- Explain a topic.
- Write or improve text.
- Analyze a document.
- Analyze an image.
- Analyze a video.
- Search the web.
- Help with code.

Quick actions must open real workflows rather than decorative placeholder screens.

4. Intelligent Multi-Model Architecture

Build a modular AI orchestration system called the AZ Smart Router.

Do not assume one model is best at every task. The system should select the most suitable available model based on the request, supported capabilities, latency, current quota, and reliability.

Possible task categories:

- General conversation.
- Complex reasoning.
- Coding and debugging.
- Writing and rewriting.
- Translation.
- Summarization.
- Document analysis.
- Image understanding.
- Video understanding.
- Voice and transcription.
- Web research.

Router requirements

1. Maintain a configurable registry of supported models and their capabilities.
2. Verify model identifiers against current official documentation.
3. Never invent model names or assume that a preview model remains available.
4. Prefer a fast, capable model for ordinary requests.
5. Use a stronger model only when the task genuinely benefits from it.
6. Use additional review models selectively rather than sending every request to multiple models.
7. Support legitimate fallback models when the primary model is unavailable or rate-limited.
8. Do not automatically retry indefinitely.
9. Avoid unnecessary duplicate requests.
10. Keep model-specific integration code separate from the chat interface.
11. Allow model configurations to be updated without redesigning the entire application.
12. If a fallback cannot perform the required task, explain what is unavailable.

The user should not have to choose a model manually for ordinary conversations. Automatic routing is the default.

Do not claim that multiple models have been combined into one model. They are separate services coordinated by the router.

Cost protection

Create a strict free-only policy:

- Allow only approved free-tier endpoints or genuinely free local capabilities.
- Never invoke a paid endpoint as a fallback.
- Never activate billing automatically.
- Track locally available quota and recent errors where supported.
- Stop requests when the free service is unavailable rather than generating unexpected charges.
- Display an understandable message when a service reaches its limit.

Do not hardcode outdated quota values. Use current documented limits where available and explain when actual quota information cannot be retrieved.

5. Conversation Quality and Personality

AZ AI should communicate naturally and intelligently.

It must:

- Adapt its tone to the context.
- Be friendly and conversational for everyday questions.
- Be professional for technical, academic, and serious tasks.
- Use Egyptian Arabic naturally when the user speaks Egyptian Arabic.
- Support Modern Standard Arabic and other languages.
- Answer in the user's language by default.
- Explain difficult subjects in understandable steps.
- Provide detailed answers when useful and concise answers when appropriate.
- Admit uncertainty instead of inventing facts.
- Distinguish verified information from estimates and opinions.
- Ask a clarifying question when a missing detail materially affects the answer.

It should not claim to be ChatGPT, Gemini, or another product. Its identity is AZ AI.

6. Conversation History and Persistence

Implement persistent conversation management.

Required features:

- Create new conversations.
- Save messages and conversation titles.
- Automatically generate a useful conversation title when possible.
- Rename conversations.
- Delete conversations.
- Search by conversation title and message content.
- Pin and unpin conversations.
- Preserve conversation context when continuing an existing chat.
- Support starting a fresh conversation without carrying unrelated history into it.

Prefer local-first persistence when this helps maintain zero cost and avoids unnecessary infrastructure.

Use a reliable local database or appropriate persistent storage for the selected technology. Do not store the entire history only in temporary application memory.

Handle application restarts and interrupted requests gracefully.

If account synchronization across devices is unavailable without additional infrastructure, state that limitation rather than pretending that local storage synchronizes automatically.

7. Real Web Search and Research

Web search is an essential capability.

Implement actual retrieval of web information through a currently supported, legitimate, free-eligible search integration.

The system must not simply generate an answer from its training knowledge and label it as a web search.

Search workflow

1. Determine whether the question needs current or externally verifiable information.
2. Retrieve relevant results using a real search mechanism.
3. Inspect the retrieved sources.
4. Extract the information relevant to the question.
5. Cross-check important claims against additional independent sources when practical.
6. Produce a clear answer based on the retrieved evidence.
7. Display clickable source links alongside the claims they support.
8. Identify dates and distinguish publication dates from event dates.
9. Acknowledge conflicting information or missing evidence.
10. Never fabricate citations, URLs, search results, or quotations.

For current information, prefer authoritative and recent sources.

For technical questions, prioritize official documentation. For scientific claims, prefer reliable research and institutional sources. For news, identify the original reporting source and publication date.

Zero-cost search policy

Verify the current pricing and free quota of any proposed search integration.

If the preferred integrated search service requires payment or its free quota is exhausted, do not call its paid endpoint.

Instead, use a genuinely free alternative if one is available and permitted. If no reliable free search integration is available, provide a clearly labeled option to open a public search engine in the device browser. Do not misrepresent that fallback as automatic in-app research.

8. Image Understanding

Image generation is intentionally excluded from AZ AI 2.0 for now.

Image understanding must remain available.

Allow users to:

- Upload images from device storage.
- Select supported images from the gallery.
- Take a picture when the platform supports it.
- Ask questions about an image.
- Describe visible objects and scenes.
- Extract and explain readable text when supported.
- Analyze diagrams, screenshots, and charts.
- Compare multiple uploaded images when the chosen model supports it.
- Ask follow-up questions about the same image.

Preserve the image attachment and its relationship to the corresponding conversation.

Validate file type and size. Provide understandable errors for unsupported or oversized files.

Do not pretend to have inspected an image when it was not successfully transmitted to the model.

9. Video Analysis — Required Feature

Video analysis is a core requirement, not an optional future feature.

Users should be able to select a video from their device and ask questions about its content.

Supported workflows should include, when the selected model permits them:

- Summarizing the video.
- Describing visible scenes and events.
- Identifying important moments.
- Explaining what happens in sequence.
- Answering questions about the video.
- Summarizing spoken dialogue when audio processing is supported.
- Extracting or summarizing available on-screen text.
- Providing timestamps for important moments when the model can support them.
- Producing a structured scene-by-scene summary.
- Analyzing short clips efficiently.

Video processing requirements

- Verify supported formats, file sizes, duration limits, and processing methods.
- Use the model provider's documented video-input workflow.
- Handle asynchronous file processing and processing failures correctly.
- Show upload and analysis progress.
- Allow users to cancel an upload or analysis when supported.
- Avoid unnecessarily uploading the same video repeatedly.
- Do not upload private videos without an explicit user action.
- Clearly distinguish visual analysis from audio transcription.
- Never invent dialogue, events, or timestamps that were not verified.

Set conservative mobile-friendly limits initially, such as a configurable 100 MB upload limit and a short-clip preference. Allow limits to be adjusted only when the actual provider, device, and free-tier capabilities support them.

If long-video analysis is unavailable for free, explain the limitation and offer a legitimate shorter-clip workflow. Do not silently use paid processing.

10. Document and File Analysis

Allow users to upload supported files for analysis.

Prioritize common formats:

- PDF.
- TXT.
- Markdown.
- DOCX when supported.
- CSV.
- XLSX when supported.
- JSON.
- Source-code files.
- Images.
- Supported video formats.

Provide useful workflows:

- Summarize a document.
- Answer questions about its contents.
- Extract key points.
- Explain difficult sections.
- Compare supported documents.
- Analyze tables and structured data.
- Explain code and identify possible errors.
- Generate summaries with references to pages or sections when the source supports them.

Use a sensible configurable upload limit suitable for mobile devices. Validate actual file types, avoid trusting file extensions alone, and reject corrupted or unsupported files with a clear explanation.

For large files, use supported chunking, extraction, or documented file-processing methods when possible.

Never claim to have analyzed the full document if only a portion was processed. Indicate when an answer is based on a partial extraction.

Protect user privacy and do not transmit files to third parties without an explicit user action and an appropriate explanation.

11. Voice Input and Voice Output

Voice support is important.

Voice input

- Provide a microphone control.
- Request microphone permission only when needed.
- Support speech recognition in the languages available on the device or through an approved free service.
- Convert recognized speech into editable text before sending when appropriate.
- Allow users to cancel recording.
- Handle denied permissions and unsupported languages gracefully.

Voice output

- Provide a read-aloud option for AI responses.
- Include play, pause, and stop controls where supported.
- Allow speech playback to be stopped when a new response starts.
- Prefer suitable built-in device text-to-speech capabilities when available to avoid mandatory paid voice APIs.
- Handle language and voice availability gracefully.

Do not require a paid speech service. Explain when a particular device lacks support for a requested language or voice.

12. Additional Assistant Capabilities

Implement the following as functional chat workflows:

- General question answering.
- Education and concept explanation.
- Writing, rewriting, proofreading, and brainstorming.
- Programming help and debugging.
- Translation.
- Summarization.
- Mathematical calculations.
- Data analysis.
- Table interpretation.
- File and media analysis.
- Structured outputs where useful.
- Context-aware follow-up questions.

Use a calculator or deterministic computation when appropriate rather than relying entirely on language-model arithmetic.

For coding assistance, render code blocks properly and include copy functionality. Do not execute arbitrary code from untrusted sources on the user's device without appropriate safeguards.

Do not create fake buttons for capabilities that have not been implemented.

13. Accounts and Authentication

Support Google Sign-In if it can be implemented correctly with the available project configuration.

Do not invent OAuth credentials, redirect URIs, client IDs, or successful authentication states.

Do not require Firebase merely to create the appearance of a login system.

If authentication requires configuration, identify the exact configuration needed. Do not show a successful login until authentication actually succeeds.

Allow local usage without an account if technically feasible and appropriate.

Do not collect unnecessary personal information. Never expose passwords, access tokens, or private user data in logs.

If cloud synchronization is not available within the zero-cost constraint, explain that limitation clearly.

14. Security and API-Key Handling

Security is mandatory.

- Never place secret API keys, private credentials, or administrative tokens in public source code or a distributable APK.
- Do not assume that obfuscation makes an embedded key secure.
- Do not create an undocumented proxy to hide paid usage.
- Do not store credentials in ordinary chat history.
- Validate external input.
- Apply sensible upload and request limits.
- Handle network failures and API errors safely.
- Avoid logging private messages, uploaded content, or credentials unnecessarily.
- Use secure transport for network requests.

If a secure shared API architecture cannot be delivered without paid infrastructure, do not silently introduce such infrastructure. Explain the limitation and select the safest practical zero-cost architecture available.

Do not falsely claim that an API key embedded in a client application is protected.

15. Technology and Architecture

Inspect the existing project and use its compatible, stable technology stack wherever practical.

Do not introduce unnecessary frameworks, dependencies, backend services, or infrastructure.

Requirements:

- Modular, maintainable architecture.
- Clear separation between interface, conversation storage, model routing, file handling, media processing, and settings.
- Centralized model configuration.
- Consistent error handling.
- Responsive mobile layouts.
- Appropriate loading and empty states.
- Accessible controls.
- Persistent settings.
- No unnecessary network calls.
- No unnecessary dependencies on paid platforms.

Do not introduce Firebase, a paid cloud database, a paid server, or paid hosting as a mandatory requirement. If a service is proposed, justify why it is necessary and verify that the intended usage can remain free.

If the current Google AI Studio environment cannot directly implement or export a requested native Android feature, implement the closest honest, compatible solution and explain the exact limitation. Do not simulate native functionality with nonfunctional UI.

16. Error Handling and Reliability

Every external service must have proper failure handling.

Handle at least:

- No internet connection.
- Request timeout.
- Invalid or unavailable model.
- Rate-limit errors.
- Free quota exhaustion.
- Unsupported file.
- Oversized upload.
- Failed video processing.
- Invalid authentication.
- Permission denial.
- Interrupted generation.
- Empty or malformed response.
- Service outage.

Show concise, understandable messages and offer retry options when appropriate.

Use bounded retries with backoff where appropriate. Avoid infinite retries and repeated expensive operations.

Never tell the user that an action succeeded unless the application has confirmation that it succeeded.

17. Performance and User Experience

Optimize for everyday Android devices and unreliable mobile networks.

- Keep navigation responsive.
- Avoid blocking the entire interface during a request.
- Display generation progress when available.
- Stream responses when supported.
- Reduce unnecessary rendering and repeated file processing.
- Keep large uploads under explicit user control.
- Handle application backgrounding and resuming.
- Prevent duplicate submissions from repeated taps.
- Preserve unfinished input when practical.
- Keep errors actionable and understandable.

Prioritize speed without sacrificing correctness.

18. Privacy and User Control

Provide clear settings for:

- Clearing local conversation history.
- Deleting individual conversations.
- Managing stored preferences.
- Controlling voice playback.
- Reviewing available permissions.
- Understanding when external AI services process submitted content.

Never claim that a conversation is stored only on the device if it has been transmitted to a remote model.

Do not add advertising SDKs, advertising identifiers, tracking analytics, or unnecessary telemetry.

Do not sell user data or use it for advertising.

19. Implementation and Testing Process

Follow this sequence internally.

Phase A — Inspect

Inspect the existing source, project structure, dependencies, build system, and currently implemented features.

Identify what already works, what is broken, and what is missing.

Phase B — Plan

Create an implementation plan that respects the existing project and the zero-cost requirement.

Verify external APIs, model identifiers, file support, search integration, and free-tier restrictions against current official documentation.

Do not stop after producing the plan. Continue implementation.

Phase C — Build

Implement the interface, conversation persistence, AI routing, model integration, search, attachments, image analysis, video analysis, voice input/output, and settings as supported by the actual environment.

Keep unsupported integrations clearly identified. Do not substitute fake functionality.

Phase D — Test

Run the available checks and tests.

Verify:

- The application starts.
- Navigation works.
- A new conversation can be created.
- Conversations persist after restarting the application.
- Rename, delete, pin, and search work.
- Chat requests reach the configured model.
- Errors and quota exhaustion are handled correctly.
- Web citations link to real sources.
- Supported image and document uploads work.
- Video analysis follows the actual provider's workflow.
- Voice controls work on supported devices.
- No mandatory paid endpoint is invoked.
- No secret credentials are exposed in distributable client code.
- No visible button is knowingly left nonfunctional.

Fix issues found during testing and repeat the relevant checks.

Phase E — Final Report

Provide a concise implementation report containing:

1. What was actually implemented.
2. Which features were successfully tested.
3. Which features need external configuration.
4. Which capabilities have free-tier limits.
5. Any known limitations.
6. Any remaining build errors.
7. The next steps needed to produce a working Android APK, if APK export is supported by the environment.

Do not report a test as passed if it was not executed.

20. Final Acceptance Criteria

AZ AI 2.0 is acceptable only when:

- Its visual identity consistently uses the AZ lightning-bolt brand.
- Its interface is polished, responsive, and mobile-friendly.
- Chat history persists correctly.
- Its core chat workflow uses a real configured AI service.
- Model selection and fallback are modular.
- Search does not fabricate sources.
- Image understanding is supported.
- Video analysis is implemented through a real supported processing workflow.
- File analysis is functional for supported formats.
- Voice input and output work where the platform supports them.
- The application contains no advertisements or subscriptions.
- No paid service is a mandatory dependency.
- No unexpected paid API calls are made.
- Limitations are communicated honestly.
- The code is maintainable and the application is tested to the extent possible.

Now begin by inspecting the current project and implementing AZ AI 2.0. Do not respond with only a proposal, a tutorial, or a static UI mockup. Build the working application, verify what you can, and report the real results.
"""


def get_master_prompt() -> str:
    """بترجع الماستر برومبت كنص."""
    return MASTER_PROMPT


if __name__ == "__main__":
    print(MASTER_PROMPT)
