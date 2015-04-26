class Admeshgui < Formula
  homepage "https://github.com/vyvledav/ADMeshGUI"
  head "https://github.com/vyvledav/ADMeshGUI.git"

  env :std

  depends_on "admesh"
  depends_on "stlsplit"
  depends_on "qt5"
  depends_on "gettext"

  def install
    system "qmake", "LIBS+=-L#{HOMEBREW_PREFIX}/opt/admesh/lib -L#{HOMEBREW_PREFIX}/opt/stlsplit/lib -L#{HOMEBREW_PREFIX}/opt/gettext/lib", "QMAKE_CXXFLAGS+=-I#{HOMEBREW_PREFIX}/opt/gettext/include"
    system "make"
    system "ln", "-s", "../admeshgui.app/Contents/MacOS/admeshgui", "admeshgui"
    prefix.install "admeshgui.app"
    bin.install "admeshgui"
  end

  test do
    system "true"
  end
end
