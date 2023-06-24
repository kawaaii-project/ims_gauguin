.class public final Lorg/codeaurora/ims/ImsRadioHalFactory;
.super Ljava/lang/Object;
.source "ImsRadioHalFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsRadioHalFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final newImsRadioHal(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;I)Lorg/codeaurora/ims/IImsRadio;
    .locals 2
    .param p0, "respCallback"    # Lorg/codeaurora/ims/IImsRadioResponse;
    .param p1, "indCallback"    # Lorg/codeaurora/ims/IImsRadioIndication;
    .param p2, "phoneId"    # I

    .line 27
    const-string v0, "ro.radio.noril"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "ImsRadioHalFactory"

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "Initialize default HAL as target does not support ril"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;-><init>()V

    return-object v0

    .line 30
    :cond_0
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioAidl;->isAidlAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    const-string v0, "Initializing IImsRadio AIDL"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lorg/codeaurora/ims/ImsRadioAidl;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsRadioAidl;-><init>(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;I)V

    return-object v0

    .line 34
    :cond_1
    const-string v0, "Initializing IImsRadio HIDL as AIDL is not available"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lorg/codeaurora/ims/ImsRadioHidl;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsRadioHidl;-><init>(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;I)V

    return-object v0
.end method
