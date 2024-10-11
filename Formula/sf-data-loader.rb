cask "sf-data-loader" do
    version "62.0.1"
    sha256 ""
  
    url "https://a.sfdcstatic.com/developer-website/media/dataloader/dataloader_v#{version}.zip"
    name "Data import/export in Salesforce"
    desc ""
    homepage "https://developer.salesforce.com/tools/data-loader"
  
    depends_on formula: "openjdk" => :recommended
    auto_updates false

    installer script: {
        executable: "install.command"
        must_succeed: true
    }
  end