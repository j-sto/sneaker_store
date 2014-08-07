require 'rspec'
require 'brand'
require 'style'

describe Brand do
it "should initialize when a shoe brand or HQ is input" do
  test_brand = Brand.new({:name => 'Nike', :headquarters => 'Beaverton, OR'})
  expect(test_brand).to be_an_instance_of Brand
  end

it "it should add a style to the brand" do
  test_brand = Brand.new({:name => 'Nike'})
  test_style = Style.new({:name => 'Air Tech Challenge', :color => 'Obsidian/Black'})
  test_brand.add_style(test_style)
  expect(test_brand.style).to eq [test_style]
  end
end

describe Style do
  it "should initialize when a style name or color is entered" do
    test_style = Style.new ({:name => 'Air Tech Challenge', :color => 'Obsidian/Black'})
    expect(test_style).to be_an_instance_of Style
  end
end
