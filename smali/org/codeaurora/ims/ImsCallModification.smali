.class public Lorg/codeaurora/ims/ImsCallModification;
.super Ljava/lang/Object;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;,
        Lorg/codeaurora/ims/ImsCallModification$PauseState;
    }
.end annotation


# static fields
.field static final EVENT_AVP_UPGRADE_DONE:I = 0x5

.field static final EVENT_MODIFY_CALL_CONFIRM_DONE:I = 0x8

.field static final EVENT_MODIFY_CALL_INITIATE_DONE:I = 0x6

.field static final EVENT_VIDEO_PAUSE_DONE:I = 0x7

.field static final EVENT_VIDEO_PAUSE_RETRY:I = 0x9

.field private static final MAX_MULTITASK_RETRIES:I = 0x1

.field static final PAUSE_DELAY_MILLIS:I = 0xbb8


# instance fields
.field private mAvpCallType:I

.field private mAvpRetryAllowed:Z

.field private mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field public mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field public mIndex:I

.field private mIsLocallyPaused:Z

.field private mIsVideoPauseRequested:Z

.field private mMultiTaskRetryCount:I

.field private mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

.field private mPrevVideoCallType:I


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 1
    .param p1, "imsCallSessionImpl"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 84
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codeaurora/ims/ImsCallModification;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V
    .locals 2
    .param p1, "imsCallSessionImpl"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIndex:I

    .line 52
    const/16 v0, 0xa

    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    .line 53
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpRetryAllowed:Z

    .line 54
    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    .line 70
    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    .line 73
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    .line 76
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsVideoPauseRequested:Z

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsCallModification instance created imsCallSessionImpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iput-object p3, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 92
    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    .line 93
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 94
    new-instance v0, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;

    invoke-direct {v0, p0, p4}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;-><init>(Lorg/codeaurora/ims/ImsCallModification;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallModification;

    .line 46
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    return-object v0
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsCallModification;I)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallModification;
    .param p1, "x1"    # I

    .line 46
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->updatePreviousVTCallType(I)V

    return-void
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallModification;

    .line 46
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    return-void
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallModification;

    .line 46
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->processPendingVTMultitask()V

    return-void
.end method

