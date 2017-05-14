require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  let(:arg) { '1, 1, 1' }
  let(:triangle) { Triangle.new(arg.split(' ')) }
  subject { triangle.which_category? }
  context 'must be equilateral' do
    let(:arg) { '2, 3, 4' }
    it { expect(subject).to eq '不等辺三角形ですね！' }
  end
  context 'must be equilateral' do
    let(:arg) { '2, 2, 1' }
    it { expect(subject).to eq '二等辺三角形ですね！' }
  end
  context 'must be equilateral' do
    let(:arg) { '1, 1, 1' }
    it { expect(subject).to eq '正三角形ですね！' }
  end
  context 'must be equilateral' do
    let(:arg) { '1, 2, 3' }
    it { expect(subject).to eq '三角形じゃないです＞＜' }
  end
end
