.class public Lorg/codeaurora/ims/ImsServiceStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceStateReceiver.java"


# static fields
.field private static CHANNEL_ID:Ljava/lang/String; = null

.field private static final IMS_HD_ICON:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceStateReceiver"

.field private static final SHOW_HD_ICON:Ljava/lang/String; = "config_update_service_status"

.field private static final SHOW_VOLTE_ICON:Ljava/lang/String; = "config_update_volte_icon"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationMgr:Landroid/app/NotificationManager;

.field private mPhoneId:I

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

.field private mShowHDIcon:Z

.field private mShowVOLTEIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "ims_services_channel_"

    sput-object v0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->CHANNEL_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)V
    .locals 1
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phoneId"    # I

    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowVOLTEIcon:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 58
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 59
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    .line 60
    iput p3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    .line 61
    return-void
.end method

.method private isMiuiRom()Z
    .locals 2

    .line 91
    const-string v0, "ro.miui.ui.version.name"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "ro.miui.ui.version.code"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 91
    :goto_1
    return v0
.end method

.method public static overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification$Builder;

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, "extras":Landroid/os/Bundle;
    nop

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    const-string v2, "android.substName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 101
    return-void
.end method

.method private shallShowHDIcon()Z
    .locals 9

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "showHDIcon":Z
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    const-string v2, "telephony_subscription_service"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 158
    .local v1, "subManager":Landroid/telephony/SubscriptionManager;
    const-string v2, "ImsServiceStateReceiver"

    if-nez v1, :cond_0

    .line 159
    const-string v3, "shallShowHDIcon SubscriptionManager is null"

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return v0

    .line 163
    :cond_0
    iget v3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 164
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v3, :cond_1

    .line 165
    const-string v4, "shallShowHDIcon SubscriptionInfo is null"

    invoke-static {v2, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return v0

    .line 169
    :cond_1
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 171
    .local v4, "subId":I
    invoke-virtual {v1, v4}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 172
    const-string v5, "shallShowHDIcon subId is not active"

    invoke-static {v2, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return v0

    .line 175
    :cond_2
    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    const-string v6, "carrier_config"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CarrierConfigManager;

    .line 177
    .local v5, "mgr":Landroid/telephony/CarrierConfigManager;
    const/4 v6, 0x0

    .line 178
    .local v6, "b":Landroid/os/PersistableBundle;
    if-eqz v5, :cond_3

    .line 179
    invoke-virtual {v5, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v6

    .line 181
    :cond_3
    if-eqz v6, :cond_4

    .line 182
    const-string v7, "config_update_service_status"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 183
    const-string v7, "config_update_volte_icon"

    invoke-virtual {v6, v7, v8}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowVOLTEIcon:Z

    .line 185
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "shallShowHDIcon config showHDIcon : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " phoneId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return v0
.end method

.method private showHDIcon(Z)V
    .locals 8
    .param p1, "showHDIcon"    # Z

    .line 104
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    const-string v1, "ImsServiceStateReceiver"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 108
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 109
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 108
    invoke-virtual {v0, v3, v2, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "notification"

    .line 110
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showHDIcon Package name not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    if-nez v0, :cond_2

    .line 117
    const-string v0, "showHDIcon unable to show HD icon due to NotificationManager is null"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void

    .line 121
    :cond_2
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    .line 122
    if-eqz p1, :cond_5

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/codeaurora/ims/ImsServiceStateReceiver;->CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 125
    .local v0, "channel":Landroid/app/NotificationChannel;
    if-nez v0, :cond_3

    .line 126
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f030009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "name":Ljava/lang/CharSequence;
    const/4 v3, 0x2

    .line 128
    .local v3, "importance":I
    new-instance v4, Landroid/app/NotificationChannel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/codeaurora/ims/ImsServiceStateReceiver;->CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v0, v4

    .line 129
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v4, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 131
    .end local v1    # "name":Ljava/lang/CharSequence;
    .end local v3    # "importance":I
    :cond_3
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 133
    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowVOLTEIcon:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 134
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f030003

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    add-int/2addr v7, v4

    .line 136
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    .line 134
    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 137
    const v3, 0x7f020002

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 139
    :cond_4
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f030002

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    add-int/2addr v7, v4

    .line 141
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    .line 139
    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 142
    const v3, 0x7f020001

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 144
    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 145
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 146
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 147
    .local v2, "notification":Landroid/app/Notification;
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 148
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v4, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    add-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 149
    .end local v0    # "channel":Landroid/app/NotificationChannel;
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    .end local v2    # "notification":Landroid/app/Notification;
    goto :goto_2

    .line 150
    :cond_5
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    add-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 152
    :goto_2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 192
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mContext:Landroid/content/Context;

    const-string v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 194
    .local v0, "subManager":Landroid/telephony/SubscriptionManager;
    iget v1, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 195
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    const-string v2, "ImsServiceStateReceiver"

    if-nez v1, :cond_0

    .line 196
    const-string v3, "SimStateReceiver onReceive subId is not yet active"

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    return-void

    .line 200
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 201
    .local v3, "subId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x1

    const-string v6, "android.telephony.extra.SUBSCRIPTION_INDEX"

    if-eqz v4, :cond_1

    .line 202
    const/4 v4, 0x0

    const-string v7, "android.telephony.extra.SIM_STATE"

    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 204
    .local v4, "simStatus":I
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 206
    .local v5, "intentSubId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SimStateReceiver sub id from intent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " simStatus : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    if-ne v5, v3, :cond_2

    const/16 v2, 0xa

    if-ne v2, v4, :cond_2

    .line 209
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v2

    iget-object v6, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v6

    invoke-virtual {p0, v2, v6}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->updateHDIcon(ZZ)V

    .line 212
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->onIccLoaded()V

    goto :goto_0

    .line 214
    .end local v4    # "simStatus":I
    .end local v5    # "intentSubId":I
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 215
    const-string v7, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 216
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 218
    .local v4, "intentSubId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received carrier config change, sub id from intent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    if-ne v3, v4, :cond_3

    .line 220
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupported()Z

    move-result v2

    iget-object v5, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupported()Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->updateHDIcon(ZZ)V

    .line 221
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->onCarrierConfigChanged()V

    goto :goto_1

    .line 214
    .end local v4    # "intentSubId":I
    :cond_2
    :goto_0
    nop

    .line 224
    :cond_3
    :goto_1
    return-void
.end method

.method public updateHDIcon(ZZ)V
    .locals 3
    .param p1, "isVideoCapable"    # Z
    .param p2, "isVoiceCapable"    # Z

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHDIcon isVideo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isVoice : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " show HD Icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mShowHDIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceStateReceiver"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceStateReceiver;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getFeatureState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    .line 77
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->shallShowHDIcon()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 78
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->showHDIcon(Z)V

    goto :goto_0

    .line 81
    :cond_4
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->showHDIcon(Z)V

    goto :goto_0

    .line 85
    :cond_5
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceStateReceiver;->showHDIcon(Z)V

    .line 87
    :goto_0
    return-void
.end method
