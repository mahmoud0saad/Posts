package com.techno_cloud.posts_app;

import android.app.Activity;
import android.app.Application;

import androidx.annotation.CallSuper;

import io.flutter.FlutterInjector;


public class App extends Application {

    @Override
    @CallSuper
    public void onCreate() {
        super.onCreate();
        FlutterInjector.instance().flutterLoader().startInitialization(this);


    }

    private Activity mCurrentActivity = null;

   

}
