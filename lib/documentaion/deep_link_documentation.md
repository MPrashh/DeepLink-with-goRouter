DEEP LINK :

1. APPLICATION SIDE CONFIGURATION :--

Go to android/app/src/main/AndroidManifest.xml file.

- Add <meta-data> tag to the main activity tag to configure the Flutter framework for handling deep links,
- Add <intent-filter> tag to configure the android app to handle intents originating from the URL and initiate the main activity.
- Add <data> tags to sepecify the host and URL scheme within intent filter.

source code :-

<meta-data 
  android:name="flutter_deeplinking_enabled" 
  android:value="true"
/>
<intent-filter android:autoVerify="true">
<action android:name="android.intent.action.VIEW" />
<category android:name="android.intent.category.DEFAULT" />
<category android:name="android.intent.category.BROWSABLE" />

  <data android:scheme="https" />
  <data android:host="deeplink-demo.com" />
</intent-filter>

2. HOSTING A DIGITAL ASSET LINK :--

run this command in terminal within android folder to get SHA256 hash function :

$ ./gradlew signingReport

SHA-256: 07:61:1A:13:78:2B:10:2F:15:48:88:CA:4E:79:70:4C:2C:AF:1F:9D:62:BE:CC:43:C0:BE:58:14:3C:43:2E:56

the SHA-256 hash function is used due to its significantly higher bit length compared to the others. This higher bit length enhances its security and makes it a stronger hash function.

hosting a digital asset link on the web server is essential. This digital asset establishes a secure and reliable connection between your web domain and your app

assetlinks.json file contents :

[{
"relation": ["delegate_permission/common.handle_all_urls"],
"target": {
"namespace": "android_app",
"package_name": "com.example.go_router_example",
"sha256_cert_fingerprints":
["07:61:1A:13:78:2B:10:2F:15:48:88:CA:4E:79:70:4C:2C:AF:1F:9D:62:BE:CC:43:C0:BE:58:14:3C:43:2E:56"]
}
}]

host this in server using GitHub pages :
new repo(repo name= .well-known) > upload json file > settings > pages > deploy from branch (Source) > Branch (main > root => save) > 2 min > visit Site > add /file-name after site path

To verify proper configuration is hosted or not -
https://developers.google.com/digital-asset-links/tools/generator (Statement List generator / Tester)

# --- First Method to Test ------ #:

To test this DeepLink is working on emulator or not.
Open Messages => Create Contact -> message like "https://prashmm.github.io/about"

Here "scheme://host/route_name"
where scheme and host are defined in androidManifest.xml (<intent-filter>)
route_name is path name mentioned in app_router

# ----- Second Method to Test ----- # :

adb shell 'am start -W -a android.intent.action.VIEW -c android.intent.category.BROWSABLE -d "https://prashmm.github.io/red"' com.example.go_router_example -> RUN THIS CMND TO TEST

https://blog.openreplay.com/deep-linking-in-flutter/
https://docs.flutter.dev/cookbook/navigation/set-up-app-links
