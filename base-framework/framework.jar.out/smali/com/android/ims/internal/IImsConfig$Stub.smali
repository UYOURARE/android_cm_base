.class public abstract Lcom/android/ims/internal/IImsConfig$Stub;
.super Landroid/os/Binder;
.source "IImsConfig.java"

# interfaces
.implements Lcom/android/ims/internal/IImsConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsConfig"

.field static final TRANSACTION_getFeatureValue:I = 0x5

.field static final TRANSACTION_getProvisionedStringValue:I = 0x2

.field static final TRANSACTION_getProvisionedValue_0:I = 0x1

.field static final TRANSACTION_getVideoQuality:I = 0x8

.field static final TRANSACTION_getVolteProvisioned_6:I = 0x7

.field static final TRANSACTION_setFeatureValue:I = 0x6

.field static final TRANSACTION_setProvisionedStringValue:I = 0x4

.field static final TRANSACTION_setProvisionedValue:I = 0x3

.field static final TRANSACTION_setVideoQuality:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.ims.internal.IImsConfig"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsConfig;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "com.android.ims.internal.IImsConfig"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsConfig;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/ims/internal/IImsConfig;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    :sswitch_0
    const-string v11, "com.android.ims.internal.IImsConfig"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_1
    const-string v11, "com.android.ims.internal.IImsConfig"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsConfig$Stub;->getProvisionedValue(I)I

    move-result v8

    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v0    # "_arg0":I
    .end local v8    # "_result":I
    :sswitch_2
    const-string v11, "com.android.ims.internal.IImsConfig"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/IImsConfig$Stub;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    .end local v0    # "_arg0":I
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string v11, "com.android.ims.internal.IImsConfig"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/android/ims/internal/IImsConfig$Stub;->setProvisionedValue(II)I

    move-result v8

    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v8    # "_result":I
    :sswitch_4
    const-string v11, "com.android.ims.internal.IImsConfig"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Lcom/android/ims/internal/IImsConfig$Stub;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result v8

    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":I
    :sswitch_5
    const-string v11, "com.android.ims.internal.IImsConfig"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v6

    .local v6, "_arg2":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p0, v0, v2, v6}, Lcom/android/ims/internal/IImsConfig$Stub;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V

    const/4 v11, 0x1

    return v11

    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v6    # "_arg2":Lcom/android/ims/ImsConfigListener;
    :sswitch_6
    const-string v11, "com.android.ims.internal.IImsConfig"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v7

    .local v7, "_arg3":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p0, v0, v2, v5, v7}, Lcom/android/ims/internal/IImsConfig$Stub;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    const/4 v11, 0x1

    return v11

    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v7    # "_arg3":Lcom/android/ims/ImsConfigListener;
    :sswitch_7
    const-string v11, "com.android.ims.internal.IImsConfig"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/ims/internal/IImsConfig$Stub;->getVolteProvisioned()Z

    move-result v10

    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_0

    const/4 v11, 0x1

    :goto_0
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .end local v10    # "_result":Z
    :sswitch_8
    const-string v11, "com.android.ims.internal.IImsConfig"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v1

    .local v1, "_arg0":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/IImsConfig$Stub;->getVideoQuality(Lcom/android/ims/ImsConfigListener;)V

    const/4 v11, 0x1

    return v11

    .end local v1    # "_arg0":Lcom/android/ims/ImsConfigListener;
    :sswitch_9
    const-string v11, "com.android.ims.internal.IImsConfig"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v3

    .local v3, "_arg1":Lcom/android/ims/ImsConfigListener;
    invoke-virtual {p0, v0, v3}, Lcom/android/ims/internal/IImsConfig$Stub;->setVideoQuality(ILcom/android/ims/ImsConfigListener;)V

    const/4 v11, 0x1

    return v11

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
