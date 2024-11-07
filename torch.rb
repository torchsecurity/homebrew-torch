# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Torch < Formula
  desc "Keep your secrets safe"
  homepage "https://github.com/torchsecurity/torch-secret-analyzer"
  version "0.1.1"

  on_macos do
    on_intel do
      url "https://github.com/torchsecurity/torch-secret-analyzer/releases/download/v0.1.1/torch_0.1.1_darwin_amd64.tar.gz"
      sha256 "60aa0b6196a3b6759623dac0a8891f8b15099eaa7ca6699ed1922296c62973f9"

      def install
        bin.install "torch"
      end
    end
    on_arm do
      url "https://github.com/torchsecurity/torch-secret-analyzer/releases/download/v0.1.1/torch_0.1.1_darwin_arm64.tar.gz"
      sha256 "5acc7f8581ab48524ceef965445a7fb2c51eedee8c34a310024fa414ec650683"

      def install
        bin.install "torch"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/torchsecurity/torch-secret-analyzer/releases/download/v0.1.1/torch_0.1.1_linux_amd64.tar.gz"
        sha256 "8f6510723c78f13ba16cf546b7627cd3488886593877d3dcd64a45473f50c0a7"

        def install
          bin.install "torch"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/torchsecurity/torch-secret-analyzer/releases/download/v0.1.1/torch_0.1.1_linux_arm64.tar.gz"
        sha256 "3730c3dc0103d29fc0ad3cd4ed10aa90f5de0b26ce5306c630dca4424dd2fda4"

        def install
          bin.install "torch"
        end
      end
    end
  end

  test do
    system "#{bin}/torch --version"
  end
end