.method static synthetic access$402(Lorg/codeaurora/ims/ImsCallModification;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallModification;
    .param p1, "x1"    # Z

    .line 46
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    return p1
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsCallModification;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallModification;

    .line 46
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->shouldRetryVideoPause()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/codeaurora/ims/ImsCallModification;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallModification;

    .line 46
    iget v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return v0
.end method

.method static synthetic access$602(Lorg/codeaurora/ims/ImsCallModification;I)I
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallModification;
    .param p1, "x1"    # I

    .line 46
    iput p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return p1
.end method

.method static synthetic access$608(Lorg/codeaurora/ims/ImsCallModification;)I
    .locals 2
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallModification;

    .line 46
    iget v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return v0
.end method

.method static synthetic access$700(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/ImsCallModification$PauseState;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallModification;

    .line 46
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    return-object v0
.end method

.method static synthetic access$800(Lorg/codeaurora/ims/ImsCallModification;I)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsCallModification;
    .param p1, "x1"    # I

    .line 46
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->createAndSendMultiTaskRequest(I)V

    return-void
.end method

.method private areCallTypesSame(I)Z
    .locals 1
    .param p1, "newCallType"    # I

    .line 136
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canModifyRttCallType(I)Z
    .locals 8
    .param p1, "toCallType"    # I

    .line 754
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 755
    .local v0, "fromCallType":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 756
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    .line 755
    invoke-static {v1, v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttSupportedOnVtCalls(ILandroid/content/Context;)Z

    move-result v1

    .line 757
    .local v1, "isVideoRttSupported":Z
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v2

    .line 758
    .local v2, "isRttCall":Z
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 759
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 760
    .local v3, "isVideoUpgradeRequest":Z
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fromCallType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isRttCall: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isVideoRttSupported: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isVideoUpgradeRequest"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :cond_2
    :goto_1
    return v4
.end method

.method private clearPendingModify()V
    .locals 2

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPendingModify imsconn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    .line 339
    return-void
.end method

.method private clearPendingVTMultiTask()V
    .locals 2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPendingVTMultiTask imsconn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    sget-object v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    .line 313
    return-void
.end method

.method private createAndSendMultiTaskRequest(I)V
    .locals 2
    .param p1, "rilCallType"    # I

    .line 119
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 121
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsCallModification;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    .line 122
    return-void
.end method

.method public static hasError(Lorg/codeaurora/ims/CallModify;)Z
    .locals 1
    .param p0, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 212
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isIndexValid()Z
    .locals 2

    .line 140
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 141
    .local v0, "index":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isOldAndNewPauseRequestSame()Z
    .locals 3

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "ret":Z
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v1, :cond_0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOldAndNewPauseRequestSame Unexpectedly callModifyRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    return v0

    .line 304
    :cond_0
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v2, Lorg/codeaurora/ims/ImsCallModification$PauseState;->PAUSE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-eq v1, v2, :cond_2

    :cond_1
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v2, Lorg/codeaurora/ims/ImsCallModification$PauseState;->RESUME:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v1, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOldAndNewPauseRequestSame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    return v0
.end method

.method private isUpgradeRequestForRtt(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 4
    .param p1, "callDetails"    # Lorg/codeaurora/ims/CallDetails;

    .line 742
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 743
    .local v0, "callProfile":Landroid/telephony/ims/ImsCallProfile;
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 747
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RTT: isUpgradeRequestForRtt rttMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    iget v2, p1, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->isIndexValid()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 744
    :cond_2
    :goto_0
    return v1
.end method

.method private isVTMultitaskRequest(I)Z
    .locals 1
    .param p1, "callType"    # I

    .line 103
    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isValidCallModifyConfirmRequest(I)Z
    .locals 3
    .param p1, "callType"    # I

    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "allowed":Z
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v1, :cond_0

    .line 527
    const-string v1, "callModifyRequest is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    const/4 v1, 0x0

    return v1

    .line 531
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v1, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_1

    if-nez p1, :cond_2

    .line 537
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 538
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v1, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne p1, v1, :cond_3

    .line 539
    const/4 v0, 0x1

    .line 541
    :cond_3
    :goto_0
    return v0
.end method

.method private modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V
    .locals 5
    .param p1, "newMsg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 498
    .local p3, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isValidRilModifyCallType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallInitiate not a Valid RilCallType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    return-void

    .line 507
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v1

    .line 508
    invoke-static {p3}, Lorg/codeaurora/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p2, v1, v2}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 509
    .local v0, "callDetails":Lorg/codeaurora/ims/CallDetails;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    .line 510
    .local v1, "callProfile":Landroid/telephony/ims/ImsCallProfile;
    if-eqz v1, :cond_1

    .line 511
    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/CallDetails;->setRttMode(I)V

    .line 513
    :cond_1
    new-instance v2, Lorg/codeaurora/ims/CallModify;

    iget v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mIndex:I

    invoke-direct {v2, v0, v3}, Lorg/codeaurora/ims/CallModify;-><init>(Lorg/codeaurora/ims/CallDetails;I)V

    .line 515
    .local v2, "callModify":Lorg/codeaurora/ims/CallModify;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v3, :cond_2

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overwriting callModifyRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with callModify:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    :cond_2
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    .line 520
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyCallModifyInitiate(Lorg/codeaurora/ims/CallModify;)V

    .line 521
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v3, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    .line 522
    return-void
.end method

.method private notifyVideoPaused(I)V
    .locals 2
    .param p1, "videoState"    # I

    .line 442
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 443
    .local v0, "vcp":Landroid/telecom/VideoProfile;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 444
    return-void
.end method

.method private pendingPauseStatetoRilCallType()I
    .locals 3

    .line 125
    const/16 v0, 0xa

    .line 126
    .local v0, "rilCallType":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v2, Lorg/codeaurora/ims/ImsCallModification$PauseState;->PAUSE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v1, v2, :cond_0

    .line 127
    const/4 v0, 0x4

    goto :goto_0

    .line 129
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v2, Lorg/codeaurora/ims/ImsCallModification$PauseState;->RESUME:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v1, v2, :cond_1

    .line 130
    iget v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    .line 132
    :cond_1
    :goto_0
    return v0
.end method

.method private processPendingVTMultitask()V
    .locals 2

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processPendingVTMultitask mPendingVTMultitask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->isOldAndNewPauseRequestSame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const-string v0, "Old and new Pause Request is Same so clearing Pending VT multitask"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingVTMultiTask()V

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-eq v0, v1, :cond_2

    .line 325
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v0, :cond_1

    .line 326
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->pendingPauseStatetoRilCallType()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallModification;->createAndSendMultiTaskRequest(I)V

    .line 327
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingVTMultiTask()V

    goto :goto_0

    .line 329
    :cond_1
    const-string v0, "processPendingVTMultitask callModifyRequest not null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    :cond_2
    :goto_0
    return-void
.end method

.method private retryAvpUpgrade(Z)V
    .locals 3
    .param p1, "shouldNotifyUser"    # Z

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retryAvpUpgrade: AVPF failed so retrying using AVP. mAvpCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " shouldNotifyUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIndex:I

    .line 450
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 451
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/codeaurora/ims/ImsCallModification;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    .line 452
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "errStr"    # Ljava/lang/String;

    .line 570
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 571
    .local v0, "exception":Ljava/lang/RuntimeException;
    if-eqz p1, :cond_0

    .line 572
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 573
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 575
    :cond_0
    return-void
.end method

.method private shouldRetryVideoPause()Z
    .locals 2

    .line 316
    iget v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private triggerOrQueueVTMultitask(I)V
    .locals 2
    .param p1, "callType"    # I

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerOrQueueVTMultitask callType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " conn= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 111
    .local v0, "isPauseRequested":Z
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->PAUSE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->RESUME:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    :goto_1
    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    .line 112
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsVideoPauseRequested:Z

    .line 113
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v1, :cond_2

    .line 114
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->processPendingVTMultitask()V

    .line 116
    :cond_2
    return-void
.end method

.method private updatePreviousVTCallType(I)V
    .locals 2
    .param p1, "callType"    # I

    .line 455
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 458
    :cond_0
    iput p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating mPrevVideoCallType to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    :cond_1
    return-void
.end method

.method private validateIncomingModifyConnectionType(I)Z
    .locals 7
    .param p1, "newCallType"    # I

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validateIncomingModifyConnectionType newCallType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->areCallTypesSame(I)Z

    move-result v0

    .line 182
    .local v0, "modifyToCurrCallType":Z
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->isIndexValid()Z

    move-result v1

    .line 184
    .local v1, "isIndexValid":Z
    const/4 v2, 0x0

    .line 187
    .local v2, "isLowBattery":Z
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getPhoneId()I

    move-result v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(ILandroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 189
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery()Z

    move-result v2

    .line 193
    :cond_0
    const/4 v3, 0x0

    .line 194
    .local v3, "isVideoCRBT":Z
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v4

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v5, :cond_1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 196
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getPhoneId()I

    move-result v4

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    const-string v6, "config_enable_video_crbt"

    invoke-static {v4, v5, v6}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 198
    const-string v4, "validateIncomingModifyConnectionType isVideoCRBT = true"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    const/4 v3, 0x1

    .line 202
    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 205
    .local v4, "isValid":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "validateIncomingModifyConnectionType modifyToCurrCallType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isIndexValid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isLowBattery = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    return v4
.end method

.method private validateOutgoingModifyConnectionType(Landroid/os/Message;I)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "validateOutgoingModifyConnectionType newCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->areCallTypesSame(I)Z

    move-result v0

    .line 148
    .local v0, "modifyToCurrCallType":Z
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->isIndexValid()Z

    move-result v1

    .line 149
    .local v1, "isIndexValid":Z
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery()Z

    move-result v2

    .line 150
    .local v2, "isLowBattery":Z
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->canModifyRttCallType(I)Z

    move-result v3

    .line 152
    .local v3, "isRttCallModificationAllowed":Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 153
    .local v4, "isValid":Z
    :goto_0
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v5

    if-nez v5, :cond_1

    .line 154
    xor-int/lit8 v5, v2, 0x1

    and-int/2addr v4, v5

    .line 157
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "validateOutgoingModifyConnectionType modifyToCurrCallType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isIndexValid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isLowBattery = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isRttCallModificationAllowed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    if-nez p1, :cond_2

    return v4

    .line 163
    :cond_2
    if-nez v4, :cond_5

    .line 164
    const/4 v5, 0x0

    .line 165
    .local v5, "exception":Ljava/lang/Exception;
    if-eqz v2, :cond_3

    .line 166
    new-instance v6, Lorg/codeaurora/ims/ImsRilException;

    const/16 v7, 0x32

    const-string v8, "Low Battery"

    invoke-direct {v6, v7, v8}, Lorg/codeaurora/ims/ImsRilException;-><init>(ILjava/lang/String;)V

    move-object v5, v6

    goto :goto_1

    .line 169
    :cond_3
    if-nez v0, :cond_4

    .line 170
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Can\'t modify call."

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 172
    :cond_4
    :goto_1
    const/4 v6, 0x0

    invoke-static {p1, v6, v5}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object v6

    iput-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 173
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 175
    .end local v5    # "exception":Ljava/lang/Exception;
    :cond_5
    return v4
.end method


# virtual methods
.method public acceptConnectionTypeChange(ILjava/util/Map;Landroid/os/Message;)V
    .locals 3
    .param p1, "callType"    # I
    .param p3, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 550
    .local p2, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Confirming call type change request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->isValidCallModifyConfirmRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acceptConnectionTypeChange: MODIFY_CALL_CONFIRM with invalid calltype "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0, p3}, Lorg/codeaurora/ims/ImsCallModification;->rejectConnectionTypeChange(Landroid/os/Message;)V

    .line 556
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iput p1, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 561
    if-eqz p2, :cond_1

    .line 562
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v0, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/CallDetails;->setExtrasFromMap(Ljava/util/Map;)V

    .line 564
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 565
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v1, v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    .line 567
    .end local v0    # "newMsg":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method public changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "newCallType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 466
    .local p3, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeConnectionType  newCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " newExtras= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIndex:I

    .line 470
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->isVTMultitaskRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->triggerOrQueueVTMultitask(I)V

    goto :goto_0

    .line 475
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    iput p2, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    .line 479
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 480
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v1, :cond_2

    .line 481
    invoke-direct {p0, v0, p2}, Lorg/codeaurora/ims/ImsCallModification;->validateOutgoingModifyConnectionType(Landroid/os/Message;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 482
    invoke-direct {p0, v0, p2, p3}, Lorg/codeaurora/ims/ImsCallModification;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    goto :goto_0

    .line 485
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videocall changeConnectionType: not invoking modifyCallInitiate as there is pending callModifyRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    const-string v1, "Pending callModifyRequest so not sending modify request down"

    .line 491
    .local v1, "errorStr":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsCallModification;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 494
    .end local v0    # "newMsg":Landroid/os/Message;
    .end local v1    # "errorStr":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method

.method public close()V
    .locals 2

    .line 767
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 768
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v0, :cond_0

    .line 769
    sget v1, Lorg/codeaurora/ims/CallModify;->E_CANCELLED:I

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 770
    const-string v0, "Cancel pending call modification before being closed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyUnsolCallModify(Lorg/codeaurora/ims/CallModify;)V

    .line 772
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    .line 774
    :cond_0
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIsVideoPauseRequested()Z
    .locals 1

    .line 373
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsVideoPauseRequested:Z

    return v0
.end method

.method public getMultiTaskRetryCount()I
    .locals 1

    .line 358
    iget v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return v0
.end method

.method public getPendingModify()Lorg/codeaurora/ims/CallModify;
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    return-object v0
.end method

.method public getPendingVTMultitask()Lorg/codeaurora/ims/ImsCallModification$PauseState;
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    return-object v0
.end method

.method public getPrevVideoCallType()I
    .locals 1

    .line 353
    iget v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    return v0
.end method

.method public isAvpRetryAllowed()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpRetryAllowed:Z

    return v0
.end method

.method public isLocallyPaused()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    return v0
.end method

.method public isVideoPauseRequested()Z
    .locals 1

    .line 737
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsVideoPauseRequested:Z

    return v0
.end method

.method public onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V
    .locals 6
    .param p1, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedCallModify("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "ret":Z
    const/4 v1, 0x0

    .line 223
    .local v1, "rttChanged":Z
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 224
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v2, :cond_0

    iget v2, v2, Lorg/codeaurora/ims/CallModify;->call_index:I

    iget v4, p1, Lorg/codeaurora/ims/CallModify;->call_index:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v2, v2, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object v4, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v4, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v2, v2, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    iget-object v4, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v4, v4, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    .line 230
    invoke-virtual {v2}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget v4, p1, Lorg/codeaurora/ims/CallModify;->error:I

    iput v4, v2, Lorg/codeaurora/ims/CallModify;->error:I

    .line 233
    const/4 v0, 0x1

    goto :goto_3

    .line 235
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceivedModifyCall: Call Modify request not found.Dropping the Modify Call Request Failed. Cached Request: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", Received Request:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x0

    goto :goto_3

    .line 242
    :cond_1
    iget-object v2, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsCallModification;->isUpgradeRequestForRtt(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v1

    .line 245
    iget-object v2, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsCallModification;->validateIncomingModifyConnectionType(I)Z

    move-result v0

    .line 247
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v2, :cond_2

    .line 248
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    goto :goto_0

    .line 250
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "videocall onReceivedModifyCall: not notifying user about incoming modify call request as there is pending callModifyRequest="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x0

    .line 256
    :goto_0
    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    .line 257
    .local v2, "callModified":Z
    :goto_2
    if-nez v2, :cond_5

    .line 259
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsCallModification;->rejectConnectionTypeChange(Landroid/os/Message;)V

    .line 263
    .end local v2    # "callModified":Z
    :cond_5
    :goto_3
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery()Z

    move-result v2

    .line 264
    .local v2, "isLowBattery":Z
    if-eqz v2, :cond_6

    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v4

    if-nez v4, :cond_6

    .line 265
    const/16 v4, 0x32

    iput v4, p1, Lorg/codeaurora/ims/CallModify;->error:I

    .line 268
    :cond_6
    if-eqz v1, :cond_8

    .line 269
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getPhoneId()I

    move-result v4

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttAutoUpgradeSupported(ILandroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 271
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->sendRttModifyResponse(Z)V

    .line 272
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    .line 273
    return-void

    .line 275
    :cond_7
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v4, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyRttModifyRequest(Lorg/codeaurora/ims/CallDetails;)V

    .line 276
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    goto :goto_4

    .line 278
    :cond_8
    const-string v3, "RTT: onReceivedModifyCall: No RTT modification"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    :goto_4
    if-nez v0, :cond_a

    if-eqz v2, :cond_9

    goto :goto_5

    .line 289
    :cond_9
    const-string v3, "onReceivedModifyCall: No notify for CallModify "

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 287
    :cond_a
    :goto_5
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyUnsolCallModify(Lorg/codeaurora/ims/CallModify;)V

    .line 292
    :goto_6
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallModification;->hasError(Lorg/codeaurora/ims/CallModify;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 293
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    .line 295
    :cond_b
    return-void
.end method

.method public rejectConnectionTypeChange(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 581
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v0, :cond_0

    .line 582
    const-string v0, "rejectConnectionTypeChange callModifyRequest is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    const-string v0, "no existing modify request"

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallModification;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 584
    return-void

    .line 585
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    const-string v0, "rejectConnectionTypeChange callModifyRequest timed out."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    .line 588
    const-string v0, "modify request timed out"

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallModification;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 589
    return-void

    .line 591
    :cond_1
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 592
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 594
    .local v0, "callDetails":Lorg/codeaurora/ims/CallDetails;
    new-instance v1, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v1}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 595
    .local v1, "callModify":Lorg/codeaurora/ims/CallModify;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 596
    new-instance v2, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v2, v0}, Lorg/codeaurora/ims/CallDetails;-><init>(Lorg/codeaurora/ims/CallDetails;)V

    iput-object v2, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejecting Change request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " keep as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 601
    .local v2, "newMsg":Landroid/os/Message;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v3, v2, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    .line 602
    return-void
.end method

.method public setIsLocallyPaused(Z)V
    .locals 0
    .param p1, "isLocallyPaused"    # Z

    .line 378
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    .line 379
    return-void
.end method

.method public setMultiTaskRetryCount(I)V
    .locals 0
    .param p1, "multiTaskRetryCount"    # I

    .line 363
    iput p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    .line 364
    return-void
.end method

.method public setPendingModify(Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p1, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 348
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    .line 349
    return-void
.end method

.method public update(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update dc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    const/4 v0, 0x2

    .line 391
    .local v0, "videoPauseState":I
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isActive(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 392
    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpRetryAllowed:Z

    .line 396
    :cond_0
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 397
    const-string v1, "videocall: update: Not a videocall CASE"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingVTMultiTask()V

    .line 399
    iput v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    .line 400
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v1, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isAvpRetryDialing(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v1

    .line 403
    .local v1, "isAvpRetryDialingCase":Z
    if-eqz v1, :cond_2

    .line 406
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v3

    iput v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    .line 408
    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v3, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isAvpRetryUpgrade(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v3

    .line 409
    .local v3, "isAvpRetryUpgradeCase":Z
    if-nez v1, :cond_5

    if-eqz v3, :cond_3

    goto :goto_0

    .line 412
    :cond_3
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v4, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoPaused(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 414
    const-string v4, "videocall Video Paused CASE"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 415
    :cond_4
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v4, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoResumed(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 417
    const-string v4, "videocall Video Resumed CASE"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 410
    :cond_5
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videocall AVP RETRY CASE dc= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " conn= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v4

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    move v4, v2

    :goto_1
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsCallModification;->retryAvpUpgrade(Z)V

    .line 420
    :cond_7
    :goto_2
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsCallModification;->updatePreviousVTCallType(I)V

    .line 422
    new-instance v4, Lorg/codeaurora/ims/CallDetails;

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v4, v5}, Lorg/codeaurora/ims/CallDetails;-><init>(Lorg/codeaurora/ims/CallDetails;)V

    .line 435
    .local v4, "newDetails":Lorg/codeaurora/ims/CallDetails;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsCallUtils;->canVideoPause(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 436
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    .line 437
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsVideoPauseRequested:Z

    .line 439
    :cond_8
    return-void
.end method
