.class public Lcom/qualcomm/ims/vt/LowBatteryHandler;
.super Ljava/lang/Object;
.source "LowBatteryHandler.java"

# interfaces
.implements Lorg/codeaurora/ims/ICallListListener;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;


# instance fields
.field private final isCarrierOneSupported:Z

.field private mBatteryLevel:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsLowBattery:Z

.field private mPhoneId:I

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "VideoCall_LowBattery"

    sput-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V
    .locals 4
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    .line 42
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isCarrierOneSupported:Z

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mPhoneId:I

    .line 111
    new-instance v0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;-><init>(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mBatteryLevel:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object p2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    .line 47
    iput-object p1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 48
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mPhoneId:I

    .line 49
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mBatteryLevel:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/ims/vt/LowBatteryHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 35
    iget v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mPhoneId:I

    return v0
.end method

.method static synthetic access$100(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 35
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 35
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    return v0
.end method

.method static synthetic access$202(Lcom/qualcomm/ims/vt/LowBatteryHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/LowBatteryHandler;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 35
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->disconnectVideoCalls()V

    return-void
.end method

.method static synthetic access$500(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 35
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isCarrierOneSupported:Z

    return v0
.end method

.method static synthetic access$600(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 35
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->updateLowBatteryStatus()V

    return-void
.end method

.method private disconnectVideoCalls()V
    .locals 2

    .line 196
    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    const-string v1, "disconnectVideoCalls "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->disconnectVideoCalls(Lorg/codeaurora/ims/DriverCallIms$State;)V

    .line 198
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->disconnectVideoCalls(Lorg/codeaurora/ims/DriverCallIms$State;)V

    .line 199
    return-void
.end method

.method private disconnectVideoCalls(Lorg/codeaurora/ims/DriverCallIms$State;)V
    .locals 5
    .param p1, "state"    # Lorg/codeaurora/ims/DriverCallIms$State;

    .line 205
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 206
    .local v1, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    sget-object v2, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnectVideoCalls session : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    const/16 v2, 0x1f9

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->terminate(I)V

    .line 210
    .end local v1    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_0
    goto :goto_0

    .line 211
    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;
    .locals 3

    const-class v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;

    monitor-enter v0

    .line 101
    :try_start_0
    sget-object v1, Lcom/qualcomm/ims/vt/LowBatteryHandler;->sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 102
    monitor-exit v0

    return-object v1

    .line 104
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "LowBatteryHandler: Not initialized"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)Lcom/qualcomm/ims/vt/LowBatteryHandler;
    .locals 3
    .param p0, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "context"    # Landroid/content/Context;

    const-class v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/qualcomm/ims/vt/LowBatteryHandler;->sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/ims/vt/LowBatteryHandler;->sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit v0

    return-object v1

    .line 83
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "LowBatteryHandler: Multiple initialization"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .end local p0    # "serviceSub":Lorg/codeaurora/ims/ImsServiceSub;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private updateLowBatteryStatus()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->updateLowBatteryStatus()V

    .line 190
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 89
    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    const-string v1, "dispose()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-class v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mBatteryLevel:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    const/4 v1, 0x0

    sput-object v1, Lcom/qualcomm/ims/vt/LowBatteryHandler;->sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 93
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isLowBattery()Z
    .locals 2

    .line 178
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isCarrierOneSupported:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mPhoneId:I

    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    .line 179
    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 180
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    return v0
.end method

.method public onActiveSubChanged(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 4
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 57
    if-nez p1, :cond_0

    .line 58
    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    const-string v1, "setActiveSub: serviceSub is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mBatteryLevel:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 64
    iput-object p1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 65
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mPhoneId:I

    .line 66
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mBatteryLevel:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    :cond_1
    return-void
.end method

.method public onSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 135
    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionAdded callSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isCarrierOneSupported:Z

    if-nez v0, :cond_0

    .line 138
    return-void

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 143
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/16 v2, 0x1f5

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->terminate(I)V

    .line 155
    .end local v0    # "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_1
    return-void
.end method

.method public onSessionAdded(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 0
    .param p1, "ussdSession"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;

    .line 165
    return-void
.end method

.method public onSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 160
    return-void
.end method

.method public onSessionRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 0
    .param p1, "ussdSession"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;

    .line 170
    return-void
.end method
