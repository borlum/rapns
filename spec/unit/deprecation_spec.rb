require 'unit_spec_helper'

describe Rapns::Deprecation do
  it 'prints a warning' do
    STDERR.should_receive(:puts).with("DEPRECATION WARNING: msg")
    Rapns::Deprecation.warn("msg")
  end

  it 'does not print a warning when silenced' do
    STDERR.should_not_receive(:puts)
    Rapns::Deprecation.silenced do
      Rapns::Deprecation.warn("msg")
    end
  end
end
