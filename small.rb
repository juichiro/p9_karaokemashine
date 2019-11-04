#小さくつくる
#2あげる→完成
NOTE = ['C','C#','D','D#','E','F','F#','G','G#','A','A#','B'].freeze
melody = 'C D E|' #expected D E F#
melody_array = melody.split('')#split('')で分割してjoin('')でもとに戻せば良さそう。
changed_melody = []
melody_array.each do |note|
  if index = NOTE.index(note) #noteがアルファベットの時だけ
    note = NOTE[index + 2] #2キーあげるので+2している
  end 
changed_melody << note 
end 

puts changed_melody.join('')

#返還前の音のindexと変換するキーの数が13以上の時には％１２して最終的なindexを取得する。
#-13以上の時は、%-12する。

melody = 'C C C|' #expected B|
melody_array = melody.split('')#split('')で分割してjoin('')でもとに戻せば良さそう。
gap = 7
changed_melody = []
melody_array.each do |note|
    if index = NOTE.index(note) #noteがアルファベットの時だけ
      if (index + gap) >= 13 
         note = NOTE[(index + gap) % 12]
      elsif index + gap <= -13
         note = NOTE[(index + gap) % -12]
      else
         note = NOTE[index + gap]
      end 
    end
changed_melody << note 
end 

puts changed_melody.join('')


