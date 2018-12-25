---
title: "Multitasking"
date: 2018-01-28T21:48:57+01:00
anchor: "Multitasking"
weight: 1
---

Multitasking lets you quickly switch from one app to another at any time through a multitasking interface on an iOS device, or by using a multifinger gesture on an iPad. On iPad, multitasking also lets you use two apps at once in Slide Over, Split View, or Picture in Picture mode. Slide Over is accessed by swiping from the right side of the screen to temporarily use a second app without leaving the context of the current app, such as to quickly view your Mail inbox while you’re using Safari. Split View lets you use two side-by-side apps at the same time, and Picture in Picture lets you watch a video while working in another app.

![ipad](https://developer.apple.com/design/human-interface-guidelines/ios/images/picture-in-picture-controls_2x.png")
Designing an app that thrives in a multitasking environment hinges on your app harmoniously coexisting`[和谐共存]` with other apps on the device. This means your app shouldn’t use too much CPU, memory, screen space, or other system resources. It should respond well to sudden interruptions`[突然中断]` and audio from other apps, transition to and from the background quickly and smoothly, and behave responsibly when operating in the background.

Design an adaptable interface that looks great when running in split view. An adaptable`[可适]`interface automatically adjusts its UI elements and layout when users switch multitasking modes, rotate the screen, or change text size or locale. To learn more about designing an adaptable experience, see Adaptivity and Layout.

Be prepared for interruptions, and be ready to resume. Your app can be interrupted at any time. When an interruption occurs, your app should save the current state quickly and precisely so people can seamlessly continue where they left off when they return. For developer guidance, see Preserving Your App’s Visual Appearance Across Launches in App Programming Guide for iOS.

Make sure your interface works with a double-high status bar. Certain features`[特定功能]`, such as in-progress phone calls, audio recording, and tethering display an additional status bar at the top of the screen. In unprepared apps, this added height can cause layout problems by covering or pushing down other interface elements. Test your app with these features enabled to ensure that your interface responds appropriately and still looks great.

Pause activity that requires attention or active participation. If your app is a game or a media-viewing app, for example, make sure people don’t miss anything when they switch to another app. When they switch back, let them continue as if they’d never left.

Respond appropriately to external audio. Occasionally, your app’s audio may be interrupted by audio from another app or the system itself. For example, an incoming phone call or a music playlist initiated by Siri may interrupt your app’s audio. When situations like these occur, your app’s response should meet people’s expectations. For primary audio`[主音频]` interruptions, such as playing music, podcasts, or audiobooks`[有声书]`, your app should pause its audio indefinitely. For shorter interruptions, such as GPS directional notifications, your app should temporarily lower its audio volume or pause its audio and resume when the interruption ends. For additional guidance, see Audio.

Finish user-initiated tasks in the background. When someone starts a task, they expect it to finish even if they switch away from`[从...切换]` your app. If your app is in the middle of performing a task that doesn’t need additional input, complete it in the background before suspending.

Use notifications sparingly`[谨慎地]`. Your app can arrange for notifications to be sent at specific times, whether your app is suspended, running in the background, or not running at all. Notifications are fine for communicating important information, but avoid pestering people with too many. For example, don’t show a notification every time your app finishes a task in the background. Instead, let people check on tasks by returning to your app. For additional guidance, see Notifications.

For iPad-specific developer guidance, see Adopting Multitasking Enhancements on iPad.