# $NetBSD: Makefile,v 1.48 2021/01/01 09:52:35 ryoon Exp $

DISTNAME=	audiocd-kio-16.08.0
PKGREVISION=	25
CATEGORIES=	multimedia
COMMENT=	Kioslave for accessing audio CDs
MASTER_SITES=	${MASTER_SITE_KDE:=applications/16.08.0/src/}

.include "../../meta-pkgs/kde4/Makefile.kde4"

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../audio/cdparanoia/buildlink3.mk"
.include "../../audio/flac/buildlink3.mk"
.include "../../audio/libvorbis/buildlink3.mk"
.include "../../multimedia/libkcddb/buildlink3.mk"
.include "../../multimedia/libkcompactdisc/buildlink3.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
