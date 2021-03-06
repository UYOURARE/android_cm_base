.class public abstract Landroid/media/session/ISessionCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionCallback.java"

# interfaces
.implements Landroid/media/session/ISessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionCallback"

.field static final TRANSACTION_getRemoteControlClientNowPlayingEntries:I = 0x11

.field static final TRANSACTION_onAdjustVolume:I = 0x14

.field static final TRANSACTION_onCommand:I = 0x1

.field static final TRANSACTION_onCustomAction:I = 0x13

.field static final TRANSACTION_onFastForward:I = 0xc

.field static final TRANSACTION_onMediaButton:I = 0x2

.field static final TRANSACTION_onNext:I = 0xa

.field static final TRANSACTION_onPause:I = 0x8

.field static final TRANSACTION_onPlay:I = 0x3

.field static final TRANSACTION_onPlayFromMediaId:I = 0x4

.field static final TRANSACTION_onPlayFromSearch:I = 0x5

.field static final TRANSACTION_onPlayFromUri:I = 0x6

.field static final TRANSACTION_onPrevious:I = 0xb

.field static final TRANSACTION_onRate:I = 0x12

.field static final TRANSACTION_onRewind:I = 0xd

.field static final TRANSACTION_onSeekTo:I = 0xe

.field static final TRANSACTION_onSetVolumeTo:I = 0x15

.field static final TRANSACTION_onSkipToTrack:I = 0x7

.field static final TRANSACTION_onStop:I = 0x9

.field static final TRANSACTION_setRemoteControlClientBrowsedPlayer:I = 0xf

.field static final TRANSACTION_setRemoteControlClientPlayItem:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.session.ISessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.media.session.ISessionCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/session/ISessionCallback;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/media/session/ISessionCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/session/ISessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_0
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_1
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ResultReceiver;

    :goto_1
    invoke-virtual {p0, v6, v8, v9}, Landroid/media/session/ISessionCallback$Stub;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    const/4 v10, 0x1

    return v10

    :cond_0
    const/4 v8, 0x0

    .local v8, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    .end local v8    # "_arg1":Landroid/os/Bundle;
    :cond_1
    const/4 v9, 0x0

    .local v9, "_arg2":Landroid/os/ResultReceiver;
    goto :goto_1

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":Landroid/os/ResultReceiver;
    :sswitch_2
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ResultReceiver;

    :goto_3
    invoke-virtual {p0, v1, v7, v9}, Landroid/media/session/ISessionCallback$Stub;->onMediaButton(Landroid/content/Intent;ILandroid/os/ResultReceiver;)V

    const/4 v10, 0x1

    return v10

    .end local v7    # "_arg1":I
    :cond_2
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/content/Intent;
    goto :goto_2

    .end local v1    # "_arg0":Landroid/content/Intent;
    .restart local v7    # "_arg1":I
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "_arg2":Landroid/os/ResultReceiver;
    goto :goto_3

    .end local v7    # "_arg1":I
    .end local v9    # "_arg2":Landroid/os/ResultReceiver;
    :sswitch_3
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPlay()V

    const/4 v10, 0x1

    return v10

    :sswitch_4
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    :goto_4
    invoke-virtual {p0, v6, v8}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v10, 0x1

    return v10

    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/os/Bundle;
    goto :goto_4

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :sswitch_5
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    :goto_5
    invoke-virtual {p0, v6, v8}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v10, 0x1

    return v10

    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/os/Bundle;
    goto :goto_5

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :sswitch_6
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_7

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    :goto_7
    invoke-virtual {p0, v5, v8}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    const/4 v10, 0x1

    return v10

    :cond_6
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/net/Uri;
    goto :goto_6

    .end local v5    # "_arg0":Landroid/net/Uri;
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/os/Bundle;
    goto :goto_7

    .end local v8    # "_arg1":Landroid/os/Bundle;
    :sswitch_7
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .local v2, "_arg0":J
    invoke-virtual {p0, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onSkipToTrack(J)V

    const/4 v10, 0x1

    return v10

    .end local v2    # "_arg0":J
    :sswitch_8
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPause()V

    const/4 v10, 0x1

    return v10

    :sswitch_9
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onStop()V

    const/4 v10, 0x1

    return v10

    :sswitch_a
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onNext()V

    const/4 v10, 0x1

    return v10

    :sswitch_b
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPrevious()V

    const/4 v10, 0x1

    return v10

    :sswitch_c
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onFastForward()V

    const/4 v10, 0x1

    return v10

    :sswitch_d
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onRewind()V

    const/4 v10, 0x1

    return v10

    :sswitch_e
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .restart local v2    # "_arg0":J
    invoke-virtual {p0, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onSeekTo(J)V

    const/4 v10, 0x1

    return v10

    .end local v2    # "_arg0":J
    :sswitch_f
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->setRemoteControlClientBrowsedPlayer()V

    const/4 v10, 0x1

    return v10

    :sswitch_10
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg1":I
    invoke-virtual {p0, v2, v3, v7}, Landroid/media/session/ISessionCallback$Stub;->setRemoteControlClientPlayItem(JI)V

    const/4 v10, 0x1

    return v10

    .end local v2    # "_arg0":J
    .end local v7    # "_arg1":I
    :sswitch_11
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->getRemoteControlClientNowPlayingEntries()V

    const/4 v10, 0x1

    return v10

    :sswitch_12
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_8

    sget-object v10, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Rating;

    :goto_8
    invoke-virtual {p0, v4}, Landroid/media/session/ISessionCallback$Stub;->onRate(Landroid/media/Rating;)V

    const/4 v10, 0x1

    return v10

    :cond_8
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/media/Rating;
    goto :goto_8

    .end local v4    # "_arg0":Landroid/media/Rating;
    :sswitch_13
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_9

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    :goto_9
    invoke-virtual {p0, v6, v8}, Landroid/media/session/ISessionCallback$Stub;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v10, 0x1

    return v10

    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Landroid/os/Bundle;
    goto :goto_9

    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :sswitch_14
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionCallback$Stub;->onAdjustVolume(I)V

    const/4 v10, 0x1

    return v10

    .end local v0    # "_arg0":I
    :sswitch_15
    const-string v10, "android.media.session.ISessionCallback"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionCallback$Stub;->onSetVolumeTo(I)V

    const/4 v10, 0x1

    return v10

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
