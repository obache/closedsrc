# $NetBSD: buildlink3.mk,v 1.4 2018/01/07 13:04:08 rillig Exp $

BUILDLINK_TREE+=	netbsd-iscsi-lib

.if !defined(NETBSD_ISCSI_LIB_BUILDLINK3_MK)
NETBSD_ISCSI_LIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.netbsd-iscsi-lib+=	netbsd-iscsi-lib>=20111006
BUILDLINK_ABI_DEPENDS.netbsd-iscsi-lib+=	netbsd-iscsi-lib>=20111006
BUILDLINK_PKGSRCDIR.netbsd-iscsi-lib?=		../../devel/netbsd-iscsi-lib
.endif # NETBSD_ISCSI_LIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-netbsd-iscsi-lib
