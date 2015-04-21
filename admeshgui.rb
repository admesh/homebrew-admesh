class Admeshgui < Formula
  homepage "https://github.com/vyvledav/ADMeshGUI"
  head "https://github.com/vyvledav/ADMeshGUI.git"

  env :std

  depends_on "admesh"
  depends_on "stlsplit"
  depends_on "qt5"
  depends_on "gettext"

  def install
    system "qmake", "LIBS+=-L#{HOMEBREW_PREFIX}/Cellar/admesh/0.98.1/lib -L#{HOMEBREW_PREFIX}/Cellar/stlsplit/1.1/lib -L#{HOMEBREW_PREFIX}/opt/gettext/lib", "QMAKE_CXXFLAGS+=-I#{HOMEBREW_PREFIX}/opt/gettext/include"
    system "make"
    bin.install "admeshgui.app/Contents/MacOS/admeshgui"
  end

  test do
    system "true"
  end
end
