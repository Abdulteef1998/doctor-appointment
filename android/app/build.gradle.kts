plugins {
    id("com.android.application")

    // FlutterFire Configuration plugin
    id("com.google.gms.google-services")

    id("kotlin-android")

    // Flutter Gradle Plugin (must be last)
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

    // تحديد أبعاد الـ flavors
    flavorDimensions.add("default")

    // تعريف الـ flavors
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
            // يمكنك لاحقًا إعداد signingConfig الحقيقي هنا
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
