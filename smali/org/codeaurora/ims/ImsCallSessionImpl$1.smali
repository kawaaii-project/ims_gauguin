.class Lorg/codeaurora/ims/ImsCallSessionImpl$1;
.super Landroid/os/Handler;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsCallSessionImpl;->startAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private numberOfAlerts:I

.field final synthetic this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 1
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 2838
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2839
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->numberOfAlerts:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 2841
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2853
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->numberOfAlerts:I

    .line 2854
    goto :goto_0

    .line 2843
    :pswitch_1
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->numberOfAlerts:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2844
    return-void

    .line 2846
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->removeMessages(I)V

    .line 2847
    const-wide/32 v1, 0x1b7740

    invoke-virtual {p0, v0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->sendEmptyMessageDelayed(IJ)Z

    .line 2848
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->this$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->access$1100(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 2849
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->numberOfAlerts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;->numberOfAlerts:I

    .line 2850
    nop

    .line 2859
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
