# $NetBSD: buildlink3.mk,v 1.45 2021/01/01 08:24:51 ryoon Exp $

BUILDLINK_TREE+=	libkdeedu

.if !defined(LIBKDEEDU_BUILDLINK3_MK)
LIBKDEEDU_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libkdeedu+=	libkdeedu>=4.8.0
BUILDLINK_ABI_DEPENDS.libkdeedu?=	libkdeedu>=4.14.3nb25
BUILDLINK_PKGSRCDIR.libkdeedu?=		../../misc/libkdeedu

.include "../../x11/kdelibs4/buildlink3.mk"
.endif	# LIBKDEEDU_BUILDLINK3_MK

BUILDLINK_TREE+=	-libkdeedu
