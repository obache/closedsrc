# $NetBSD: Makefile,v 1.26 2020/11/25 13:26:21 wiz Exp $

DISTNAME=	zziplib-0.13.71
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_GITHUB:=gdraheim/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/gdraheim/zziplib
COMMENT=	Library for ZIP archive handling
LICENSE=	gnu-lgpl-v2 OR mpl-1.1

USE_LIBTOOL=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-zlib=${BUILDLINK_PREFIX.zlib}
CONFIGURE_ARGS+=	--disable-builddir

BUILD_DIRS=		zzip zzipwrap bins

TEST_TARGET=		check

.include "../../devel/zlib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
