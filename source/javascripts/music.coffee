window.Music = class Music
  constructor: ->

  numeralFlat=["I","IIb","II","IIIb","III","IV","Vb","V","VIb","VI","VIIb","VII"]
  numeralSharp=["I","I#","II","II#","III","IV","IV#","V","V#","VI","VI#","VII"]
  flat=["Ab","A","Bb","B","C","Db","D","Eb","E","F","Gb","G"]
  sharp=["G#","A","A#","B","C","C#","D","D#","E","F","F#","G"]

  bluesScaleMinor:   (root, display = "flat") ->
    if display is "flat" or "sharp"
      rootIndex = flat.indexOf(root)
    else
      rootIndex = 0

    I = rootIndex
    IIIb = rootIndex + 3
    IV = rootIndex + 5
    Vb = rootIndex + 6
    V = rootIndex + 7
    VIIb = rootIndex + 10

    notes = [I,IIIb, IV, Vb, V,VIIb]

    for note, i in notes
      if note > 12
        notes[i] = note - 12

    notes = setDisplayType notes, display
    scale = {I:notes[0], IIIb:notes[1], IV:notes[2], Vb:notes[3], V:notes[4], VIIb:notes[5]}

  toFlat = (scale) ->
    for note, i in scale
      scale[i] = flat[note]

  toSharp = (scale) ->
    for note, i in scale
      scale[i] = sharp[note]

  toNumeralFlat = (scale) ->
    for note, i in scale
      scale[i] = numeralFlat[note]

  toNumeralSharp = (scale) ->
    for note, i in scale
      scale[i] = numeralSharp[note]

  setDisplayType = (scale, display) ->
    switch display
      when "flat" then toFlat scale
      when "sharp" then toSharp scale
      when "numeralFlat" then toNumeralFlat scale
      when "numeralSharp" then toNumeralSharp scale
