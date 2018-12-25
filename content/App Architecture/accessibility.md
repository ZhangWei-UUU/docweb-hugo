---
title: "Accessibility"
date: 2018-01-28T21:48:57+01:00
anchor: "Accessibility"
weight: 3
---

iOS offers extensive accessibility features for users with vision loss`[失明]`, hearing loss, and other disabilities. Most UIKit-based apps can be made accessible with very little effort, allowing more people to use your app while providing an equally engaging experience for all.

Provide alternative text labels`[文本替代标签]` for images, icons, and interface elements. Alternative text labels aren’t visible onscreen, but they let VoiceOver audibly describe what's onscreen, making navigation easier for people with visual impairments.

Respond to accessibility preferences. If your app uses UIKit to implement its user interface, text and interface elements automatically adapt to certain accessibility preferences, such as bold and larger text. Your app should also check and respond to accessibility preferences when appropriate, such as when the option to reduce motion is enabled. Apps implementing custom fonts should attempt to match the accessibility behavior of the system fonts.

Test your app with accessibility features. In addition to text and motion changes, accessibility options can change contrast, invert colors, reduce transparency, and more. Enable these settings and observe how your app will look and behave for people who enable these features.

Include closed captions`[字幕]` and audio descriptions. Closed captions allow the deaf`[聋]` and hard-of-hearing to perceive spoken dialogue and other audible content in videos. Audio descriptions provide spoken narration`[口头叙述]` of important video content for the visually impaired.

Use sufficient color contrast ratios`[对比度]`. Insufficient contrast in your app makes content hard to read for everyone. Icons and text might blend with the background, for example. An online color contrast calculator can help you accurately analyze the color contrast in your app, to ensure that it meets optimal standards. Strive for a minimum contrast ratio of 4.5:1, although 7:1 is preferred because it meets more stringent accessibility standards. For additional design guidance, see Color.
