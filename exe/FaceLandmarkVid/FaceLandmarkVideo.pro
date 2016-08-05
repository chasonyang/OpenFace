QT += core

CONFIG += c++11

TARGET = FaceLandmarkVideo

TEMPLATE = app

SOURCES += \
    FaceLandmarkVid.cpp

DEFINES += WITH_QT

#-------------------------------------------------
# OpenFace
#-------------------------------------------------
INCLUDEPATH += $$PWD/../../lib/local/FaceAnalyser/include
INCLUDEPATH += $$PWD/../../lib/local/LandmarkDetector/include
LIBS += -L $$PWD
LIBS += -lFaceAnalyser \
        -lLandmarkDetector  -ltbb
CONFIG +=c++11
#-------------------------------------------------
#
# opencv win and android g++ config 2015-11-27
#
#-------------------------------------------------

win32 {
    INCLUDEPATH += D:/WorkPlaceLibrary/includeCVextra
    message("win32 configuration")
    LIBS += -L"D:/WorkPlaceLibrary/lib/opencv/windows/"

    LIBS += -lopencv_adas300.dll            \
            -lopencv_bgsegm300.dll          \
            -lopencv_bioinspired300.dll     \
            -lopencv_calib3d300.dll         \
            -lopencv_ccalib300.dll          \
            -lopencv_core300.dll            \
            -lopencv_face300.dll            \
            -lopencv_features2d300.dll      \
            -lopencv_flann300.dll           \
            -lopencv_hal300                 \
            -lopencv_highgui300.dll         \
            -lopencv_imgcodecs300.dll       \
            -lopencv_imgproc300.dll         \
            -lopencv_latentsvm300.dll       \
            -lopencv_ml300.dll              \
            -lopencv_objdetect300.dll       \
            -lopencv_optflow300.dll         \
            -lopencv_photo300.dll           \
            -lopencv_reg300.dll             \
            -lopencv_rgbd300.dll            \
            -lopencv_saliency300.dll        \
            -lopencv_shape300.dll           \
            -lopencv_stitching300.dll       \
            -lopencv_superres300.dll        \
            -lopencv_surface_matching300.dll \
            -lopencv_text300.dll            \
            -lopencv_tracking300.dll        \
            -lopencv_ts300                  \
            -lopencv_video300.dll           \
            -lopencv_videoio300.dll         \
            -lopencv_videostab300.dll       \
            -lopencv_xfeatures2d300.dll     \
            -lopencv_ximgproc300.dll        \
            -lopencv_xobjdetect300.dll      \
            -lopencv_xphoto300.dll        \
}
android {
    INCLUDEPATH += D:/WorkPlaceLibrary/include
    message("android configuration")
    LIBS += -L"D:/WorkPlaceLibrary/lib/opencv/armeabi-v7a/"
    LIBS += \
           -lopencv_core             \
           -lopencv_features2d       \
           -lopencv_flann            \
           -lopencv_highgui          \
           -lopencv_imgproc          \
           -lopencv_face             \
           -lopencv_java3            \
           -lopencv_ml               \
           -lopencv_objdetect        \
           -lopencv_photo            \
           -lopencv_stitching        \
           -lopencv_superres         \
           -lopencv_ts               \
           -lopencv_video            \
           -lopencv_videostab        \
           -ltbb

    contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
        ANDROID_EXTRA_LIBS = \
        D:/WorkPlaceLibrary/lib/opencv/armeabi-v7a/libopencv_java3.so
    }
}

#-------------------------------------------------
#
# Dlib g++ config 2015-12-1
#
#-------------------------------------------------
SOURCES += D:/WorkPlaceLibrary/dlib-18.18/dlib/all/source.cpp
DEFINES +=DLIB_NO_GUI_SUPPORT
INCLUDEPATH += D:/WorkPlaceLibrary/dlib-18.18
DEPENDPATH  += D:/WorkPlaceLibrary/dlib-18.18
win32{
    LIBS += -L"D:/WorkPlaceLibrary/lib/gcc/"
# Compiling on Windows Using GCC see detals at "http://dlib.net/compile.html"
    LIBS  += -lws2_32       \
             -lwinmm
}

