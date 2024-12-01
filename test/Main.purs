module Test.Main
  ( main
  ) where

import Prelude (Unit, ($))

import Effect (Effect)
import Test.Spec (describe, it)
import Test.Spec.Reporter.Console (consoleReporter)
import Test.Spec.Runner.Node (runSpecAndExitProcess)

import Node.FS.Extra (copy)

main :: Effect Unit
main = runSpecAndExitProcess [ consoleReporter ] $ do
  describe "node-fs-extra" do
    it "copies a directory" do
      copy "test/src_dir" "test/dest_dir"
