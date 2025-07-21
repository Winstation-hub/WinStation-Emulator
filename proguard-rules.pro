# Keep classes and methods used by reflection or JNI (native code)
-keep class com.fusiondev.winstationemulator.** { *; }
-keepclassmembers class * {
    native <methods>;
}

# Keep annotations (useful if you use libraries depending on them)
-keepattributes *Annotation*

# Keep Serializable classes and their fields
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

# Keep everything related to JNI (native code)
-keepclasseswithmembers class * {
    native <methods>;
}

# Keep classes used in WebView JavaScript (uncomment and adapt if you use WebView)
/*
-keepclassmembers class fqcn.of.javascript.interface.for.webview {
    public *;
}
*/

# Prevent renaming important resources (like layouts, strings, etc.)
-keepclassmembers class **.R$* {
    public static <fields>;
}

# Keep debug info (optional)
/*
-keepattributes SourceFile,LineNumberTable
*/