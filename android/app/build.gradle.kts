plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.doctor_appotmnet"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.doctor_appotmnet"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    flavorDimensions += "default"

    productFlavors {
        create("production") {
            dimension = "default"
            resValue("string", "app_name", "DocDoc Production")
        }

        create("development") {
            dimension = "default"
            applicationIdSuffix = ".dev"
            resValue("string", "app_name", "DocDoc Development")
        }
    }

    buildTypes {
        getByName("release") {
            signingConfig = signingConfigs.getByName("debug") // يمكنك تغييره لاحقًا للتوقيع الحقيقي
        }
    }
}

flutter {
    source = "../.."
}
