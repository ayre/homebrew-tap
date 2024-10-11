class Sf < Formula
    desc "Command line toolkit for Salesforce development"
    homepage "https://developer.salesforce.com/tools/salesforcecli"
    url "https://registry.npmjs.org/@salesforce/cli/-/cli-2.61.8.tgz"
    sha256 "6d7388565f83c15edd2ad05d1f42737de64680b8ea18a7f569435e93e00d6620"
  
    depends_on "node"
  
    def install
      system "npm", "install", *std_npm_args
      bin.install_symlink Dir["#{libexec}/bin/*"]
    end
  
    test do
      # add a meaningful test here, version isn't usually meaningful
      assert_match version.to_s, shell_output("#{bin}/sf --version")
    end
  end