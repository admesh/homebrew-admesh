class Admeshgui < Formula
  homepage "https://github.com/vyvledav/ADMeshGUI"
  head "https://github.com/vyvledav/ADMeshGUI.git"

  env :std

  depends_on "admesh"
  depends_on "stlsplit"
  depends_on "qt5"
  depends_on "gettext"

  def install
    system "qmake"
    system "make"
    prefix.install "ADMeshGUI.app"
    mv "Distribution/brewrun.sh", "admeshgui"
    system "chmod", "+x", "admeshgui"
    bin.install "admeshgui"
  end

  test do
    system "true"
  end
end
