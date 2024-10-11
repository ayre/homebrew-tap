class SfCli < Formula
    desc "An example formula"
    homepage "https://example.com"
    url "https://registry.npmjs.org/@salesforce/cli/-/cli-2.61.8.tgz"
    sha256 "df80fec6fd420f40a703ece40718a1d6f22cafee"
  
    depends_on "node"
    # uncomment if there is a native addon inside the dependency tree
    # depends_on "python" => :build
  
    def install
      system "npm", "install", *std_npm_args
      bin.install_symlink Dir["#{libexec}/bin/*"]
    end
  
    test do
      # add a meaningful test here, version isn't usually meaningful
      assert_match version.to_s, shell_output("#{bin}/foo --version")
    end
  end