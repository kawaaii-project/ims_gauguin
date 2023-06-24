.class public Lcom/qualcomm/ims/vt/ImsVideoGlobals;
.super Ljava/lang/Object;
.source "ImsVideoGlobals.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;


# instance fields
.field private mActivePhoneId:I

.field private mCameraController:Lcom/qualcomm/ims/vt/CameraController;

.field private mContext:Landroid/content/Context;

.field private mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

.field private mMediaController:Lcom/qualcomm/ims/vt/MediaController;

.field private mServiceSubs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-string v0, "VideoCall_ImsVideoGlobals"

    sput-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 81
    .local p1, "serviceSubs":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsServiceSub;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mActivePhoneId:I

    .line 82
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    .line 84
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->setActivePhoneId(I)V

    .line 86
    iput-object p2, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->getInstance()Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/qualcomm/ims/vt/CameraController;->init(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)Lcom/qualcomm/ims/vt/CameraController;

    .line 88
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->getInstance()Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/qualcomm/ims/vt/MediaController;->init(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V

    .line 89
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->init(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 91
    invoke-static {}, Lcom/qualcomm/ims/vt/CameraController;->getInstance()Lcom/qualcomm/ims/vt/CameraController;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mCameraController:Lcom/qualcomm/ims/vt/CameraController;

    .line 92
    invoke-static {}, Lcom/qualcomm/ims/vt/MediaController;->getInstance()Lcom/qualcomm/ims/vt/MediaController;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    .line 93
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 94
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceSub;

    .line 95
    .local v1, "sub":Lorg/codeaurora/ims/ImsServiceSub;
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 96
    .end local v1    # "sub":Lorg/codeaurora/ims/ImsServiceSub;
    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method private getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mActivePhoneId:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    return-object v0
.end method

.method private getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 162
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;
    .locals 3

    const-class v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 48
    monitor-exit v0

    return-object v1

    .line 46
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ImsVideoGlobals: getInstance called before init."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Ljava/util/List;Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .local p0, "serviceSubArr":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsServiceSub;>;"
    const-class v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    monitor-enter v0

    .line 33
    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 37
    sget-object v1, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;-><init>(Ljava/util/List;Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    return-void

    .line 40
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ImsVideoGlobals: Multiple initializaiton."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Default subscription is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .end local p0    # "serviceSubArr":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsServiceSub;>;"
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 226
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 229
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method private setActivePhoneId(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 104
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mActivePhoneId:I

    .line 105
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .line 52
    const-string v0, "dispose()"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    .line 53
    const-class v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsServiceSub;

    .line 55
    .local v2, "sub":Lorg/codeaurora/ims/ImsServiceSub;
    iget-object v3, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsServiceSub;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 56
    .end local v2    # "sub":Lorg/codeaurora/ims/ImsServiceSub;
    goto :goto_0

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 58
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mCameraController:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/CameraController;->dispose()V

    .line 59
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/MediaController;->dispose()V

    .line 60
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->dispose()V

    .line 61
    const/4 v1, 0x0

    sput-object v1, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method findSessionbyMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1
    .param p1, "mediaId"    # I

    .line 197
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    return-object v0
.end method

.method findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1
    .param p1, "mediaId"    # I

    .line 202
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getActiveCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3

    .line 109
    nop

    .line 110
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 111
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple Active Calls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    .line 112
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    :goto_0
    return-object v1
.end method

.method getActiveCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getActiveOrBackgroundCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 155
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getBackgroundCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 158
    :cond_0
    return-object v0
.end method

.method getActiveOrBackgroundCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveOrBackgroundCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getActiveOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 146
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 149
    :cond_0
    return-object v0
.end method

.method getActiveOrOutgoingCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getBackgroundCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3

    .line 137
    nop

    .line 138
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 139
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple Background Calls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    .line 140
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    :goto_0
    return-object v1
.end method

.method getBackgroundCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getBackgroundCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getCameraController()Lcom/qualcomm/ims/vt/CameraController;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mCameraController:Lcom/qualcomm/ims/vt/CameraController;

    return-object v0
.end method

.method getIncomingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3

    .line 129
    nop

    .line 130
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple Incoming Calls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    .line 132
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    :goto_0
    return-object v1
.end method

.method getIncomingCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getIncomingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getMediaController()Lcom/qualcomm/ims/vt/MediaController;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    return-object v0
.end method

.method getOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3

    .line 117
    nop

    .line 118
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 123
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple Outgoing Calls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    .line 124
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    :goto_0
    return-object v1
.end method

.method getOutgoingCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method public onMultiSimConfigChanged(II)V
    .locals 3
    .param p1, "prevSimCount"    # I
    .param p2, "activeModemCount"    # I

    .line 213
    if-ne p1, p2, :cond_0

    .line 214
    return-void

    .line 218
    :cond_0
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 219
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->setActivePhoneId(I)V

    .line 223
    return-void
.end method

.method public setPhoneIdWithActiveCall(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhoneIdWithActiveCall, phoneId # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    .line 68
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 72
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 76
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->setActivePhoneId(I)V

    .line 77
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->onActiveSubChanged(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 78
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 79
    return-void

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid phoneId."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
