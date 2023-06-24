.class public Lorg/codeaurora/ims/CapabilityTracker;
.super Ljava/lang/Object;
.source "CapabilityTracker.java"


# instance fields
.field private mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCallComposerSupported:Z

.field private mIsUssdSupported:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsCallComposerSupported:Z

    .line 25
    iput-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsUssdSupported:Z

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    return-void
.end method


# virtual methods
.method public addCapability(II)V
    .locals 2
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 34
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;-><init>(II)V

    .line 35
    .local v0, "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    iget-object v1, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    iget-object v1, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsCallComposerSupported:Z

    .line 53
    iput-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsUssdSupported:Z

    .line 54
    return-void
.end method

.method public getEnabledCapabilities()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public isCallComposerSupported()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsCallComposerSupported:Z

    return v0
.end method

.method public isSupported(I)Z
    .locals 3
    .param p1, "capability"    # I

    .line 92
    iget-object v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 93
    .local v1, "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 94
    const/4 v0, 0x1

    return v0

    .line 96
    .end local v1    # "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    :cond_0
    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportedOnRadioTech(II)Z
    .locals 3
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 106
    iget-object v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 107
    .local v1, "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 108
    const/4 v0, 0x1

    return v0

    .line 110
    .end local v1    # "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    :cond_0
    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isUssdSupported()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsUssdSupported:Z

    return v0
.end method

.method public isVideoSupported()Z
    .locals 1

    .line 59
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/CapabilityTracker;->isSupported(I)Z

    move-result v0

    return v0
.end method

.method public isVideoSupportedOverWifi()Z
    .locals 2

    .line 71
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/codeaurora/ims/CapabilityTracker;->isSupportedOnRadioTech(II)Z

    move-result v0

    return v0
.end method

.method public isVoiceSupported()Z
    .locals 1

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/CapabilityTracker;->isSupported(I)Z

    move-result v0

    return v0
.end method

.method public isVoiceSupportedOverWifi()Z
    .locals 1

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lorg/codeaurora/ims/CapabilityTracker;->isSupportedOnRadioTech(II)Z

    move-result v0

    return v0
.end method

.method public removeCapability(II)V
    .locals 2
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 43
    new-instance v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;-><init>(II)V

    .line 44
    .local v0, "cp":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    iget-object v1, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lorg/codeaurora/ims/CapabilityTracker;->mCapabilityContainer:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    return-void
.end method

.method public setIsCallComposerSupported(Z)V
    .locals 0
    .param p1, "isSupported"    # Z

    .line 120
    iput-boolean p1, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsCallComposerSupported:Z

    .line 121
    return-void
.end method

.method public setIsUssdSupported(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 133
    iput-boolean p1, p0, Lorg/codeaurora/ims/CapabilityTracker;->mIsUssdSupported:Z

    .line 134
    return-void
.end method
