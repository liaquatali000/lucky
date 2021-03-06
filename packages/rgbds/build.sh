TERMUX_PKG_HOMEPAGE=https://rednex.github.io/rgbds/
TERMUX_PKG_DESCRIPTION="Rednex Game Boy Development System"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_VERSION=0.3.8
TERMUX_PKG_REVISION=1
TERMUX_PKG_SHA256=ec47b7d7a1b03534ab14b261d13511a18c8b1c3ebddea414e7034496f3423c05
TERMUX_PKG_SRCURL=https://github.com/rednex/rgbds/releases/download/v${TERMUX_PKG_VERSION}/rgbds-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_DEPENDS="libpng"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="PREFIX=${TERMUX_PREFIX} Q= STRIP="

termux_step_pre_configure() {
	CFLAGS+=" $LDFLAGS"
}
