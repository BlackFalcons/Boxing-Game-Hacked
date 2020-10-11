movie 'boxing_gd.swf' // flash 9, total frames: 21, frame rate: 12 fps, 600x380 px
  
  fileAttributes attrHasMetadata
  
  metadata '<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"> <rdf:Description rdf:about="" xmlns:xmp="http://ns.adobe.com/xap/1.0/"> <xmp:CreatorTool>Adobe Flash CS4 Professional</xmp:CreatorTool> <xmp:CreateDate>2010-08-26T17:34:51+09:00</xmp:CreateDate> <xmp:MetadataDate>2013-05-03T14:43:02+09:00</xmp:MetadataDate> <xmp:ModifyDate>2013-05-03T14:43:02+09:00</xmp:ModifyDate> </rdf:Description> <rdf:Description rdf:about="" xmlns:dc="http://purl.org/dc/elements/1.1/"> <dc:format>application/x-shockwave-flash</dc:format> </rdf:Description> <rdf:Description rdf:about="" xmlns:xmpMM="http://ns.adobe.com/xap/1.0/mm/" xmlns:stRef="http://ns.adobe.com/xap/1.0/sType/ResourceRef#"> <xmpMM:DerivedFrom rdf:parseType="Resource"> <stRef:instanceID>xmp.iid:E17125958754E0118C05CF7A74DAB1ED</stRef:instanceID> <stRef:documentID>xmp.did:E17125958754E0118C05CF7A74DAB1ED</stRef:documentID> <stRef:originalDocumentID>xmp.did:ECD8834AC508E0118A78D08D34922CF7</stRef:originalDocumentID> </xmpMM:DerivedFrom> <xmpMM:DocumentID>xmp.did:EE0CB9B7B3B3E211ABAFEC3E704C0CE0</xmpMM:DocumentID> <xmpMM:InstanceID>xmp.iid:EE0CB9B7B3B3E211ABAFEC3E704C0CE0</xmpMM:InstanceID> <xmpMM:OriginalDocumentID>xmp.did:ECD8834AC508E0118A78D08D34922CF7</xmpMM:OriginalDocumentID> </rdf:Description> </rdf:RDF> '
  
  exportAssets
    1 as 'SHU1.WAV'
  end // of exportAssets
  
  exportAssets
    2 as 'SHU0.WAV'
  end // of exportAssets
  
  exportAssets
    3 as 'levup.wav'
  end // of exportAssets
  
  exportAssets
    4 as 'levdown.wav'
  end // of exportAssets
  
  exportAssets
    5 as 'jingle-100511-surprise04-mp3.mp3'
  end // of exportAssets
  
  exportAssets
    6 as 'jingle-100511-fanfare03-mp3.mp3'
  end // of exportAssets
  
  exportAssets
    7 as 'BISI3.WAV'
  end // of exportAssets
  
  exportAssets
    8 as 'BISI0.WAV'
  end // of exportAssets
  
  exportAssets
    9 as 'BISI_.WAV'
  end // of exportAssets
  
  exportAssets
    10 as 'GONG.WAV'
  end // of exportAssets

  frame 0
    constants 'sounds', 'start', 'stop', 'soundObject', 'volume_level', 'setVolume', 'mcVolume', 'gotoAndStop', 'Sound', 'Object', 'soundsFile', '', 'bisi3.wav', 'bisi0.wav', 'bisi_.wav', 'shu0.wav', 'levdown.wav', 'levup.wav', 'jingle-100511-surprise04-mp3.mp3', 'jingle-100511-fanfare03-mp3.mp3', 'i', 'length', 'sndClip', 'this', 'createEmptyMovieClip', 'substring', 'attachSound', 'set_volume', 'btVolume', 'onPress', 'v'  
    function2 start_sound (r:1='sndfile') ()
      push 0.0, 'sounds'
      getVariable
      push r:sndfile
      getMember
      push 'start'
      callMethod
      pop
    end // of function start_sound

    function2 loop_sound (r:1='sndfile') ()
      push 999, 0.0, 2, 'sounds'
      getVariable
      push r:sndfile
      getMember
      push 'start'
      callMethod
      pop
    end // of function loop_sound

    function2 stop_sound (r:1='sndfile') ()
      push 0.0, 'sounds'
      getVariable
      push r:sndfile
      getMember
      push 'stop'
      callMethod
      pop
    end // of function stop_sound

    function stop_all_sound ()
      push 0.0, 'soundObject'
      getVariable
      push 'stop'
      callMethod
      pop
    end // of function stop_all_sound

    function2 set_volume (r:1='v') ()
      push r:v, 0.0
      lessThan
      not
      branchIfTrue label1
      push 0.0
      setRegister r:v
      pop
     label1:
      push r:v, 3
      greaterThan
      not
      branchIfTrue label2
      push 3
      setRegister r:v
      pop
     label2:
      push 'volume_level', r:v
      setVariable
      push r:v, 33
      multiply
      push 1, 'soundObject'
      getVariable
      push 'setVolume'
      callMethod
      pop
      push 1, r:v
      add
      push 1, 'mcVolume'
      getVariable
      push 'gotoAndStop'
      callMethod
      pop
    end // of function set_volume

    push 'soundObject', 0.0, 'Sound'
    new
    setVariable
    push 'sounds', 0.0, 'Object'
    new
    varEquals
    push 'soundsFile', '', 'bisi3.wav', 'bisi0.wav', 'bisi_.wav', 'shu0.wav', 'levdown.wav', 'levup.wav', 'jingle-100511-surprise04-mp3.mp3', 'jingle-100511-fanfare03-mp3.mp3', 9
    initArray
    varEquals
    push 'i', 0.0
    varEquals
   label3:
    push 'i'
    getVariable
    push 'soundsFile'
    getVariable
    push 'length'
    getMember
    lessThan
    not
    branchIfTrue label4
    push 'sndClip', 100, 'i'
    getVariable
    add
    push 'sndClip', 'i'
    getVariable
    add
    push 2, 'this'
    getVariable
    push 'createEmptyMovieClip'
    callMethod
    varEquals
    push 'sounds'
    getVariable
    push 'soundsFile'
    getVariable
    push 'i'
    getVariable
    getMember
    push 'length'
    getMember
    push 4
    subtract
    push 0.0, 2, 'soundsFile'
    getVariable
    push 'i'
    getVariable
    getMember
    push 'substring'
    callMethod
    push 'sndClip'
    getVariable
    push 1, 'Sound'
    new
    setMember
    push 'soundsFile'
    getVariable
    push 'i'
    getVariable
    getMember
    push 1, 'sounds'
    getVariable
    push 'soundsFile'
    getVariable
    push 'i'
    getVariable
    getMember
    push 'length'
    getMember
    push 4
    subtract
    push 0.0, 2, 'soundsFile'
    getVariable
    push 'i'
    getVariable
    getMember
    push 'substring'
    callMethod
    getMember
    push 'attachSound'
    callMethod
    pop
    push 'i', 'i'
    getVariable
    increment
    setVariable
    branch label3
   label4:
    push 1, 1, 'set_volume'
    callFunction
    pop
    push 'btVolume'
    getVariable
    push 'onPress'
    function ()
      push 'v', 'volume_level'
      getVariable
      push 1
      add
      setVariable
      push 'v'
      getVariable
      push 3
      greaterThan
      not
      branchIfTrue label5
      push 'v', 0.0
      setVariable
     label5:
      push 'v'
      getVariable
      push 1, 'set_volume'
      callFunction
      pop
    end // of function 

    setMember
  end // of frame 0

  defineMovieClip 16 // total frames: 4

    frame 3
      stop
    end // of frame 3
  end // of defineMovieClip 16

  frame 2
    constants 'onEnterFrame', 'getBytesLoaded', 'getBytesTotal'  
    stop
    push 'onEnterFrame'
    function ()
      push 0.0, 'getBytesLoaded'
      callFunction
      push 0.0, 'getBytesTotal'
      callFunction
      lessThan
      not
      not
      branchIfTrue label1
      push 'onEnterFrame'
      delete2
      pop
      play
     label1:
    end // of function 

    setVariable
  end // of frame 2

  defineMovieClip 21 // total frames: 8
  end // of defineMovieClip 21

  frame 5
    stop
  end // of frame 5

  defineMovieClip 24 // total frames: 1
  end // of defineMovieClip 24
  
  // unknown tag 88 length 103

  defineButton 30

    on overUpToOverDown,keyPress _UP
      push -1, 1, 'move_curs'
      callFunction
      pop
    end

    on overUpToOverDown,keyPress _DOWN
      push 1, 1, 'move_curs'
      callFunction
      pop
    end

    on keyPress _SPACE
      constants 'mcCurs', '_x'  
      push 'mcCurs'
      getVariable
      push '_x', 'mcCurs'
      getVariable
      push '_x'
      getMember
      push 8
      add
      setMember
      gotoFrame 1
      play
    end
  end // of defineButton 30

  defineMovieClip 32 // total frames: 1
  end // of defineMovieClip 32

  defineMovieClip 33 // total frames: 1
  end // of defineMovieClip 33

  defineMovieClip 34 // total frames: 5

    frame 0
      constants '', 'txt0', 'txt1', 'mcCurs', '_x', 'curs', '_y'  
      function2 init (r:2='t0', r:1='t1') ()
        push '', 7, TRUE
        setProperty
        push 'txt0', r:t0
        setVariable
        push 'txt1', r:t1
        setVariable
        push 'mcCurs'
        getVariable
        push '_x', -26
        setMember
      end // of function init

      function2 move_curs (r:1='a') ()
        push 'txt1'
        getVariable
        push ''
        equals
        not
        branchIfTrue label1
        push UNDEF
        return
       label1:
        push 'curs', 'curs'
        getVariable
        push r:a
        add
        setVariable
        push 'curs'
        getVariable
        push 0.0
        lessThan
        not
        branchIfTrue label2
        push 'curs', 0.0
        setVariable
       label2:
        push 'curs'
        getVariable
        push 1
        greaterThan
        not
        branchIfTrue label3
        push 'curs', 1
        setVariable
       label3:
        push 'mcCurs'
        getVariable
        push '_y', 'curs'
        getVariable
        push 20
        multiply
        setMember
      end // of function move_curs

      stop
      push '', 7, FALSE
      setProperty
      push 'curs', 0.0
      setVariable
    end // of frame 0

    frame 4
      push 'curs'
      getVariable
      push 1, '_parent'
      getVariable
      push 'after_select'
      callMethod
      pop
    end // of frame 4
  end // of defineMovieClip 34

  defineMovieClip 38 // total frames: 1
  end // of defineMovieClip 38

  defineMovieClip 40 // total frames: 1
  end // of defineMovieClip 40

  defineMovieClip 42 // total frames: 1
  end // of defineMovieClip 42

  defineMovieClip 54 // total frames: 16

    frame 0
      push '_parent'
      getVariable
      push 'count'
      getMember
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 54

  defineMovieClip 57 // total frames: 1
  end // of defineMovieClip 57

  defineMovieClip 59 // total frames: 1
  end // of defineMovieClip 59

  defineMovieClip 61 // total frames: 1
  end // of defineMovieClip 61

  defineMovieClip 63 // total frames: 1
  end // of defineMovieClip 63

  defineMovieClip 65 // total frames: 1
  end // of defineMovieClip 65

  defineMovieClip 67 // total frames: 96

    frame 0
      stop
      push '', 7, FALSE
      setProperty
    end // of frame 0

    frame 4
      constants 'count', '_parent'  
      push 'count', '_parent'
      getVariable
      push 'count'
      getMember
      setVariable
    end // of frame 4

    frame 6
      stop
    end // of frame 6

    frame 8
      gotoLabel 'left'
      play
    end // of frame 8

    frame 12
      constants 'count', '_parent'  
      push 'count', '_parent'
      getVariable
      push 'count'
      getMember
      setVariable
    end // of frame 12

    frame 14
      stop
    end // of frame 14

    frame 16
      gotoLabel 'right'
      play
    end // of frame 16

    frame 27
      push 0.0, '_parent'
      getVariable
      push 'play'
      callMethod
      pop
    end // of frame 27

    frame 29
      gotoFrame 0
    end // of frame 29

    frame 32
      play
      push '', 7, TRUE
      setProperty
    end // of frame 32

    frame 47
      push '_parent'
      getVariable
      push 'winner'
      getMember
      push 1
      equals
      not
      branchIfTrue label1
      gotoLabel 'wr'
      play
     label1:
    end // of frame 47

    frame 49
      stop
      push 0.0, '_parent'
      getVariable
      push 'play'
      callMethod
      pop
    end // of frame 49

    frame 54
      stop
      push 0.0, '_parent'
      getVariable
      push 'play'
      callMethod
      pop
    end // of frame 54

    frame 95
      gotoLabel 'title'
      play
    end // of frame 95
  end // of defineMovieClip 67

  defineMovieClip 68 // total frames: 1
  end // of defineMovieClip 68

  defineMovieClip 70 // total frames: 13

    frame 7
      constants '_parent', 'stop_all_sound', 'title_newgame', 'mcRef', '_visible', 'title', 'gotoAndPlay', '', 'Play', 'selecter', 'init'  
      function2 after_select ('curs') (r:1='_parent')
        push 0.0, r:_parent, '_parent'
        getMember
        push 'stop_all_sound'
        callMethod
        pop
        push 0.0, r:_parent, 'title_newgame'
        callMethod
        pop
      end // of function after_select

      stop
      push 'mcRef'
      getVariable
      push '_visible', TRUE
      setMember
      push 'title', 1, 'mcRef'
      getVariable
      push 'gotoAndPlay'
      callMethod
      pop
      push '', 'Play', 2, 'selecter'
      getVariable
      push 'init'
      callMethod
      pop
    end // of frame 7
  end // of defineMovieClip 70

  defineMovieClip 74 // total frames: 1
  end // of defineMovieClip 74

  defineMovieClip 78 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 78

  defineMovieClip 80 // total frames: 1
  end // of defineMovieClip 80

  defineMovieClip 81 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 81

  defineMovieClip 83 // total frames: 1
  end // of defineMovieClip 83

  defineMovieClip 85 // total frames: 1
  end // of defineMovieClip 85

  defineMovieClip 87 // total frames: 1
  end // of defineMovieClip 87

  defineMovieClip 89 // total frames: 1
  end // of defineMovieClip 89

  defineMovieClip 90 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'hair'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 90

  defineMovieClip 94 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 94

  defineMovieClip 96 // total frames: 1
  end // of defineMovieClip 96

  defineMovieClip 97 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 97

  defineMovieClip 101 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 101

  defineMovieClip 103 // total frames: 1
  end // of defineMovieClip 103

  defineMovieClip 104 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 104

  defineMovieClip 108 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 108

  defineMovieClip 110 // total frames: 1
  end // of defineMovieClip 110

  defineMovieClip 111 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 111

  defineMovieClip 114 // total frames: 3
  end // of defineMovieClip 114

  defineMovieClip 118 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 118

  defineMovieClip 120 // total frames: 1
  end // of defineMovieClip 120

  defineMovieClip 121 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 121

  defineMovieClip 125 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 125

  defineMovieClip 127 // total frames: 1
  end // of defineMovieClip 127

  defineMovieClip 128 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 128

  defineMovieClip 132 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 132

  defineMovieClip 134 // total frames: 1
  end // of defineMovieClip 134

  defineMovieClip 135 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 135

  defineMovieClip 139 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 139

  defineMovieClip 141 // total frames: 1
  end // of defineMovieClip 141

  defineMovieClip 142 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 142

  defineMovieClip 146 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 146

  defineMovieClip 148 // total frames: 1
  end // of defineMovieClip 148

  defineMovieClip 149 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 149

  defineMovieClip 153 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 153

  defineMovieClip 155 // total frames: 1
  end // of defineMovieClip 155

  defineMovieClip 156 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 156

  defineMovieClip 160 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 160

  defineMovieClip 162 // total frames: 1
  end // of defineMovieClip 162

  defineMovieClip 163 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 163

  defineMovieClip 167 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 167

  defineMovieClip 169 // total frames: 1
  end // of defineMovieClip 169

  defineMovieClip 170 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 170

  defineMovieClip 174 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 174

  defineMovieClip 176 // total frames: 1
  end // of defineMovieClip 176

  defineMovieClip 177 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 177

  defineMovieClip 179 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'hair'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 179

  defineMovieClip 183 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 183

  defineMovieClip 185 // total frames: 1
  end // of defineMovieClip 185

  defineMovieClip 186 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 186

  defineMovieClip 190 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 190

  defineMovieClip 192 // total frames: 1
  end // of defineMovieClip 192

  defineMovieClip 193 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 193

  defineMovieClip 195 // total frames: 3

    frame 2
      stop
    end // of frame 2
  end // of defineMovieClip 195

  defineMovieClip 199 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 199

  defineMovieClip 201 // total frames: 1
  end // of defineMovieClip 201

  defineMovieClip 202 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 202

  defineMovieClip 204 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'hair'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 204

  defineMovieClip 208 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 208

  defineMovieClip 210 // total frames: 1
  end // of defineMovieClip 210

  defineMovieClip 211 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 211

  defineMovieClip 215 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 215

  defineMovieClip 217 // total frames: 1
  end // of defineMovieClip 217

  defineMovieClip 218 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 218

  defineMovieClip 222 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 222

  defineMovieClip 224 // total frames: 1
  end // of defineMovieClip 224

  defineMovieClip 225 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 225

  defineMovieClip 227 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'hair'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 227

  defineMovieClip 231 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 231

  defineMovieClip 233 // total frames: 1
  end // of defineMovieClip 233

  defineMovieClip 234 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 234

  defineMovieClip 236 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'hair'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 236

  defineMovieClip 240 // total frames: 4

    frame 0
      push 2, '_parent'
      getVariable
      push 'col'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 240

  defineMovieClip 242 // total frames: 1
  end // of defineMovieClip 242

  defineMovieClip 243 // total frames: 6

    frame 0
      push 2, '_parent'
      getVariable
      push 'pcol'
      getMember
      add
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 243

  defineMovieClip 244 // total frames: 28

    frame 0
      stop
    end // of frame 0
  end // of defineMovieClip 244

  defineMovieClip 256 // total frames: 17

    frame 4
      constants 'box', '_visible', 'shd'  
      push 'box'
      getVariable
      push '_visible', FALSE
      setMember
      push 'shd'
      getVariable
      push '_visible', FALSE
      setMember
    end // of frame 4

    frame 8
      constants 'box', 'col', 'Math', 'random', 'floor', 'hair', 'pcol', 'gotoAndStop', 'hit', 'def', 'stm', 'spt', 'jab', 'cross', 'hook', 'upper', 'body', 'i', 'r', 'txt_hit', 'HIT ', 'txt_def', 'DEFENSE ', 'txt_stm', ' STAMINA ', 'txt_spt', ' SPIRIT ', 'txt_jab', 'JAB ', 'txt_cross', 'CROSS ', 'txt_hook', 'HOOK ', 'txt_upper', 'UPPERCUT ', 'txt_body', 'BODYBLOW '  
      push 'box'
      getVariable
      push 'col', 'col', 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 3
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      setRegister r:0
      setVariable
      push r:0
      setMember
      push 'box'
      getVariable
      push 'hair', 'hair', 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 5
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      setRegister r:0
      setVariable
      push r:0
      setMember
      push 'box'
      getVariable
      push 'pcol', 'pcol', 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 5
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      setRegister r:0
      setVariable
      push r:0
      setMember
      push 1, 1, 'box'
      getVariable
      push 'gotoAndStop'
      callMethod
      pop
      push 'hit', 80
      setVariable
      push 'def', 80
      setVariable
      push 'stm', 80
      setVariable
      push 'spt', 80
      setVariable
      push 'jab', 80
      setVariable
      push 'cross', 80
      setVariable
      push 'hook', 80
      setVariable
      push 'upper', 80
      setVariable
      push 'body', 80
      setVariable
      push 'i', 0.0
      setVariable
     label1:
      push 'i'
      getVariable
      push 30
      lessThan
      not
      branchIfTrue label12
      push 'r', 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 9
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      setVariable
      push 'r'
      getVariable
      setRegister r:0
      push 0.0
      strictEquals
      branchIfTrue label2
      push r:0, 1
      strictEquals
      branchIfTrue label3
      push r:0, 2
      strictEquals
      branchIfTrue label4
      push r:0, 3
      strictEquals
      branchIfTrue label5
      push r:0, 4
      strictEquals
      branchIfTrue label6
      push r:0, 5
      strictEquals
      branchIfTrue label7
      push r:0, 6
      strictEquals
      branchIfTrue label8
      push r:0, 7
      strictEquals
      branchIfTrue label9
      push r:0, 8
      strictEquals
      branchIfTrue label10
      branch label11
     label2:
      push 'hit', 'hit'
      getVariable
      increment
      setVariable
      branch label11
     label3:
      push 'def', 'def'
      getVariable
      increment
      setVariable
      branch label11
     label4:
      push 'stm', 'stm'
      getVariable
      increment
      setVariable
      branch label11
     label5:
      push 'spt', 'spt'
      getVariable
      increment
      setVariable
      branch label11
     label6:
      push 'jab', 'jab'
      getVariable
      increment
      setVariable
      branch label11
     label7:
      push 'cross', 'cross'
      getVariable
      increment
      setVariable
      branch label11
     label8:
      push 'hook', 'hook'
      getVariable
      increment
      setVariable
      branch label11
     label9:
      push 'upper', 'upper'
      getVariable
      increment
      setVariable
      branch label11
     label10:
      push 'body', 'body'
      getVariable
      increment
      setVariable
      branch label11
     label11:
      push 'i', 'i'
      getVariable
      increment
      setVariable
      branch label1
     label12:
      push 'txt_hit', 'HIT ', 'hit'
      getVariable
      add
      setVariable
      push 'txt_def', 'DEFENSE ', 'def'
      getVariable
      add
      setVariable
      push 'txt_stm', ' STAMINA ', 'stm'
      getVariable
      add
      setVariable
      push 'txt_spt', ' SPIRIT ', 'spt'
      getVariable
      add
      setVariable
      push 'txt_jab', 'JAB ', 'jab'
      getVariable
      add
      setVariable
      push 'txt_cross', 'CROSS ', 'cross'
      getVariable
      add
      setVariable
      push 'txt_hook', 'HOOK ', 'hook'
      getVariable
      add
      setVariable
      push 'txt_upper', 'UPPERCUT ', 'upper'
      getVariable
      add
      setVariable
      push 'txt_body', 'BODYBLOW ', 'body'
      getVariable
      add
      setVariable
    end // of frame 8

    frame 11
      constants 'box', '_visible', 'shd', '_parent', 'stop_all_sound', 'boxerdata', 'col', 'hair', 'pcol', 'hit', 'def', 'stm', 'spt', 'jab', 'cross', 'hook', 'upper', 'body', 'ranker', 'gotoAndStop', 'p0', 'stat', 'wc', 'ppat0', 'ppat1', 'ppat2', 'ppat3', 'ppat4', 'ppat5', 'onEnterFrame', 'p', 'Math', 'random', 'floor', 'p8', 'p5', 'ppat', 'OK', 'TRY ANOTHER', 'mcSelecter', 'init'  
      function2 after_select (r:3='curs') (r:1='_parent')
        push r:curs, 0.0
        equals
        not
        branchIfTrue label1
        push 'box'
        getVariable
        push '_visible', FALSE
        setMember
        push 'shd'
        getVariable
        push '_visible', FALSE
        setMember
        gotoFrame 5
        play
        branch label2
       label1:
        push 0.0, r:_parent, '_parent'
        getMember
        push 'stop_all_sound'
        callMethod
        pop
        push 99
        setRegister r:2
        pop
        push r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'col', 'col'
        getVariable
        setMember
        push r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'hair', 'hair'
        getVariable
        setMember
        push r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'pcol', 'pcol'
        getVariable
        setMember
        push r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'hit', 'hit'
        getVariable
        setMember
        push r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'def', 'def'
        getVariable
        setMember
        push r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'stm', 'stm'
        getVariable
        setMember
        push r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'spt', 'spt'
        getVariable
        setMember
        push r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'jab', 'jab'
        getVariable
        setMember
        push r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'cross', 'cross'
        getVariable
        setMember
        push r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'hook', 'hook'
        getVariable
        setMember
        push r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'upper', 'upper'
        getVariable
        setMember
        push r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'body', 'body'
        getVariable
        setMember
        push 'ranker', 1, r:_parent, 'gotoAndStop'
        callMethod
        pop
       label2:
      end // of function after_select

      stop
      push 'box'
      getVariable
      push '_visible', TRUE
      setMember
      push 'p0', 1, 'box'
      getVariable
      push 'gotoAndStop'
      callMethod
      pop
      push 'shd'
      getVariable
      push '_visible', TRUE
      setMember
      push 'stat', 0.0
      setVariable
      push 'wc', 10
      setVariable
      push 'ppat0', 4
      setVariable
      push 'ppat1', 6
      setVariable
      push 'ppat2', 7
      setVariable
      push 'ppat3', 9
      setVariable
      push 'ppat4', 10
      setVariable
      push 'ppat5', 0.0
      setVariable
      push 'onEnterFrame'
      function2 () (r:1='this')
        push 'stat'
        getVariable
        push 0.0
        equals
        not
        branchIfTrue label7
        push 'wc', 'wc'
        getVariable
        decrement
        setVariable
        push 'wc'
        getVariable
        push 0.0
        greaterThan
        not
        branchIfTrue label3
        push UNDEF
        return
       label3:
        push 'p', 0.0, 'Math'
        getVariable
        push 'random'
        callMethod
        push 5
        multiply
        push 1, 'Math'
        getVariable
        push 'floor'
        callMethod
        setVariable
        push 'p'
        getVariable
        push 3
        equals
        dup
        branchIfTrue label4
        pop
        push 'p'
        getVariable
        push 4
        equals
       label4:
        not
        branchIfTrue label5
        push 'p8', 1, 'box'
        getVariable
        push 'gotoAndStop'
        callMethod
        pop
        branch label6
       label5:
        push 'p5', 1, 'box'
        getVariable
        push 'gotoAndStop'
        callMethod
        pop
       label6:
        push 'stat', 1
        setVariable
        branch label10
       label7:
        push 'stat'
        getVariable
        push 1
        equals
        not
        branchIfTrue label8
        push 'p', r:this, 'ppat', 'p'
        getVariable
        add
        getMember
        add
        push 1, 'box'
        getVariable
        push 'gotoAndStop'
        callMethod
        pop
        push 'wc', 2
        setVariable
        push 'stat', 2
        setVariable
        branch label10
       label8:
        push 'wc', 'wc'
        getVariable
        decrement
        setVariable
        push 'wc'
        getVariable
        push 0.0
        greaterThan
        not
        branchIfTrue label9
        push UNDEF
        return
       label9:
        push 'p0', 1, 'box'
        getVariable
        push 'gotoAndStop'
        callMethod
        pop
        push 'wc', 0.0, 'Math'
        getVariable
        push 'random'
        callMethod
        push 6
        multiply
        push 1, 'Math'
        getVariable
        push 'floor'
        callMethod
        setVariable
        push 'stat', 0.0
        setVariable
       label10:
      end // of function 

      setVariable
      push 'OK', 'TRY ANOTHER', 2, 'mcSelecter'
      getVariable
      push 'init'
      callMethod
      pop
    end // of frame 11
  end // of defineMovieClip 256

  defineMovieClip 260 // total frames: 1
  end // of defineMovieClip 260

  defineMovieClip 271 // total frames: 1
  end // of defineMovieClip 271

  defineMovieClip 273 // total frames: 1
  end // of defineMovieClip 273

  defineButton 275

    on keyPress _UP
      constants 'curs', 'offset', 'disp_ranker'  
      push 'curs', 'curs'
      getVariable
      decrement
      setVariable
      push 'curs'
      getVariable
      push 1
      lessThan
      not
      branchIfTrue label1
      push 'curs', 1
      setVariable
      push 'offset', 'offset'
      getVariable
      decrement
      setVariable
      push 'offset'
      getVariable
      push -1
      lessThan
      not
      branchIfTrue label1
      push 'offset', -1
      setVariable
     label1:
      push 0.0, 'disp_ranker'
      callFunction
      pop
    end

    on keyPress _DOWN
      constants 'curs', 'offset', 'disp_ranker'  
      push 'curs', 'curs'
      getVariable
      increment
      setVariable
      push 'curs'
      getVariable
      push 10
      greaterThan
      not
      branchIfTrue label1
      push 'curs', 10
      setVariable
      push 'offset', 'offset'
      getVariable
      increment
      setVariable
      push 'offset'
      getVariable
      push 89
      greaterThan
      not
      branchIfTrue label1
      push 'offset', 89
      setVariable
     label1:
      push 0.0, 'disp_ranker'
      callFunction
      pop
    end

    on keyPress _SPACE
      constants 'mcCurs', '_x'  
      push 'mcCurs'
      getVariable
      push '_x', 'mcCurs'
      getVariable
      push '_x'
      getMember
      push 6
      add
      setMember
      play
    end
  end // of defineButton 275

  defineMovieClip 276 // total frames: 13

    frame 3
      constants 'oy', 'r', 'n', 'i', 'mc', 'offset', 'tfNum', 'text', '', 'tfName', 'C', 'get_bn', '_parent', 'boxerdata', 'nam', 'curs', 'textColor', '0xff0000', '0xffffff', 'mcSpec', 'hit', 'HIT ', 'def', 'DEF ', 'stm', 'STM ', 'spt', 'SPT ', 'jab', 'JAB ', 'crs', 'CRS ', 'cross', 'hok', 'HOK ', 'hook', 'upc', 'UPC ', 'upper', 'bdy', 'BDY ', 'body', 'mcCurs', '_y', 'user_rank', 'rank', 'Array', 'disp_ranker'  
      function disp_ranker ()
        push 'oy', 30
        varEquals
        push 'r'
        var
        push 'n'
        var
        push 'i', 0.0
        varEquals
       label1:
        push 'i'
        getVariable
        push 12
        lessThan
        not
        branchIfTrue label7
        push 'mc', 'mc', 'i'
        getVariable
        add
        getVariable
        varEquals
        push 'r', 'offset'
        getVariable
        push 'i'
        getVariable
        add
        setVariable
        push 'r'
        getVariable
        push 0.0
        lessThan
        dup
        branchIfTrue label2
        pop
        push 'r'
        getVariable
        push 100
        lessThan
        not
       label2:
        not
        branchIfTrue label3
        push 'mc'
        getVariable
        push 'tfNum'
        getMember
        push 'text', ''
        setMember
        push 'mc'
        getVariable
        push 'tfName'
        getMember
        push 'text', ''
        setMember
        branch label6
       label3:
        push 'mc'
        getVariable
        push 'tfNum'
        getMember
        push 'text', 'r'
        getVariable
        setMember
        push 'r'
        getVariable
        push 0.0
        equals
        not
        branchIfTrue label4
        push 'mc'
        getVariable
        push 'tfNum'
        getMember
        push 'text', 'C'
        setMember
       label4:
        push 'n', 'get_bn'
        getVariable
        push 'r'
        getVariable
        getMember
        setVariable
        push 'mc'
        getVariable
        push 'tfName'
        getMember
        push 'text', '_parent'
        getVariable
        push 'boxerdata'
        getMember
        push 'n'
        getVariable
        getMember
        push 'nam'
        getMember
        setMember
        push 'i'
        getVariable
        push 'curs'
        getVariable
        equals
        not
        branchIfTrue label5
        push 'mc'
        getVariable
        push 'tfNum'
        getMember
        push 'textColor', 'mc'
        getVariable
        push 'tfName'
        getMember
        push 'textColor', '0xff0000'
        setRegister r:0
        setMember
        push r:0
        setMember
        branch label6
       label5:
        push 'mc'
        getVariable
        push 'tfNum'
        getMember
        push 'textColor', 'mc'
        getVariable
        push 'tfName'
        getMember
        push 'textColor', '0xffffff'
        setRegister r:0
        setMember
        push r:0
        setMember
       label6:
        push 'i', 'i'
        getVariable
        increment
        setVariable
        branch label1
       label7:
        push 'r', 'offset'
        getVariable
        push 'curs'
        getVariable
        add
        setVariable
        push 'n', 'get_bn'
        getVariable
        push 'r'
        getVariable
        getMember
        setVariable
        push 'mcSpec'
        getVariable
        push 'hit', 'HIT ', '_parent'
        getVariable
        push 'boxerdata'
        getMember
        push 'n'
        getVariable
        getMember
        push 'hit'
        getMember
        add
        setMember
        push 'mcSpec'
        getVariable
        push 'def', 'DEF ', '_parent'
        getVariable
        push 'boxerdata'
        getMember
        push 'n'
        getVariable
        getMember
        push 'def'
        getMember
        add
        setMember
        push 'mcSpec'
        getVariable
        push 'stm', 'STM ', '_parent'
        getVariable
        push 'boxerdata'
        getMember
        push 'n'
        getVariable
        getMember
        push 'stm'
        getMember
        add
        setMember
        push 'mcSpec'
        getVariable
        push 'spt', 'SPT ', '_parent'
        getVariable
        push 'boxerdata'
        getMember
        push 'n'
        getVariable
        getMember
        push 'spt'
        getMember
        add
        setMember
        push 'mcSpec'
        getVariable
        push 'jab', 'JAB ', '_parent'
        getVariable
        push 'boxerdata'
        getMember
        push 'n'
        getVariable
        getMember
        push 'jab'
        getMember
        add
        setMember
        push 'mcSpec'
        getVariable
        push 'crs', 'CRS ', '_parent'
        getVariable
        push 'boxerdata'
        getMember
        push 'n'
        getVariable
        getMember
        push 'cross'
        getMember
        add
        setMember
        push 'mcSpec'
        getVariable
        push 'hok', 'HOK ', '_parent'
        getVariable
        push 'boxerdata'
        getMember
        push 'n'
        getVariable
        getMember
        push 'hook'
        getMember
        add
        setMember
        push 'mcSpec'
        getVariable
        push 'upc', 'UPC ', '_parent'
        getVariable
        push 'boxerdata'
        getMember
        push 'n'
        getVariable
        getMember
        push 'upper'
        getMember
        add
        setMember
        push 'mcSpec'
        getVariable
        push 'bdy', 'BDY ', '_parent'
        getVariable
        push 'boxerdata'
        getMember
        push 'n'
        getVariable
        getMember
        push 'body'
        getMember
        add
        setMember
        push 'mcCurs'
        getVariable
        push '_y', 'oy'
        getVariable
        push 16, 'curs'
        getVariable
        multiply
        add
        setMember
      end // of function disp_ranker

      push 'user_rank', '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 99
      getMember
      push 'rank'
      getMember
      setVariable
      push 'offset', 'user_rank'
      getVariable
      push 10
      subtract
      setVariable
      push 'offset'
      getVariable
      push -1
      lessThan
      not
      branchIfTrue label8
      push 'offset', -1
      setVariable
     label8:
      push 'curs', 10
      setVariable
      push 'user_rank'
      getVariable
      push 10
      lessThan
      not
      branchIfTrue label9
      push 'curs', 'user_rank'
      getVariable
      push 1
      add
      setVariable
     label9:
      push 'get_bn', 0.0, 'Array'
      new
      setVariable
      push 'i', 0.0
      setVariable
     label10:
      push 'i'
      getVariable
      push 100
      lessThan
      not
      branchIfTrue label11
      push 'get_bn'
      getVariable
      push 'i'
      getVariable
      push 'i'
      getVariable
      setMember
      push 'i', 'i'
      getVariable
      increment
      setVariable
      branch label10
     label11:
      push 'i', 0.0
      setVariable
     label12:
      push 'i'
      getVariable
      push 100
      lessThan
      not
      branchIfTrue label13
      push 'r', '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'i'
      getVariable
      getMember
      push 'rank'
      getMember
      setVariable
      push 'get_bn'
      getVariable
      push 'r'
      getVariable
      push 'i'
      getVariable
      setMember
      push 'i', 'i'
      getVariable
      increment
      setVariable
      branch label12
     label13:
      push 0.0, 'disp_ranker'
      callFunction
      pop
    end // of frame 3

    frame 7
      stop
      push 'mcCurs'
      getVariable
      push '_x', 2
      setMember
    end // of frame 7

    frame 11
      constants 'r', 'offset', 'curs', 'f', 'user_rank', '_parent', 'stop_all_sound', 'com_bn', 'get_bn', 'start_game'  
      stop
      push 'r', 'offset'
      getVariable
      push 'curs'
      getVariable
      add
      setVariable
      push 'f', 0.0
      setVariable
      push 'r'
      getVariable
      push 'user_rank'
      getVariable
      equals
      not
      branchIfTrue label1
      push 'f', 1
      setVariable
     label1:
      push 'r'
      getVariable
      push 0.0
      equals
      dup
      not
      branchIfTrue label2
      pop
      push 'user_rank'
      getVariable
      push 10
      greaterThan
     label2:
      not
      branchIfTrue label3
      push 'f', 1
      setVariable
     label3:
      push 'f'
      getVariable
      not
      branchIfTrue label4
      gotoLabel 'stop'
      branch label5
     label4:
      push 0.0, '_parent'
      getVariable
      push '_parent'
      getMember
      push 'stop_all_sound'
      callMethod
      pop
      push '_parent'
      getVariable
      push 'com_bn', 'get_bn'
      getVariable
      push 'r'
      getVariable
      getMember
      setMember
      push 0.0, '_parent'
      getVariable
      push 'start_game'
      callMethod
      pop
     label5:
    end // of frame 11
  end // of defineMovieClip 276

  defineButton 291

    on keyPress _SPACE
      constants '_parent', 'stop_all_sound', 'start_game'  
      push 0.0, '_parent'
      getVariable
      push '_parent'
      getMember
      push 'stop_all_sound'
      callMethod
      pop
      push 0.0, '_parent'
      getVariable
      push 'start_game'
      callMethod
      pop
    end
  end // of defineButton 291

  defineMovieClip 292 // total frames: 33

    frame 13
      constants 'rank', 'rank ', '_parent', 'rank1', 'nam', 'name1', 'box', 'col', 'col1', 'hair', 'hair1', 'pcol', 'pcol1', 'jab', 'JAB ', 'pp10', 'cross', 'CROSS ', 'pp11', 'hook', 'HOOK ', 'pp12', 'upper', 'UPPER ', 'pp13', 'body', 'BODY ', 'pp14', 'hit', 'HIT ', 'hit1', 'def', 'DEF ', 'skil1', 'stm', ' STM ', 'stam1', 'spt', ' SPT ', 'tole1', 'stat', 'wc', 'p0', 'gotoAndStop', 'ppat0', 'ppat1', 'ppat2', 'ppat3', 'ppat4', 'ppat5', 'onEnterFrame', 'p', 'Math', 'random', 'floor', 'p8', 'p5', 'shu0', 'start_sound', 'ppat'  
      push 'rank', 'rank ', '_parent'
      getVariable
      push 'rank99'
      getMember
      add
      setVariable
      push 'nam', '_parent'
      getVariable
      push 'name1'
      getMember
      setVariable
      push 'box'
      getVariable
      push 'col', '_parent'
      getVariable
      push 'col1'
      getMember
      setMember
      push 'box'
      getVariable
      push 'hair', '_parent'
      getVariable
      push 'hair1'
      getMember
      setMember
      push 'box'
      getVariable
      push 'pcol', '_parent'
      getVariable
      push 'pcol1'
      getMember
      setMember
      push 'jab', 'JAB ', '_parent'
      getVariable
      push 'pp10'
      getMember
      add
      setVariable
      push 'cross', 'CROSS ', '_parent'
      getVariable
      push 'pp11'
      getMember
      add
      setVariable
      push 'hook', 'HOOK ', '_parent'
      getVariable
      push 'pp12'
      getMember
      add
      setVariable
      push 'upper', 'UPPER ', '_parent'
      getVariable
      push 'pp13'
      getMember
      add
      setVariable
      push 'body', 'BODY ', '_parent'
      getVariable
      push 'pp14'
      getMember
      add
      setVariable
      push 'hit', 'HIT ', '_parent'
      getVariable
      push 'hit1'
      getMember
      add
      setVariable
      push 'def', 'DEF ', '_parent'
      getVariable
      push 'skil1'
      getMember
      add
      setVariable
      push 'stm', ' STM ', '_parent'
      getVariable
      push 'stam1'
      getMember
      add
      setVariable
      push 'spt', ' SPT ', '_parent'
      getVariable
      push 'tole1'
      getMember
      add
      setVariable
      push 'stat', 0.0
      setVariable
      push 'wc', 10
      setVariable
      push 'p0', 1, 'box'
      getVariable
      push 'gotoAndStop'
      callMethod
      pop
      push 'ppat0', 4
      setVariable
      push 'ppat1', 6
      setVariable
      push 'ppat2', 7
      setVariable
      push 'ppat3', 9
      setVariable
      push 'ppat4', 10
      setVariable
      push 'ppat5', 0.0
      setVariable
      push 'onEnterFrame'
      function2 () (r:1='this', r:2='_parent')
        push 'stat'
        getVariable
        push 0.0
        equals
        not
        branchIfTrue label5
        push 'wc', 'wc'
        getVariable
        decrement
        setVariable
        push 'wc'
        getVariable
        push 0.0
        greaterThan
        not
        branchIfTrue label1
        push UNDEF
        return
       label1:
        push 'p', 0.0, 'Math'
        getVariable
        push 'random'
        callMethod
        push 5
        multiply
        push 1, 'Math'
        getVariable
        push 'floor'
        callMethod
        setVariable
        push 'p'
        getVariable
        push 3
        equals
        dup
        branchIfTrue label2
        pop
        push 'p'
        getVariable
        push 4
        equals
       label2:
        not
        branchIfTrue label3
        push 'p8', 1, 'box'
        getVariable
        push 'gotoAndStop'
        callMethod
        pop
        branch label4
       label3:
        push 'p5', 1, 'box'
        getVariable
        push 'gotoAndStop'
        callMethod
        pop
       label4:
        push 'shu0', 1, r:_parent, '_parent'
        getMember
        push 'start_sound'
        callMethod
        pop
        push 'stat', 1
        setVariable
        branch label8
       label5:
        push 'stat'
        getVariable
        push 1
        equals
        not
        branchIfTrue label6
        push 'p', r:this, 'ppat', 'p'
        getVariable
        add
        getMember
        add
        push 1, 'box'
        getVariable
        push 'gotoAndStop'
        callMethod
        pop
        push 'wc', 2
        setVariable
        push 'stat', 2
        setVariable
        branch label8
       label6:
        push 'wc', 'wc'
        getVariable
        decrement
        setVariable
        push 'wc'
        getVariable
        push 0.0
        greaterThan
        not
        branchIfTrue label7
        push UNDEF
        return
       label7:
        push 'p0', 1, 'box'
        getVariable
        push 'gotoAndStop'
        callMethod
        pop
        push 'wc', 0.0, 'Math'
        getVariable
        push 'random'
        callMethod
        push 6
        multiply
        push 1, 'Math'
        getVariable
        push 'floor'
        callMethod
        setVariable
        push 'stat', 0.0
        setVariable
       label8:
      end // of function 

      setVariable
    end // of frame 13

    frame 32
      stop
    end // of frame 32
  end // of defineMovieClip 292

  defineMovieClip 295 // total frames: 1
  end // of defineMovieClip 295

  defineButton 297

    on keyPress _SPACE
      push 'game', 1, '_parent'
      getVariable
      push 'gotoAndStop'
      callMethod
      pop
    end
  end // of defineButton 297

  defineMovieClip 298 // total frames: 17

    frame 16
      stop
    end // of frame 16
  end // of defineMovieClip 298

  defineMovieClip 302 // total frames: 23

    frame 0
      stop
      push '', 7, FALSE
      setProperty
    end // of frame 0

    frame 1
      stop
    end // of frame 1

    frame 8
      stop
    end // of frame 8
  end // of defineMovieClip 302

  defineMovieClip 304 // total frames: 23

    frame 0
      stop
      push '', 7, FALSE
      setProperty
    end // of frame 0

    frame 1
      stop
    end // of frame 1

    frame 8
      stop
    end // of frame 8
  end // of defineMovieClip 304

  defineButton 305

    on overUpToOverDown
      push 0.0, 1, '_parent'
      getVariable
      push 'after_match'
      callMethod
      pop
    end
  end // of defineButton 305

  defineButton 306

    on overUpToOverDown
      push 1, 1, '_parent'
      getVariable
      push 'after_match'
      callMethod
      pop
    end
  end // of defineButton 306

  defineMovieClip 309 // total frames: 1
  end // of defineMovieClip 309

  defineMovieClip 310 // total frames: 1
  end // of defineMovieClip 310

  defineMovieClip 312 // total frames: 1
  end // of defineMovieClip 312

  defineMovieClip 313 // total frames: 36

    frame 0
      stop
      push '', 7, FALSE
      setProperty
    end // of frame 0

    frame 1
      push '', 7, TRUE
      setProperty
    end // of frame 1

    frame 18
      push 0.0, '_parent'
      getVariable
      push 'play'
      callMethod
      pop
      gotoFrame 0
    end // of frame 18

    frame 19
      push 'cnt', 0.0
      setVariable
    end // of frame 19

    frame 28
      constants 'cnt'  
      push 'cnt', 'cnt'
      getVariable
      increment
      setVariable
      push 'cnt'
      getVariable
      push 5
      greaterThan
      not
      branchIfTrue label1
      gotoFrame 0
      branch label2
     label1:
      gotoLabel 'gong'
      play
     label2:
    end // of frame 28
  end // of defineMovieClip 313

  defineMovieClip 316 // total frames: 3

    frame 0
      stop
      push '_parent'
      getVariable
      push 'round'
      getMember
      gotoAndStop
    end // of frame 0
  end // of defineMovieClip 316

  defineMovieClip 317 // total frames: 14

    frame 0
      stop
      push '', 7, FALSE
      setProperty
    end // of frame 0

    frame 3
      constants 'round', '_parent', 'play'  
      push 'round', '_parent'
      getVariable
      push 'round'
      getMember
      setVariable
      push 'round'
      getVariable
      push 1
      equals
      not
      branchIfTrue label1
      gotoFrame 0
      push 0.0, '_parent'
      getVariable
      push 'play'
      callMethod
      pop
     label1:
    end // of frame 3

    frame 4
      push '', 7, TRUE
      setProperty
      push 'mc'
      getVariable
      push '_y', 44
      setMember
      push 'c', 0.0
      setVariable
    end // of frame 4

    frame 11
      constants 'a', 'c', 'Math', 'floor', 'mc', '_y', '_parent', 'play', ''  
      push 'a', 'c'
      getVariable
      push 2
      divide
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      setVariable
      push 'a'
      getVariable
      push 2
      modulo
      push 0.0
      equals
      not
      branchIfTrue label1
      push 'mc'
      getVariable
      push '_y', 'mc'
      getVariable
      push '_y'
      getMember
      push 2
      add
      setMember
      branch label2
     label1:
      push 'mc'
      getVariable
      push '_y', 'mc'
      getVariable
      push '_y'
      getMember
      push 1
      subtract
      setMember
     label2:
      push 'c', 'c'
      getVariable
      increment
      setVariable
      push 'c'
      getVariable
      push 30
      greaterThan
      not
      branchIfTrue label3
      gotoFrame 0
      push 0.0, '_parent'
      getVariable
      push 'play'
      callMethod
      pop
      branch label4
     label3:
      push '', 4
      getProperty
      push 1
      subtract
      gotoAndPlay
     label4:
    end // of frame 11
  end // of defineMovieClip 317

  defineMovieClip 320 // total frames: 1
  end // of defineMovieClip 320

  defineMovieClip 321 // total frames: 2

    frame 0
      stop
    end // of frame 0

    frame 1
      push 'mc'
      getVariable
      push '_x', '_parent'
      getVariable
      push 'sec'
      getMember
      push -1
      multiply
      setMember
    end // of frame 1
  end // of defineMovieClip 321

  defineButton 322

    on keyPress _LEFT
      push 'punch', 0.0
      setVariable
      push 0.0, 'punch_func'
      callFunction
      pop
    end

    on keyPress _UP
      push 'punch', 3
      setVariable
      push 0.0, 'punch_func'
      callFunction
      pop
    end

    on keyPress _RIGHT
      push 'punch', 1
      setVariable
      push 0.0, 'punch_func'
      callFunction
      pop
    end

    on keyPress _SPACE
      push 'punch', 2
      setVariable
      push 0.0, 'punch_func'
      callFunction
      pop
    end

    on keyPress _DOWN
      push 'punch', 4
      setVariable
      push 0.0, 'punch_func'
      callFunction
      pop
    end

    on keyPress '2'
      push 'punch', 5
      setVariable
      push 0.0, 'punch_func'
      callFunction
      pop
    end
  end // of defineButton 322

  defineButton 323

    on keyPress _SPACE
      play
    end
  end // of defineButton 323

  defineMovieClip 324 // total frames: 50

    frame 0
      constants '', 'round', 'xleft', 'xright', 'dist', 'ene_max', 'punch_ene', 'ppat0', 'ppat1', 'ppat2', 'ppat3', 'ppat4', 'ppat5', 'ppw0', 'ppw1', 'ppw2', 'ppw3', 'ppw4', 'ppw5', 'paw0', 'paw1', 'paw2', 'paw3', 'paw4', 'paw5', 'pr0', 'pr1', 'pr2', 'pr3', 'pr4', 'pr5', 'ph0', 'ph1', 'ph2', 'ph3', 'ph4', 'ph5', 'dd0', 'dd1', 'dd2', 'dd3', 'dd4', 'dd5', 'rpat0', 'rpat1', 'rpat2', 'rpat3', 'rpat4', 'rpat5', 'rpat6'  
      push '', 2, 200
      setProperty
      push '', 3, 200
      setProperty
      push 'round', 1
      setVariable
      push 'xleft', 14
      setVariable
      push 'xright', 106
      setVariable
      push 'dist', 14
      setVariable
      push 'ene_max', 1000
      setVariable
      push 'punch_ene', 120
      setVariable
      push 'ppat0', 4
      setVariable
      push 'ppat1', 6
      setVariable
      push 'ppat2', 7
      setVariable
      push 'ppat3', 9
      setVariable
      push 'ppat4', 10
      setVariable
      push 'ppat5', 0.0
      setVariable
      push 'ppw0', 1
      setVariable
      push 'ppw1', 1
      setVariable
      push 'ppw2', 2
      setVariable
      push 'ppw3', 2
      setVariable
      push 'ppw4', 2
      setVariable
      push 'ppw5', 2
      setVariable
      push 'paw0', 2
      setVariable
      push 'paw1', 2
      setVariable
      push 'paw2', 2
      setVariable
      push 'paw3', 3
      setVariable
      push 'paw4', 3
      setVariable
      push 'paw5', 1
      setVariable
      push 'pr0', 24
      setVariable
      push 'pr1', 24
      setVariable
      push 'pr2', 20
      setVariable
      push 'pr3', 18
      setVariable
      push 'pr4', 24
      setVariable
      push 'pr5', 22
      setVariable
      push 'ph0', 50
      setVariable
      push 'ph1', 20
      setVariable
      push 'ph2', 10
      setVariable
      push 'ph3', 10
      setVariable
      push 'ph4', 50
      setVariable
      push 'ph5', 0.0
      setVariable
      push 'dd0', 10
      setVariable
      push 'dd1', 15
      setVariable
      push 'dd2', 20
      setVariable
      push 'dd3', 20
      setVariable
      push 'dd4', 1
      setVariable
      push 'dd5', 1
      setVariable
      push 'rpat0', 14
      setVariable
      push 'rpat1', 15
      setVariable
      push 'rpat2', 16
      setVariable
      push 'rpat3', 13
      setVariable
      push 'rpat4', 12
      setVariable
      push 'rpat5', 11
      setVariable
      push 'rpat6', 20
      setVariable
    end // of frame 0

    frame 1
      constants 'box0', 'col', '_parent', 'col0', 'box1', 'col1', 'pcol', 'pcol0', 'pcol1', 'hair', 'hair0', 'hair1', 'dir0', 'dir1', 'ea0', 'stam0', 'ea1', 'stam1', 'skil0', 'skil1', 'tole0', 'tole1', 'ps00', 'ps01', 'ps02', 'ps03', 'ps04', 'ps10', 'ps11', 'ps12', 'ps13', 'ps14', 'pp00', 'pp01', 'pp02', 'pp03', 'pp04', 'pp10', 'pp11', 'pp12', 'pp13', 'pp14', 'pt0', 'pt1', 'dc0', 'dc1', '_visible', 'shad0', 'shad1'  
      push 'box0'
      getVariable
      push 'col', '_parent'
      getVariable
      push 'col0'
      getMember
      setMember
      push 'box1'
      getVariable
      push 'col', '_parent'
      getVariable
      push 'col1'
      getMember
      setMember
      push 'box0'
      getVariable
      push 'pcol', '_parent'
      getVariable
      push 'pcol0'
      getMember
      setMember
      push 'box1'
      getVariable
      push 'pcol', '_parent'
      getVariable
      push 'pcol1'
      getMember
      setMember
      push 'box0'
      getVariable
      push 'hair', '_parent'
      getVariable
      push 'hair0'
      getMember
      setMember
      push 'box1'
      getVariable
      push 'hair', '_parent'
      getVariable
      push 'hair1'
      getMember
      setMember
      push 'dir0', 1
      setVariable
      push 'dir1', -1
      setVariable
      push 'ea0', 10, '_parent'
      getVariable
      push 'stam0'
      getMember
      add
      setVariable
      push 'ea1', 10, '_parent'
      getVariable
      push 'stam1'
      getMember
      add
      setVariable
      push 'skil0', '_parent'
      getVariable
      push 'skil0'
      getMember
      setVariable
      push 'skil1', '_parent'
      getVariable
      push 'skil1'
      getMember
      setVariable
      push 'tole0', '_parent'
      getVariable
      push 'tole0'
      getMember
      setVariable
      push 'tole1', '_parent'
      getVariable
      push 'tole1'
      getMember
      setVariable
      push 'ps00', '_parent'
      getVariable
      push 'ps00'
      getMember
      setVariable
      push 'ps01', '_parent'
      getVariable
      push 'ps01'
      getMember
      setVariable
      push 'ps02', '_parent'
      getVariable
      push 'ps02'
      getMember
      setVariable
      push 'ps03', '_parent'
      getVariable
      push 'ps03'
      getMember
      setVariable
      push 'ps04', '_parent'
      getVariable
      push 'ps04'
      getMember
      setVariable
      push 'ps10', '_parent'
      getVariable
      push 'ps10'
      getMember
      setVariable
      push 'ps11', '_parent'
      getVariable
      push 'ps11'
      getMember
      setVariable
      push 'ps12', '_parent'
      getVariable
      push 'ps12'
      getMember
      setVariable
      push 'ps13', '_parent'
      getVariable
      push 'ps13'
      getMember
      setVariable
      push 'ps14', '_parent'
      getVariable
      push 'ps14'
      getMember
      setVariable
      push 'pp00', '_parent'
      getVariable
      push 'pp00'
      getMember
      setVariable
      push 'pp01', '_parent'
      getVariable
      push 'pp01'
      getMember
      setVariable
      push 'pp02', '_parent'
      getVariable
      push 'pp02'
      getMember
      setVariable
      push 'pp03', '_parent'
      getVariable
      push 'pp03'
      getMember
      setVariable
      push 'pp04', '_parent'
      getVariable
      push 'pp04'
      getMember
      setVariable
      push 'pp10', '_parent'
      getVariable
      push 'pp10'
      getMember
      setVariable
      push 'pp11', '_parent'
      getVariable
      push 'pp11'
      getMember
      setVariable
      push 'pp12', '_parent'
      getVariable
      push 'pp12'
      getMember
      setVariable
      push 'pp13', '_parent'
      getVariable
      push 'pp13'
      getMember
      setVariable
      push 'pp14', '_parent'
      getVariable
      push 'pp14'
      getMember
      setVariable
      push 'pt0', 0.0
      setVariable
      push 'pt1', 0.0
      setVariable
      push 'dc0', 0.0
      setVariable
      push 'dc1', 0.0
      setVariable
      push 'box0'
      getVariable
      push '_visible', FALSE
      setMember
      push 'box1'
      getVariable
      push '_visible', FALSE
      setMember
      push 'shad0'
      getVariable
      push '_visible', FALSE
      setMember
      push 'shad1'
      getVariable
      push '_visible', FALSE
      setMember
    end // of frame 1

    frame 6
      constants 'start', 'mcWaa0', 'gotoAndStop', 'stop', 'mcWaa1', 'box0', '_visible', 'box1', 'shad0', 'shad1', '_parent', 'round_txt', 'ROUND', 'round', 'girl', 'gotoAndPlay', 'sec', 'timer', 'play', 'ctac', 'Math', 'random', 'floor', 'cint', 'rank1'  
      stop
      push 'start', 1, 'mcWaa0'
      getVariable
      push 'gotoAndStop'
      callMethod
      pop
      push 'stop', 1, 'mcWaa1'
      getVariable
      push 'gotoAndStop'
      callMethod
      pop
      push 'box0'
      getVariable
      push '_visible', FALSE
      setMember
      push 'box1'
      getVariable
      push '_visible', FALSE
      setMember
      push 'shad0'
      getVariable
      push '_visible', FALSE
      setMember
      push 'shad1'
      getVariable
      push '_visible', FALSE
      setMember
      push '_parent'
      getVariable
      push 'round_txt', 'ROUND', 'round'
      getVariable
      add
      setMember
      push 2, 1, 'girl'
      getVariable
      push 'gotoAndPlay'
      callMethod
      pop
      push 'sec', 0.0
      setVariable
      push 0.0, 'timer'
      getVariable
      push 'play'
      callMethod
      pop
      push 'ctac', 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 5
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      setVariable
      push 'cint', 2, 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 6
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      add
      setVariable
      push '_parent'
      getVariable
      push 'rank1'
      getMember
      push 90
      lessThan
      not
      not
      branchIfTrue label1
      push 'cint', 5, 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 6
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      add
      setVariable
     label1:
      push '_parent'
      getVariable
      push 'rank1'
      getMember
      push 10
      greaterThan
      not
      not
      branchIfTrue label2
      push 'cint', 2, 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 2
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      add
      setVariable
     label2:
    end // of frame 6

    frame 7
      constants 'box0', '_visible', 'box1', 'shad0', 'shad1', 'i', 'p0', 'this', 'box', 'gotoAndStop', 'stat', 'wait', 'dcnt', 'ene', 'ene_max', 'dmg', 'opc', '_x', 'xleft', 'xright', 'tm', 'sec', 'downer'  
      push 'box0'
      getVariable
      push '_visible', TRUE
      setMember
      push 'box1'
      getVariable
      push '_visible', TRUE
      setMember
      push 'shad0'
      getVariable
      push '_visible', TRUE
      setMember
      push 'shad1'
      getVariable
      push '_visible', TRUE
      setMember
      push 'i', 0.0
      setVariable
     label1:
      push 'i'
      getVariable
      push 2
      lessThan
      not
      branchIfTrue label2
      push 'p0', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      push 'this'
      getVariable
      push 'stat', 'i'
      getVariable
      add
      push 'wait'
      setMember
      push 'this'
      getVariable
      push 'dcnt', 'i'
      getVariable
      add
      push 0.0
      setMember
      push 'this'
      getVariable
      push 'ene', 'i'
      getVariable
      add
      push 'ene_max'
      getVariable
      setMember
      push 'this'
      getVariable
      push 'dmg', 'i'
      getVariable
      add
      push 0.0
      setMember
      push 'this'
      getVariable
      push 'opc', 'i'
      getVariable
      add
      push -1
      setMember
      push 'i', 'i'
      getVariable
      increment
      setVariable
      branch label1
     label2:
      push 'box0'
      getVariable
      push '_x', 'xleft'
      getVariable
      setMember
      push 'box1'
      getVariable
      push '_x', 'xright'
      getVariable
      setMember
      push 'shad0'
      getVariable
      push '_x', 'xleft'
      getVariable
      setMember
      push 'shad1'
      getVariable
      push '_x', 'xright'
      getVariable
      setMember
      push 'tm', 0.0
      setVariable
      push 'sec', 0.0
      setVariable
      push 'downer', -1
      setVariable
    end // of frame 7

    frame 12
      constants 'stat0', 'wait', 'walk', 'punch', 'punch0', 'cnt0', 'ppw', 'step0', 'p8', 'box0', 'gotoAndStop', 'p5', 'i', 'nb', 'stat', 'this', 'sx', 'box1', '_x', 'dist', 'cnt', 'p0', 'box', 'ene', 'tired', 'p3', 'p1', 'p2', 'dir', 'step', 'p', 's', 'f', 'ppat', 'paw', 'sk', 'pr', 'opc', 'shu0', '_parent', 'start_sound', 'per', 'ph', 'ps', 'skil', 'xright', 'xleft', 'hit', 'Math', 'random', 'floor', 'pp', 'd', 'ea', 'r', 'bisi0', 'bisi3', 'pd', 'dd', 'dmg', 'sna', 'bisi_', 'stand_count', 'tole', 'dc', 'down', 'downer', 'pt', 'react', 'rpat', 'punch_ene', 'cint', 'c', 'a', 'stat1', 'ene1', 'ctac', 'opc1', 'punch1', 'cnt1', 'step1', 'shad0', 'shad1', 'a1', 'dmg0', 'b1', 'dmg1', 'tm', 'sec', 'timer', 'play'  
      function2 punch_func () (r:1='this')
        push 'stat0'
        getVariable
        push 'wait'
        equals
        dup
        branchIfTrue label1
        pop
        push 'stat0'
        getVariable
        push 'walk'
        equals
       label1:
        not
        branchIfTrue label4
        push 'stat0', 'punch'
        setVariable
        push 'punch0', 'punch'
        getVariable
        setVariable
        push 'cnt0', r:this, 'ppw', 'punch'
        getVariable
        add
        getMember
        setVariable
        push 'step0', 0.0
        setVariable
        push 'punch'
        getVariable
        push 3
        equals
        dup
        branchIfTrue label2
        pop
        push 'punch'
        getVariable
        push 4
        equals
       label2:
        not
        branchIfTrue label3
        push 'p8', 1, 'box0'
        getVariable
        push 'gotoAndStop'
        callMethod
        pop
        branch label4
       label3:
        push 'p5', 1, 'box0'
        getVariable
        push 'gotoAndStop'
        callMethod
        pop
       label4:
      end // of function punch_func

      push 'i', 0.0
      setVariable
     label5:
      push 'i'
      getVariable
      push 2
      lessThan
      not
      branchIfTrue label67
      push 'nb', 'i'
      getVariable
      push 0.0
      equals
      branchIfTrue label6
      push 0.0
      branch label7
     label6:
      push 1
     label7:
      setVariable
      push 'stat', 'this'
      getVariable
      push 'stat', 'i'
      getVariable
      add
      getMember
      setVariable
      push 'stat'
      getVariable
      push 'wait'
      equals
      not
      branchIfTrue label10
      push 'sx', 'box1'
      getVariable
      push '_x'
      getMember
      push 'box0'
      getVariable
      push '_x'
      getMember
      subtract
      setVariable
      push 'sx'
      getVariable
      push 'dist'
      getVariable
      greaterThan
      not
      branchIfTrue label8
      push 'this'
      getVariable
      push 'stat', 'i'
      getVariable
      add
      push 'walk'
      setMember
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      push 0.0
      setMember
      push 'p0', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
     label8:
      push 'this'
      getVariable
      push 'ene', 'i'
      getVariable
      add
      getMember
      push 0.0
      greaterThan
      not
      not
      branchIfTrue label9
      push 'this'
      getVariable
      push 'stat', 'i'
      getVariable
      add
      push 'tired'
      setMember
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      push 0.0
      setMember
      push 'p3', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
     label9:
      branch label64
     label10:
      push 'stat'
      getVariable
      push 'walk'
      equals
      not
      branchIfTrue label20
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      getMember
      increment
      setMember
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      getMember
      push 3
      greaterThan
      not
      branchIfTrue label11
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      push 0.0
      setMember
     label11:
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      getMember
      setRegister r:0
      push 0.0
      strictEquals
      branchIfTrue label12
      push r:0, 1
      strictEquals
      branchIfTrue label13
      push r:0, 2
      strictEquals
      branchIfTrue label14
      push r:0, 3
      strictEquals
      branchIfTrue label15
      branch label16
     label12:
      push 'p0', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      branch label16
     label13:
      push 'p1', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      branch label16
     label14:
      push 'p2', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      branch label16
     label15:
      push 'p1', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      branch label16
     label16:
      push 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push '_x', 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push '_x'
      getMember
      push 'this'
      getVariable
      push 'dir', 'i'
      getVariable
      add
      getMember
      push 2
      multiply
      add
      setMember
      push 'box1'
      getVariable
      push '_x'
      getMember
      push 'box0'
      getVariable
      push '_x'
      getMember
      subtract
      push 'dist'
      getVariable
      greaterThan
      not
      not
      branchIfTrue label19
      push 'i'
      getVariable
      push 0.0
      equals
      not
      branchIfTrue label17
      push 'box0'
      getVariable
      push '_x', 'box1'
      getVariable
      push '_x'
      getMember
      push 'dist'
      getVariable
      subtract
      setMember
      branch label18
     label17:
      push 'box1'
      getVariable
      push '_x', 'box0'
      getVariable
      push '_x'
      getMember
      push 'dist'
      getVariable
      add
      setMember
     label18:
      push 'p0', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      push 'this'
      getVariable
      push 'stat', 'i'
      getVariable
      add
      push 'wait'
      setMember
     label19:
      branch label64
     label20:
      push 'stat'
      getVariable
      push 'punch'
      equals
      not
      branchIfTrue label53
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      getMember
      decrement
      setMember
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      getMember
      push 0.0
      greaterThan
      not
      not
      branchIfTrue label52
      push 'this'
      getVariable
      push 'step', 'i'
      getVariable
      add
      push 'this'
      getVariable
      push 'step', 'i'
      getVariable
      add
      getMember
      increment
      setMember
      push 'p', 'this'
      getVariable
      push 'punch', 'i'
      getVariable
      add
      getMember
      setVariable
      push 's', 'this'
      getVariable
      push 'step', 'i'
      getVariable
      add
      getMember
      setVariable
      push 's'
      getVariable
      push 1
      equals
      not
      branchIfTrue label50
      push 'f', 'p', 'this'
      getVariable
      push 'ppat', 'p'
      getVariable
      add
      getMember
      add
      setVariable
      push 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'f', 'f'
      getVariable
      setMember
      push 'f'
      getVariable
      push 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      push 'this'
      getVariable
      push 'paw', 'p'
      getVariable
      add
      getMember
      setMember
      push 'sk', 0.0
      setVariable
      push 'sx', 'box1'
      getVariable
      push '_x'
      getMember
      push 'box0'
      getVariable
      push '_x'
      getMember
      subtract
      setVariable
      push 'sx'
      getVariable
      push 'this'
      getVariable
      push 'pr', 'p'
      getVariable
      add
      getMember
      greaterThan
      not
      branchIfTrue label21
      push 'sk', 1
      setVariable
     label21:
      push 'p'
      getVariable
      push 5
      equals
      not
      branchIfTrue label22
      push 'this'
      getVariable
      push 'opc', 'i'
      getVariable
      add
      getMember
      push 5
      equals
      not
      branchIfTrue label22
      push 'sk', 1
      setVariable
     label22:
      push 'sk'
      getVariable
      not
      branchIfTrue label24
      push 'p'
      getVariable
      push 5
      equals
      not
      not
      branchIfTrue label23
      push 'shu0', 1, '_parent'
      getVariable
      push '_parent'
      getMember
      push 'start_sound'
      callMethod
      pop
     label23:
      branch label48
     label24:
      push 'per', 'this'
      getVariable
      push 'ph', 'p'
      getVariable
      add
      getMember
      setVariable
      push 'per', 'per'
      getVariable
      push 'this'
      getVariable
      push 'ps', 'i'
      getVariable
      add
      push 'p'
      getVariable
      add
      getMember
      push 'this'
      getVariable
      push 'skil', 'nb'
      getVariable
      add
      getMember
      subtract
      push 10
      multiply
      add
      setVariable
      push 'i'
      getVariable
      push 0.0
      equals
      not
      branchIfTrue label26
      push 'box1'
      getVariable
      push '_x'
      getMember
      push 'xright'
      getVariable
      push 10
      subtract
      greaterThan
      not
      branchIfTrue label25
      push 'per', 'per'
      getVariable
      push 30
      add
      setVariable
     label25:
      branch label27
     label26:
      push 'box0'
      getVariable
      push '_x'
      getMember
      push 'xleft'
      getVariable
      push 10
      add
      lessThan
      not
      branchIfTrue label27
      push 'per', 'per'
      getVariable
      push 30
      add
      setVariable
     label27:
      push 'this'
      getVariable
      push 'stat', 'nb'
      getVariable
      add
      getMember
      push 'tired'
      equals
      not
      branchIfTrue label28
      push 'per', 'per'
      getVariable
      push 80
      add
      setVariable
     label28:
      push 'p'
      getVariable
      push 'this'
      getVariable
      push 'opc', 'i'
      getVariable
      add
      getMember
      equals
      not
      branchIfTrue label29
      push 'per', 'per'
      getVariable
      push 50
      subtract
      setVariable
     label29:
      push 'per'
      getVariable
      push 1
      lessThan
      not
      branchIfTrue label30
      push 'per', 1
      setVariable
     label30:
      push 'hit', 0.0
      setVariable
      push 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 100
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      push 'per'
      getVariable
      lessThan
      not
      branchIfTrue label31
      push 'hit', 1
      setVariable
     label31:
      push 'p'
      getVariable
      push 5
      equals
      not
      branchIfTrue label32
      push 'hit', 0.0
      setVariable
     label32:
      push 'hit'
      getVariable
      not
      branchIfTrue label45
      push 'pp', 'this'
      getVariable
      push 'pp', 'i'
      getVariable
      add
      push 'p'
      getVariable
      add
      getMember
      setVariable
      push 'p'
      getVariable
      push 4
      equals
      not
      branchIfTrue label37
      push 'd', 'pp'
      getVariable
      push 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 'pp'
      getVariable
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      add
      setVariable
      push 'this'
      getVariable
      push 'ea', 'nb'
      getVariable
      add
      push 'this'
      getVariable
      push 'ea', 'nb'
      getVariable
      add
      getMember
      push 'd'
      getVariable
      push 10
      divide
      subtract
      setMember
      push 'this'
      getVariable
      push 'ea', 'nb'
      getVariable
      add
      getMember
      push 3
      lessThan
      not
      branchIfTrue label33
      push 'this'
      getVariable
      push 'ea', 'nb'
      getVariable
      add
      push 3
      setMember
     label33:
      push 'this'
      getVariable
      push 'ene', 'nb'
      getVariable
      add
      getMember
      push 0.0
      greaterThan
      not
      branchIfTrue label34
      push 'this'
      getVariable
      push 'ene', 'nb'
      getVariable
      add
      push 'this'
      getVariable
      push 'ene', 'nb'
      getVariable
      add
      getMember
      push 'd'
      getVariable
      push 10
      multiply
      subtract
      setMember
     label34:
      push 'r', 2
      setVariable
      push 'd'
      getVariable
      push 15
      lessThan
      not
      branchIfTrue label35
      push 'bisi0', 1, '_parent'
      getVariable
      push '_parent'
      getMember
      push 'start_sound'
      callMethod
      pop
      branch label36
     label35:
      push 'bisi3', 1, '_parent'
      getVariable
      push '_parent'
      getMember
      push 'start_sound'
      callMethod
      pop
     label36:
      branch label44
     label37:
      push 'pd', 'this'
      getVariable
      push 'dd', 'p'
      getVariable
      add
      getMember
      push 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 'pp'
      getVariable
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      add
      setVariable
      push 'd', 'pd'
      getVariable
      setVariable
      push 'd', 'd'
      getVariable
      push 'this'
      getVariable
      push 'dmg', 'nb'
      getVariable
      add
      getMember
      add
      setVariable
      push 'p'
      getVariable
      push 0.0
      greaterThan
      not
      branchIfTrue label38
      push 'this'
      getVariable
      push 'dmg', 'nb'
      getVariable
      add
      push 'this'
      getVariable
      push 'dmg', 'nb'
      getVariable
      add
      getMember
      push 'pd'
      getVariable
      add
      setMember
     label38:
      push 'r', 0.0
      setVariable
      push 'd'
      getVariable
      push 20
      greaterThan
      not
      branchIfTrue label39
      push 'r', 1
      setVariable
     label39:
      push 'd'
      getVariable
      push 30
      greaterThan
      not
      branchIfTrue label40
      push 'r', 6
      setVariable
     label40:
      push 'sna', 'bisi0'
      setVariable
      push 'd'
      getVariable
      push 20
      greaterThan
      not
      branchIfTrue label41
      push 'sna', 'bisi3'
      setVariable
     label41:
      push 'd'
      getVariable
      push 30
      greaterThan
      not
      branchIfTrue label42
      push 'sna', 'bisi_'
      setVariable
     label42:
      push 'sna'
      getVariable
      push 1, '_parent'
      getVariable
      push '_parent'
      getMember
      push 'start_sound'
      callMethod
      pop
      push 'stand_count', 'd'
      getVariable
      push 20
      subtract
      push 'this'
      getVariable
      push 'tole', 'nb'
      getVariable
      add
      getMember
      subtract
      push 'this'
      getVariable
      push 'dc', 'nb'
      getVariable
      add
      getMember
      push 3
      multiply
      add
      setVariable
      push 'p'
      getVariable
      push 0.0
      greaterThan
      dup
      not
      branchIfTrue label43
      pop
      push 'stand_count'
      getVariable
      push 5
      lessThan
      not
     label43:
      not
      branchIfTrue label44
      push 'this'
      getVariable
      push 'stat', 'nb'
      getVariable
      add
      push 'down'
      setMember
      push 'downer', 'nb'
      getVariable
      setVariable
      push 'this'
      getVariable
      push 'pt', 'i'
      getVariable
      add
      push 'this'
      getVariable
      push 'pt', 'i'
      getVariable
      add
      getMember
      push 50
      add
      setMember
      push 'this'
      getVariable
      push 'dc', 'nb'
      getVariable
      add
      push 'this'
      getVariable
      push 'dc', 'nb'
      getVariable
      add
      getMember
      increment
      setMember
     label44:
      push 'this'
      getVariable
      push 'pt', 'i'
      getVariable
      add
      push 'this'
      getVariable
      push 'pt', 'i'
      getVariable
      add
      getMember
      increment
      setMember
      branch label47
     label45:
      push 'r', 5
      setVariable
      push 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 3
      multiply
      push 1
      lessThan
      not
      branchIfTrue label46
      push 'r', 3, 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 3
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      add
      setVariable
     label46:
      push 'p'
      getVariable
      push 5
      equals
      not
      not
      branchIfTrue label47
      push 'shu0', 1, '_parent'
      getVariable
      push '_parent'
      getMember
      push 'start_sound'
      callMethod
      pop
     label47:
      push 'this'
      getVariable
      push 'stat', 'nb'
      getVariable
      add
      push 'react'
      setMember
      push 'this'
      getVariable
      push 'react', 'nb'
      getVariable
      add
      push 'r'
      getVariable
      setMember
      push 'this'
      getVariable
      push 'cnt', 'nb'
      getVariable
      add
      push 3
      setMember
      push 'f', 'p', 'this'
      getVariable
      push 'rpat', 'r'
      getVariable
      add
      getMember
      add
      setVariable
      push 'this'
      getVariable
      push 'box', 'nb'
      getVariable
      add
      getMember
      push 'f', 'f'
      getVariable
      setMember
      push 'f'
      getVariable
      push 1, 'this'
      getVariable
      push 'box', 'nb'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
     label48:
      push 'this'
      getVariable
      push 'opc', 'i'
      getVariable
      add
      push 'p'
      getVariable
      setMember
      push 'p'
      getVariable
      push 5
      equals
      not
      not
      branchIfTrue label49
      push 'this'
      getVariable
      push 'ene', 'i'
      getVariable
      add
      push 'this'
      getVariable
      push 'ene', 'i'
      getVariable
      add
      getMember
      push 'punch_ene'
      getVariable
      subtract
      setMember
     label49:
      branch label52
     label50:
      push 'this'
      getVariable
      push 'ene', 'i'
      getVariable
      add
      getMember
      push 0.0
      greaterThan
      not
      not
      branchIfTrue label51
      push 'this'
      getVariable
      push 'stat', 'i'
      getVariable
      add
      push 'tired'
      setMember
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      push 0.0
      setMember
      push 'p3', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      push 'cint', 2, 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 6
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      add
      setVariable
      branch label52
     label51:
      push 'p0', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      push 'this'
      getVariable
      push 'stat', 'i'
      getVariable
      add
      push 'wait'
      setMember
     label52:
      branch label64
     label53:
      push 'stat'
      getVariable
      push 'react'
      equals
      not
      branchIfTrue label60
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      getMember
      decrement
      setMember
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      getMember
      push 0.0
      greaterThan
      not
      not
      branchIfTrue label59
      push 'this'
      getVariable
      push 'react', 'i'
      getVariable
      add
      getMember
      push 5
      equals
      dup
      branchIfTrue label54
      pop
      push 'this'
      getVariable
      push 'react', 'i'
      getVariable
      add
      getMember
      push 1
      equals
     label54:
      dup
      branchIfTrue label55
      pop
      push 'this'
      getVariable
      push 'react', 'i'
      getVariable
      add
      getMember
      push 6
      equals
     label55:
      not
      branchIfTrue label58
      push 'this'
      getVariable
      push 'react', 'i'
      getVariable
      add
      push 7
      setMember
      push 'p1', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      push 2
      setMember
      push 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push '_x', 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push '_x'
      getMember
      push 'this'
      getVariable
      push 'dir', 'i'
      getVariable
      add
      getMember
      push 4
      multiply
      subtract
      setMember
      push 'box0'
      getVariable
      push '_x'
      getMember
      push 'xleft'
      getVariable
      lessThan
      not
      branchIfTrue label56
      push 'box0'
      getVariable
      push '_x', 'xleft'
      getVariable
      setMember
     label56:
      push 'box1'
      getVariable
      push '_x'
      getMember
      push 'xright'
      getVariable
      greaterThan
      not
      branchIfTrue label57
      push 'box1'
      getVariable
      push '_x', 'xright'
      getVariable
      setMember
     label57:
      branch label59
     label58:
      push 'p0', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      push 'this'
      getVariable
      push 'stat', 'i'
      getVariable
      add
      push 'wait'
      setMember
     label59:
      branch label64
     label60:
      push 'stat'
      getVariable
      push 'tired'
      equals
      not
      branchIfTrue label64
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      getMember
      increment
      setMember
      push 'c', 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      getMember
      setVariable
      push 'a', 'c'
      getVariable
      push 3
      divide
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      setVariable
      push 'a'
      getVariable
      push 2
      modulo
      push 0.0
      equals
      not
      branchIfTrue label61
      push 'p3', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      branch label62
     label61:
      push 'p0', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
     label62:
      push 'c'
      getVariable
      push 12
      greaterThan
      dup
      not
      branchIfTrue label63
      pop
      push 'this'
      getVariable
      push 'ene', 'i'
      getVariable
      add
      getMember
      push 0.0
      greaterThan
     label63:
      not
      branchIfTrue label64
      push 'p0', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      push 'this'
      getVariable
      push 'stat', 'i'
      getVariable
      add
      push 'wait'
      setMember
     label64:
      push 'this'
      getVariable
      push 'ene', 'i'
      getVariable
      add
      getMember
      push 1000
      lessThan
      not
      branchIfTrue label65
      push 'this'
      getVariable
      push 'ene', 'i'
      getVariable
      add
      push 'this'
      getVariable
      push 'ene', 'i'
      getVariable
      add
      getMember
      push 'this'
      getVariable
      push 'ea', 'i'
      getVariable
      add
      getMember
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      add
      setMember
     label65:
      push 'this'
      getVariable
      push 'dmg', 'i'
      getVariable
      add
      getMember
      push 0.0
      greaterThan
      not
      branchIfTrue label66
      push 'this'
      getVariable
      push 'dmg', 'i'
      getVariable
      add
      push 'this'
      getVariable
      push 'dmg', 'i'
      getVariable
      add
      getMember
      decrement
      setMember
     label66:
      push 'i', 'i'
      getVariable
      increment
      setVariable
      branch label5
     label67:
      push 'f', 1
      setVariable
      push 'stat1'
      getVariable
      push 'wait'
      equals
      not
      not
      branchIfTrue label68
      push 'f', 0.0
      setVariable
     label68:
      push 'ene1'
      getVariable
      push 0.0
      greaterThan
      not
      not
      branchIfTrue label69
      push 'f', 0.0
      setVariable
     label69:
      push 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 'cint'
      getVariable
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      push 0.0
      greaterThan
      not
      branchIfTrue label70
      push 'f', 0.0
      setVariable
     label70:
      push 'f'
      getVariable
      not
      branchIfTrue label82
      push 'stat1', 'punch'
      setVariable
      push 'p', 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 6
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      setVariable
      push 'ctac'
      getVariable
      push 1
      equals
      not
      branchIfTrue label72
      push 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 2
      multiply
      push 1
      lessThan
      not
      branchIfTrue label71
      push 'opc1'
      getVariable
      push 0.0
      equals
      not
      not
      branchIfTrue label71
      push 'p', 0.0
      setVariable
     label71:
      branch label79
     label72:
      push 'ctac'
      getVariable
      push 2
      equals
      not
      branchIfTrue label74
      push 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 3
      multiply
      push 1
      lessThan
      not
      branchIfTrue label73
      push 'opc1'
      getVariable
      push 4
      equals
      not
      not
      branchIfTrue label73
      push 'p', 4
      setVariable
     label73:
      branch label79
     label74:
      push 'ctac'
      getVariable
      push 3
      equals
      not
      branchIfTrue label76
      push 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 2
      multiply
      push 1
      lessThan
      not
      branchIfTrue label75
      push 'opc1'
      getVariable
      push 1
      equals
      not
      not
      branchIfTrue label75
      push 'p', 1
      setVariable
     label75:
      branch label79
     label76:
      push 'ctac'
      getVariable
      push 4
      equals
      not
      branchIfTrue label79
      push 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 3
      multiply
      push 2
      lessThan
      not
      branchIfTrue label79
      push 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 2
      multiply
      push 1
      lessThan
      not
      branchIfTrue label78
      push 'opc1'
      getVariable
      push 2
      equals
      not
      not
      branchIfTrue label77
      push 'p', 2
      setVariable
     label77:
      branch label79
     label78:
      push 'opc1'
      getVariable
      push 3
      equals
      not
      not
      branchIfTrue label79
      push 'p', 3
      setVariable
     label79:
      push 'punch1', 'p'
      getVariable
      setVariable
      push 'cnt1', 'this'
      getVariable
      push 'ppw', 'p'
      getVariable
      add
      getMember
      setVariable
      push 'step1', 0.0
      setVariable
      push 'p'
      getVariable
      push 3
      equals
      dup
      branchIfTrue label80
      pop
      push 'p'
      getVariable
      push 4
      equals
     label80:
      not
      branchIfTrue label81
      push 'p8', 1, 'this'
      getVariable
      push 'box1'
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      branch label82
     label81:
      push 'p5', 1, 'this'
      getVariable
      push 'box1'
      getMember
      push 'gotoAndStop'
      callMethod
      pop
     label82:
      push 'shad0'
      getVariable
      push '_x'
      getMember
      push 'box0'
      getVariable
      push '_x'
      getMember
      equals
      not
      not
      branchIfTrue label83
      push 'shad0'
      getVariable
      push '_x', 'box0'
      getVariable
      push '_x'
      getMember
      setMember
     label83:
      push 'shad1'
      getVariable
      push '_x'
      getMember
      push 'box1'
      getVariable
      push '_x'
      getMember
      equals
      not
      not
      branchIfTrue label84
      push 'shad1'
      getVariable
      push '_x', 'box1'
      getVariable
      push '_x'
      getMember
      setMember
     label84:
      push '_parent'
      getVariable
      push 'a1', 'dmg0'
      getVariable
      setMember
      push '_parent'
      getVariable
      push 'b1', 'dmg1'
      getVariable
      setMember
      push 'downer'
      getVariable
      push 0.0
      lessThan
      not
      not
      branchIfTrue label85
      gotoLabel 'down'
      play
      branch label87
     label85:
      push 'tm', 'tm'
      getVariable
      increment
      setVariable
      push 's', 'tm'
      getVariable
      push 10
      divide
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      setVariable
      push 's'
      getVariable
      push 'sec'
      getVariable
      equals
      not
      not
      branchIfTrue label86
      push 'sec', 's'
      getVariable
      setVariable
      push 0.0, 'timer'
      getVariable
      push 'play'
      callMethod
      pop
     label86:
      push 'sec'
      getVariable
      push 40
      lessThan
      not
      not
      branchIfTrue label87
      gotoLabel 'tup'
     label87:
    end // of frame 12

    frame 13
      push '', 4
      getProperty
      push 1
      subtract
      gotoAndPlay
    end // of frame 13

    frame 17
      constants 'cnt', 'step', 'stop', 'mcWaa0', 'gotoAndStop', 'start', 'mcWaa1'  
      push 'cnt', 0.0
      setVariable
      push 'step', 0.0
      setVariable
      push 'stop', 1, 'mcWaa0'
      getVariable
      push 'gotoAndStop'
      callMethod
      pop
      push 'start', 1, 'mcWaa1'
      getVariable
      push 'gotoAndStop'
      callMethod
      pop
    end // of frame 17

    frame 19
      constants 'cnt', 'step', 'p17', 'this', 'box', 'downer', 'gotoAndStop', 'p18', '', 'dcnt', 'winner', 'fin', 'gong', 'gotoAndPlay'  
      push 'cnt', 'cnt'
      getVariable
      increment
      setVariable
      push 'step'
      getVariable
      push 0.0
      equals
      not
      branchIfTrue label2
      push 'cnt'
      getVariable
      push 8
      greaterThan
      not
      branchIfTrue label1
      push 'cnt', 0.0
      setVariable
      push 'step', 'step'
      getVariable
      increment
      setVariable
      push 'p17', 1, 'this'
      getVariable
      push 'box', 'downer'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
     label1:
      branch label3
     label2:
      push 'step'
      getVariable
      push 1
      equals
      not
      branchIfTrue label3
      push 'cnt'
      getVariable
      push 3
      greaterThan
      not
      branchIfTrue label3
      push 'cnt', 0.0
      setVariable
      push 'step', 'step'
      getVariable
      increment
      setVariable
      push 'p18', 1, 'this'
      getVariable
      push 'box', 'downer'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
     label3:
      push 'step'
      getVariable
      push 2
      lessThan
      not
      branchIfTrue label4
      push '', 4
      getProperty
      push 1
      subtract
      gotoAndPlay
      branch label7
     label4:
      push 'this'
      getVariable
      push 'dcnt', 'downer'
      getVariable
      add
      push 'this'
      getVariable
      push 'dcnt', 'downer'
      getVariable
      add
      getMember
      increment
      setMember
      push 'this'
      getVariable
      push 'dcnt', 'downer'
      getVariable
      add
      getMember
      push 3
      lessThan
      not
      not
      branchIfTrue label7
      push 'winner', 'downer'
      getVariable
      push 0.0
      equals
      branchIfTrue label5
      push 0.0
      branch label6
     label5:
      push 1
     label6:
      setVariable
      gotoLabel 'winner'
      push 'fin', 1, 'gong'
      getVariable
      push 'gotoAndPlay'
      callMethod
      pop
     label7:
    end // of frame 19

    frame 21
      constants 'count', 'stand_count', 'wake_count', 'Math', 'random', 'floor', 'dx', 'this', 'box', 'downer', '_x', 'ref', 'dir', 'left', 'gotoAndStop', 'right', '_visible', 'nb', 'stat', 'walk', 'cnt', 'tc', 'res'  
      push 'count', 0.0
      setVariable
      push 'stand_count'
      getVariable
      push 5
      lessThan
      not
      branchIfTrue label1
      push 'stand_count', 5
      setVariable
     label1:
      push 'wake_count', 'stand_count'
      getVariable
      push 2
      subtract
      push 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 3
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      subtract
      setVariable
      push 'wake_count'
      getVariable
      push 1
      lessThan
      not
      branchIfTrue label2
      push 'wake_count', 1
      setVariable
     label2:
      push 'wake_count'
      getVariable
      push 10
      lessThan
      not
      not
      branchIfTrue label3
      push 'wake_count', 99
      setVariable
     label3:
      push 'stand_count'
      getVariable
      push 10
      greaterThan
      not
      branchIfTrue label4
      push 'stand_count', 99
      setVariable
     label4:
      push 'dx', 'this'
      getVariable
      push 'box', 'downer'
      getVariable
      add
      getMember
      push '_x'
      getMember
      setVariable
      push 'dx'
      getVariable
      push 60
      lessThan
      not
      branchIfTrue label5
      push 'ref'
      getVariable
      push '_x', 'dx'
      getVariable
      push 20
      add
      setMember
      push 'ref'
      getVariable
      push 'dir', -1
      setMember
      push 'left', 1, 'ref'
      getVariable
      push 'gotoAndStop'
      callMethod
      pop
      branch label6
     label5:
      push 'ref'
      getVariable
      push '_x', 'dx'
      getVariable
      push 20
      subtract
      setMember
      push 'ref'
      getVariable
      push 'dir', 1
      setMember
      push 'right', 1, 'ref'
      getVariable
      push 'gotoAndStop'
      callMethod
      pop
     label6:
      push 'ref'
      getVariable
      push '_visible', TRUE
      setMember
      push 'nb', 'downer'
      getVariable
      push 0.0
      equals
      branchIfTrue label7
      push 0.0
      branch label8
     label7:
      push 1
     label8:
      setVariable
      push 'this'
      getVariable
      push 'stat', 'nb'
      getVariable
      add
      push 'walk'
      setMember
      push 'this'
      getVariable
      push 'cnt', 'nb'
      getVariable
      add
      push 0.0
      setMember
      push 'tc', 0.0
      setVariable
      push 'res', 0.0
      setVariable
    end // of frame 21

    frame 23
      constants 'tc', 'count', 'wake_count', 'p19', 'this', 'box', 'downer', 'gotoAndStop', 'stand_count', 'p0', 'res', 'ref', 'play', 'cmes', 'stat', 'nb', 'walk', 'cnt', 'p1', 'p2', '_x', 'dir', 'shad', 'xleft', 'wait', 'xright', 'i', 'winner', 'fin', 'gong', 'gotoAndPlay', ''  
      push 'tc', 'tc'
      getVariable
      increment
      setVariable
      push 'tc'
      getVariable
      push 8
      greaterThan
      not
      branchIfTrue label4
      push 'tc', 0.0
      setVariable
      push 'count', 'count'
      getVariable
      increment
      setVariable
      push 'count'
      getVariable
      push 'wake_count'
      getVariable
      equals
      not
      branchIfTrue label1
      push 'p19', 1, 'this'
      getVariable
      push 'box', 'downer'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
     label1:
      push 'count'
      getVariable
      push 'stand_count'
      getVariable
      equals
      not
      branchIfTrue label2
      push 'p0', 1, 'this'
      getVariable
      push 'box', 'downer'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      push 'res', 1
      setVariable
     label2:
      push 'count'
      getVariable
      push 10
      greaterThan
      not
      branchIfTrue label3
      push 'res', 2
      setVariable
      branch label4
     label3:
      push 0.0, 'ref'
      getVariable
      push 'play'
      callMethod
      pop
      push 0.0, 'cmes'
      getVariable
      push 'play'
      callMethod
      pop
     label4:
      push 'this'
      getVariable
      push 'stat', 'nb'
      getVariable
      add
      getMember
      push 'walk'
      equals
      not
      branchIfTrue label13
      push 'this'
      getVariable
      push 'cnt', 'nb'
      getVariable
      add
      push 'this'
      getVariable
      push 'cnt', 'nb'
      getVariable
      add
      getMember
      increment
      setMember
      push 'this'
      getVariable
      push 'cnt', 'nb'
      getVariable
      add
      getMember
      push 3
      greaterThan
      not
      branchIfTrue label5
      push 'this'
      getVariable
      push 'cnt', 'nb'
      getVariable
      add
      push 0.0
      setMember
     label5:
      push 'this'
      getVariable
      push 'cnt', 'nb'
      getVariable
      add
      getMember
      setRegister r:0
      push 0.0
      strictEquals
      branchIfTrue label6
      push r:0, 1
      strictEquals
      branchIfTrue label7
      push r:0, 2
      strictEquals
      branchIfTrue label8
      push r:0, 3
      strictEquals
      branchIfTrue label9
      branch label10
     label6:
      push 'p0', 1, 'this'
      getVariable
      push 'box', 'nb'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      branch label10
     label7:
      push 'p1', 1, 'this'
      getVariable
      push 'box', 'nb'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      branch label10
     label8:
      push 'p2', 1, 'this'
      getVariable
      push 'box', 'nb'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      branch label10
     label9:
      push 'p1', 1, 'this'
      getVariable
      push 'box', 'nb'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      branch label10
     label10:
      push 'this'
      getVariable
      push 'box', 'nb'
      getVariable
      add
      getMember
      push '_x', 'this'
      getVariable
      push 'box', 'nb'
      getVariable
      add
      getMember
      push '_x'
      getMember
      push 'this'
      getVariable
      push 'dir', 'nb'
      getVariable
      add
      getMember
      push 2
      multiply
      subtract
      setMember
      push 'this'
      getVariable
      push 'shad', 'nb'
      getVariable
      add
      getMember
      push '_x', 'this'
      getVariable
      push 'box', 'nb'
      getVariable
      add
      getMember
      push '_x'
      getMember
      setMember
      push 'nb'
      getVariable
      push 0.0
      equals
      not
      branchIfTrue label12
      push 'this'
      getVariable
      push 'box', 'nb'
      getVariable
      add
      getMember
      push '_x'
      getMember
      push 'xleft'
      getVariable
      lessThan
      not
      branchIfTrue label11
      push 'this'
      getVariable
      push 'box', 'nb'
      getVariable
      add
      getMember
      push '_x', 'xleft'
      getVariable
      setMember
      push 'this'
      getVariable
      push 'stat', 'nb'
      getVariable
      add
      push 'wait'
      setMember
      push 'p0', 1, 'this'
      getVariable
      push 'box', 'nb'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
     label11:
      branch label13
     label12:
      push 'this'
      getVariable
      push 'box', 'nb'
      getVariable
      add
      getMember
      push '_x'
      getMember
      push 'xright'
      getVariable
      greaterThan
      not
      branchIfTrue label13
      push 'this'
      getVariable
      push 'box', 'nb'
      getVariable
      add
      getMember
      push '_x', 'xright'
      getVariable
      setMember
      push 'this'
      getVariable
      push 'stat', 'nb'
      getVariable
      add
      push 'wait'
      setMember
      push 'p0', 1, 'this'
      getVariable
      push 'box', 'nb'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
     label13:
      push 'res'
      getVariable
      push 1
      equals
      not
      branchIfTrue label16
      push 'i', 0.0
      setVariable
     label14:
      push 'i'
      getVariable
      push 2
      lessThan
      not
      branchIfTrue label15
      push 'this'
      getVariable
      push 'stat', 'i'
      getVariable
      add
      push 'wait'
      setMember
      push 'p0', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      push 'i', 'i'
      getVariable
      increment
      setVariable
      branch label14
     label15:
      push 'downer', -1
      setVariable
      branch label20
     label16:
      push 'res'
      getVariable
      push 2
      equals
      not
      branchIfTrue label19
      push 'winner', 'downer'
      getVariable
      push 0.0
      equals
      branchIfTrue label17
      push 0.0
      branch label18
     label17:
      push 1
     label18:
      setVariable
      gotoLabel 'winner'
      push 'fin', 1, 'gong'
      getVariable
      push 'gotoAndPlay'
      callMethod
      pop
      branch label20
     label19:
      push '', 4
      getProperty
      push 1
      subtract
      gotoAndPlay
     label20:
    end // of frame 23

    frame 25
      stop
      push 'fight', 1, 'ref'
      getVariable
      push 'gotoAndPlay'
      callMethod
      pop
    end // of frame 25

    frame 26
      constants 'dmg0', 'dmg1', 'n', 'downer', 'this', 'ene', 'ene_max'  
      push 'dmg0', 0.0
      setVariable
      push 'dmg1', 0.0
      setVariable
      push 'n', 'downer'
      getVariable
      push 0.0
      equals
      branchIfTrue label1
      push 0.0
      branch label2
     label1:
      push 1
     label2:
      setVariable
      push 'this'
      getVariable
      push 'ene', 'n'
      getVariable
      add
      push 'ene_max'
      getVariable
      setMember
      gotoLabel 'main'
      play
    end // of frame 26

    frame 28
      stop
      push 0.0, 'gong'
      getVariable
      push 'play'
      callMethod
      pop
    end // of frame 28

    frame 29
      constants 'stop', 'mcWaa0', 'gotoAndStop', 'mcWaa1', '_parent', 'stop_all_sound'  
      push 'stop', 1, 'mcWaa0'
      getVariable
      push 'gotoAndStop'
      callMethod
      pop
      push 'stop', 1, 'mcWaa1'
      getVariable
      push 'gotoAndStop'
      callMethod
      pop
      push 0.0, '_parent'
      getVariable
      push '_parent'
      getMember
      push 'stop_all_sound'
      callMethod
      pop
    end // of frame 29

    frame 30
      constants 'round'  
      stop
      push 'round'
      getVariable
      push 3
      lessThan
      not
      not
      branchIfTrue label1
      gotoLabel 'jud'
      play
      branch label2
     label1:
      push 'round', 'round'
      getVariable
      increment
      setVariable
      gotoLabel 'round'
     label2:
    end // of frame 30

    frame 33
      constants 'start', 'mcWaa0', 'gotoAndStop', 'winner', 'pt0', 'pt1', 'downer', 'i', 'this', 'cnt', 'stat', 'walk'  
      push 'start', 1, 'mcWaa0'
      getVariable
      push 'gotoAndStop'
      callMethod
      pop
      push 'winner', 'pt0'
      getVariable
      push 'pt1'
      getVariable
      greaterThan
      branchIfTrue label1
      push 1
      branch label2
     label1:
      push 0.0
     label2:
      setVariable
      push 'downer', -1
      setVariable
      push 'i', 0.0
      setVariable
     label3:
      push 'i'
      getVariable
      push 2
      lessThan
      not
      branchIfTrue label4
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      push 0.0
      setMember
      push 'this'
      getVariable
      push 'stat', 'i'
      getVariable
      add
      push 'walk'
      setMember
      push 'i', 'i'
      getVariable
      increment
      setVariable
      branch label3
     label4:
    end // of frame 33

    frame 35
      constants 'i', 'this', 'cnt', 'p0', 'box', 'gotoAndStop', 'p1', 'p2', '_x', 'dir', 'shad', 'xleft', 'stat', 'wait', 'xright', 'stat0', 'stat1', 'ref', ''  
      push 'i', 0.0
      setVariable
     label1:
      push 'i'
      getVariable
      push 2
      lessThan
      not
      branchIfTrue label11
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      getMember
      increment
      setMember
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      getMember
      push 3
      greaterThan
      not
      branchIfTrue label2
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      push 0.0
      setMember
     label2:
      push 'this'
      getVariable
      push 'cnt', 'i'
      getVariable
      add
      getMember
      setRegister r:0
      push 0.0
      strictEquals
      branchIfTrue label3
      push r:0, 1
      strictEquals
      branchIfTrue label4
      push r:0, 2
      strictEquals
      branchIfTrue label5
      push r:0, 3
      strictEquals
      branchIfTrue label6
      branch label7
     label3:
      push 'p0', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      branch label7
     label4:
      push 'p1', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      branch label7
     label5:
      push 'p2', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      branch label7
     label6:
      push 'p1', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      branch label7
     label7:
      push 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push '_x', 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push '_x'
      getMember
      push 'this'
      getVariable
      push 'dir', 'i'
      getVariable
      add
      getMember
      push 2
      multiply
      subtract
      setMember
      push 'this'
      getVariable
      push 'shad', 'i'
      getVariable
      add
      getMember
      push '_x', 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push '_x'
      getMember
      setMember
      push 'i'
      getVariable
      push 0.0
      equals
      not
      branchIfTrue label9
      push 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push '_x'
      getMember
      push 'xleft'
      getVariable
      lessThan
      not
      branchIfTrue label8
      push 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push '_x', 'xleft'
      getVariable
      setMember
      push 'this'
      getVariable
      push 'stat', 'i'
      getVariable
      add
      push 'wait'
      setMember
      push 'p0', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
     label8:
      branch label10
     label9:
      push 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push '_x'
      getMember
      push 'xright'
      getVariable
      greaterThan
      not
      branchIfTrue label10
      push 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push '_x', 'xright'
      getVariable
      setMember
      push 'this'
      getVariable
      push 'stat', 'i'
      getVariable
      add
      push 'wait'
      setMember
      push 'p0', 1, 'this'
      getVariable
      push 'box', 'i'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
     label10:
      push 'i', 'i'
      getVariable
      increment
      setVariable
      branch label1
     label11:
      push 'stat0'
      getVariable
      push 'wait'
      equals
      dup
      not
      branchIfTrue label12
      pop
      push 'stat1'
      getVariable
      push 'wait'
      equals
     label12:
      not
      branchIfTrue label13
      push 'ref'
      getVariable
      push '_x', 60
      setMember
      gotoLabel 'winner'
      branch label14
     label13:
      push '', 4
      getProperty
      push 1
      subtract
      gotoAndPlay
     label14:
    end // of frame 35

    frame 39
      stop
      push 'winner', 1, 'ref'
      getVariable
      push 'gotoAndPlay'
      callMethod
      pop
    end // of frame 39

    frame 42
      push 'p8', 1, 'this'
      getVariable
      push 'box', 'winner'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
    end // of frame 42

    frame 43
      constants 'p9', 'this', 'box', 'winner', 'gotoAndStop', 'downer', 'nb', 'p15', 'stop', 'mcWaa0', 'start', 'mcWaa1', 'bisi_', '_parent', 'start_sound'  
      stop
      push 'p9', 1, 'this'
      getVariable
      push 'box', 'winner'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
      push 'downer'
      getVariable
      push 0.0
      lessThan
      not
      branchIfTrue label3
      push 'nb', 'winner'
      getVariable
      push 0.0
      equals
      branchIfTrue label1
      push 0.0
      branch label2
     label1:
      push 1
     label2:
      setVariable
      push 'p15', 1, 'this'
      getVariable
      push 'box', 'nb'
      getVariable
      add
      getMember
      push 'gotoAndStop'
      callMethod
      pop
     label3:
      push 'stop', 1, 'mcWaa0'
      getVariable
      push 'gotoAndStop'
      callMethod
      pop
      push 'start', 1, 'mcWaa1'
      getVariable
      push 'gotoAndStop'
      callMethod
      pop
      push 'bisi_', 1, '_parent'
      getVariable
      push '_parent'
      getMember
      push 'start_sound'
      callMethod
      pop
    end // of frame 43

    frame 48
      constants 'timer', '_visible', '_parent', 'stop_all_sound', 'round', 'downer', 'winner', 'after_match'  
      stop
      push 'timer'
      getVariable
      push '_visible', FALSE
      setMember
      push 0.0, '_parent'
      getVariable
      push '_parent'
      getMember
      push 'stop_all_sound'
      callMethod
      pop
      push 'round'
      getVariable
      push 'downer'
      getVariable
      push 'winner'
      getVariable
      push 3, '_parent'
      getVariable
      push 'after_match'
      callMethod
      pop
    end // of frame 48
  end // of defineMovieClip 324

  defineMovieClip 326 // total frames: 1
  end // of defineMovieClip 326

  defineButton 335

    on keyPress _SPACE
      push 'lev', 1, '_parent'
      getVariable
      push 'gotoAndStop'
      callMethod
      pop
    end
  end // of defineButton 335

  defineMovieClip 336 // total frames: 28

    frame 27
      stop
    end // of frame 27
  end // of defineMovieClip 336

  defineMovieClip 348 // total frames: 1
  end // of defineMovieClip 348

  defineMovieClip 349 // total frames: 4

    frame 0
      stop
      push '', 7, FALSE
      setProperty
    end // of frame 0

    frame 1
      play
      push '', 7, TRUE
      setProperty
    end // of frame 1
  end // of defineMovieClip 349

  defineMovieClip 359 // total frames: 37

    frame 5
      constants 'hit', 'boxerdata', 'def', 'stm', 'spt', 'jab', 'cross', 'hook', 'upper', 'body', 'lup', '_parent', 'mes', '', 'RANK UP!', 'RANK DOWN...', 'draw_spec'  
      function2 draw_spec () (r:1='_parent')
        push 99
        setRegister r:2
        pop
        push 'hit', r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'hit'
        getMember
        setVariable
        push 'def', r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'def'
        getMember
        setVariable
        push 'stm', r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'stm'
        getMember
        setVariable
        push 'spt', r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'spt'
        getMember
        setVariable
        push 'jab', r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'jab'
        getMember
        setVariable
        push 'cross', r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'cross'
        getMember
        setVariable
        push 'hook', r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'hook'
        getMember
        setVariable
        push 'upper', r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'upper'
        getMember
        setVariable
        push 'body', r:_parent, 'boxerdata'
        getMember
        push r:2
        getMember
        push 'body'
        getMember
        setVariable
      end // of function draw_spec

      push 'lup', '_parent'
      getVariable
      push 'lup'
      getMember
      setVariable
      push 'mes', ''
      setVariable
      push 'lup'
      getVariable
      push 0.0
      greaterThan
      not
      branchIfTrue label1
      push 'mes', 'RANK UP!'
      setVariable
     label1:
      push 'lup'
      getVariable
      push 0.0
      lessThan
      not
      branchIfTrue label2
      push 'mes', 'RANK DOWN...'
      setVariable
     label2:
      push 0.0, 'draw_spec'
      callFunction
      pop
    end // of frame 5

    frame 10
      constants 'lup', '_parent', 'jingle-100511-fanfare03-mp3', 'start_sound', 'jingle-100511-surprise04-mp3'  
      push 'lup', '_parent'
      getVariable
      push 'lup'
      getMember
      setVariable
      push 'lup'
      getVariable
      push 0.0
      greaterThan
      not
      branchIfTrue label1
      push 'jingle-100511-fanfare03-mp3', 1, '_parent'
      getVariable
      push '_parent'
      getMember
      push 'start_sound'
      callMethod
      pop
     label1:
      push 'lup'
      getVariable
      push 0.0
      lessThan
      not
      branchIfTrue label2
      push 'jingle-100511-surprise04-mp3', 1, '_parent'
      getVariable
      push '_parent'
      getMember
      push 'start_sound'
      callMethod
      pop
     label2:
    end // of frame 10

    frame 22
      push 'lup'
      getVariable
      push 0.0
      equals
      not
      branchIfTrue label1
      gotoLabel 'end'
     label1:
    end // of frame 22

    frame 23
      constants 'n', 'Math', 'random', 'floor', 'bn', '_parent', 'user_bn', 'lup', 'a', 'levup', 'start_sound', 'plist', 'Array', 'c', 'boxerdata', 'hit', 'def', 'stm', 'spt', 'jab', 'cross', 'hook', 'upper', 'body', 'r', 'levdown', 'draw_spec', 'this', 'tf', 'textColor', 'kira', '_y', 'gotoAndPlay'  
      push 'n', 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 9
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      setVariable
      push 'bn', '_parent'
      getVariable
      push 'user_bn'
      getMember
      setVariable
      push 'lup'
      getVariable
      push 0.0
      greaterThan
      not
      branchIfTrue label11
      push 'lup', 'lup'
      getVariable
      decrement
      setVariable
      push 'a', 1
      setVariable
      push 'levup', 1, '_parent'
      getVariable
      push '_parent'
      getMember
      push 'start_sound'
      callMethod
      pop
      push 'plist', 0.0, 'Array'
      new
      setVariable
      push 'c', 0.0
      setVariable
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'hit'
      getMember
      push 9
      lessThan
      not
      branchIfTrue label1
      push 'plist'
      getVariable
      push 'c'
      getVariable
      push 0.0
      setMember
      push 'c', 'c'
      getVariable
      increment
      setVariable
     label1:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'def'
      getMember
      push 9
      lessThan
      not
      branchIfTrue label2
      push 'plist'
      getVariable
      push 'c'
      getVariable
      push 1
      setMember
      push 'c', 'c'
      getVariable
      increment
      setVariable
     label2:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'stm'
      getMember
      push 9
      lessThan
      not
      branchIfTrue label3
      push 'plist'
      getVariable
      push 'c'
      getVariable
      push 2
      setMember
      push 'c', 'c'
      getVariable
      increment
      setVariable
     label3:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'spt'
      getMember
      push 9
      lessThan
      not
      branchIfTrue label4
      push 'plist'
      getVariable
      push 'c'
      getVariable
      push 3
      setMember
      push 'c', 'c'
      getVariable
      increment
      setVariable
     label4:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'jab'
      getMember
      push 9
      lessThan
      not
      branchIfTrue label5
      push 'plist'
      getVariable
      push 'c'
      getVariable
      push 4
      setMember
      push 'c', 'c'
      getVariable
      increment
      setVariable
     label5:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'cross'
      getMember
      push 9
      lessThan
      not
      branchIfTrue label6
      push 'plist'
      getVariable
      push 'c'
      getVariable
      push 5
      setMember
      push 'c', 'c'
      getVariable
      increment
      setVariable
     label6:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'hook'
      getMember
      push 9
      lessThan
      not
      branchIfTrue label7
      push 'plist'
      getVariable
      push 'c'
      getVariable
      push 6
      setMember
      push 'c', 'c'
      getVariable
      increment
      setVariable
     label7:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'upper'
      getMember
      push 9
      lessThan
      not
      branchIfTrue label8
      push 'plist'
      getVariable
      push 'c'
      getVariable
      push 7
      setMember
      push 'c', 'c'
      getVariable
      increment
      setVariable
     label8:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'body'
      getMember
      push 9
      lessThan
      not
      branchIfTrue label9
      push 'plist'
      getVariable
      push 'c'
      getVariable
      push 8
      setMember
      push 'c', 'c'
      getVariable
      increment
      setVariable
     label9:
      push 'c'
      getVariable
      push 0.0
      greaterThan
      not
      branchIfTrue label10
      push 'r', 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 'c'
      getVariable
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      setVariable
      push 'n', 'plist'
      getVariable
      push 'r'
      getVariable
      getMember
      setVariable
     label10:
      branch label12
     label11:
      push 'lup', 'lup'
      getVariable
      increment
      setVariable
      push 'a', -1
      setVariable
      push 'levdown', 1, '_parent'
      getVariable
      push '_parent'
      getMember
      push 'start_sound'
      callMethod
      pop
     label12:
      push 'n'
      getVariable
      setRegister r:0
      push 0.0
      strictEquals
      branchIfTrue label13
      push r:0, 1
      strictEquals
      branchIfTrue label14
      push r:0, 2
      strictEquals
      branchIfTrue label15
      push r:0, 3
      strictEquals
      branchIfTrue label16
      push r:0, 4
      strictEquals
      branchIfTrue label17
      push r:0, 5
      strictEquals
      branchIfTrue label18
      push r:0, 6
      strictEquals
      branchIfTrue label19
      push r:0, 7
      strictEquals
      branchIfTrue label20
      push r:0, 8
      strictEquals
      branchIfTrue label21
      branch label22
     label13:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'hit', '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'hit'
      getMember
      push 'a'
      getVariable
      add
      setMember
      branch label22
     label14:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'def', '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'def'
      getMember
      push 'a'
      getVariable
      add
      setMember
      branch label22
     label15:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'stm', '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'stm'
      getMember
      push 'a'
      getVariable
      add
      setMember
      branch label22
     label16:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'spt', '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'spt'
      getMember
      push 'a'
      getVariable
      add
      setMember
      branch label22
     label17:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'jab', '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'jab'
      getMember
      push 'a'
      getVariable
      add
      setMember
      branch label22
     label18:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'cross', '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'cross'
      getMember
      push 'a'
      getVariable
      add
      setMember
      branch label22
     label19:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'hook', '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'hook'
      getMember
      push 'a'
      getVariable
      add
      setMember
      branch label22
     label20:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'upper', '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'upper'
      getMember
      push 'a'
      getVariable
      add
      setMember
      branch label22
     label21:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'body', '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'body'
      getMember
      push 'a'
      getVariable
      add
      setMember
      branch label22
     label22:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'hit'
      getMember
      push 0.0
      lessThan
      not
      branchIfTrue label23
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'hit', 0.0
      setMember
     label23:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'def'
      getMember
      push 0.0
      lessThan
      not
      branchIfTrue label24
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'def', 0.0
      setMember
     label24:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'stm'
      getMember
      push 0.0
      lessThan
      not
      branchIfTrue label25
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'stm', 0.0
      setMember
     label25:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'spt'
      getMember
      push 0.0
      lessThan
      not
      branchIfTrue label26
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'spt', 0.0
      setMember
     label26:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'jab'
      getMember
      push 0.0
      lessThan
      not
      branchIfTrue label27
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'jab', 0.0
      setMember
     label27:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'cross'
      getMember
      push 0.0
      lessThan
      not
      branchIfTrue label28
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'cross', 0.0
      setMember
     label28:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'hook'
      getMember
      push 0.0
      lessThan
      not
      branchIfTrue label29
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'hook', 0.0
      setMember
     label29:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'upper'
      getMember
      push 0.0
      lessThan
      not
      branchIfTrue label30
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'upper', 0.0
      setMember
     label30:
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'body'
      getMember
      push 0.0
      lessThan
      not
      branchIfTrue label31
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'body', 0.0
      setMember
     label31:
      push 0.0, 'draw_spec'
      callFunction
      pop
      push 'this'
      getVariable
      push 'tf', 'n'
      getVariable
      add
      getMember
      push 'textColor', 16776960
      setMember
      push 'kira'
      getVariable
      push '_y', 35, 'n'
      getVariable
      push 16
      multiply
      add
      setMember
      push 2, 1, 'kira'
      getVariable
      push 'gotoAndPlay'
      callMethod
      pop
    end // of frame 23

    frame 30
      push 'lup'
      getVariable
      push 0.0
      equals
      not
      not
      branchIfTrue label1
      gotoLabel 'up'
      play
     label1:
    end // of frame 30

    frame 32
      constants 'after_level', '_parent', 'stop_all_sound', '', 'next', 'mcSelecter', 'init'  
      function2 after_select ('curs') (r:1='_parent')
        push 0.0, r:_parent, 'after_level'
        callMethod
        pop
      end // of function after_select

      stop
      push 0.0, '_parent'
      getVariable
      push '_parent'
      getMember
      push 'stop_all_sound'
      callMethod
      pop
      push '', 'next', 2, 'mcSelecter'
      getVariable
      push 'init'
      callMethod
      pop
    end // of frame 32
  end // of defineMovieClip 359

  defineMovieClip 362 // total frames: 1
  end // of defineMovieClip 362

  defineMovieClip 365 // total frames: 24

    frame 0
      constants 'rec', 'WIN ', '_parent', 'win_c', '    Loss ', 'lose_c', '    KO ', 'ko_c'  
      push 'rec', 'WIN ', '_parent'
      getVariable
      push 'win_c'
      getMember
      add
      push '    Loss '
      add
      push '_parent'
      getVariable
      push 'lose_c'
      getMember
      add
      push '    KO '
      add
      push '_parent'
      getVariable
      push 'ko_c'
      getMember
      add
      setVariable
    end // of frame 0

    frame 1
    end // of frame 1

    frame 12
      constants 'next_match', 'retire', '_parent', 'can_retire', 'RETIRE', 'CONTINUE', 'mcSelecter', 'init', '', 'mes0', 'You can\'t hit the same punch repeatedly. Assemble the combination with different punches.', 'mes1', 'Hooks and uppers can be lucky punches.', 'mes2', 'Body blows the opponent\'s stamina. It will come into effect later.', 'mes3', 'If you catch up with the rope, it will be easier to hit the punch.', 'mes4', 'If you hit the punches in a row, the damage will increase.', 'mes5', 'Punches are easy to hit when you are tired and breathing on your shoulders.', 'mes6', 'The jab and body are easy to hit, but you can\'t take down.', 'lang', 'You won\'t land hits by using the same punches. You need to mix them up in combinations.', 'Hooks and uppercuts sometimes land lucky hits.', 'Body blows sap your opponent\'s stamina, making it easier to knock them out.', 'When your opponent is up on the ropes, it\'s easier to land punches.', 'Consecutive hits cause more damage.', 'When your opponent is tired, it\'s easier to land punches.', 'It\'s easy to land jabs and body blows, but they won\'t knock your opponent down.', 'mes', 'this', 'Math', 'random', 'floor'  
      function2 after_select (r:2='curs') (r:1='_parent')
        push r:curs, 0.0
        equals
        not
        branchIfTrue label1
        push 0.0, r:_parent, 'next_match'
        callMethod
        pop
        branch label2
       label1:
        push 0.0, r:_parent, 'retire'
        callMethod
        pop
       label2:
      end // of function after_select

      stop
      push '_parent'
      getVariable
      push 'can_retire'
      getMember
      not
      branchIfTrue label3
      push 'RETIRE', 'CONTINUE', 2, 'mcSelecter'
      getVariable
      push 'init'
      callMethod
      pop
      branch label4
     label3:
      push '', 'CONTINUE', 2, 'mcSelecter'
      getVariable
      push 'init'
      callMethod
      pop
     label4:
      push 'mes0', 'You can\'t hit the same punch repeatedly. Assemble the combination with different punches.'
      setVariable
      push 'mes1', 'Hooks and uppers can be lucky punches.'
      setVariable
      push 'mes2', 'Body blows the opponent\'s stamina. It will come into effect later.'
      setVariable
      push 'mes3', 'If you catch up with the rope, it will be easier to hit the punch.'
      setVariable
      push 'mes4', 'If you hit the punches in a row, the damage will increase.'
      setVariable
      push 'mes5', 'Punches are easy to hit when you are tired and breathing on your shoulders.'
      setVariable
      push 'mes6', 'The jab and body are easy to hit, but you can\'t take down.'
      setVariable
      push '_parent'
      getVariable
      push '_parent'
      getMember
      push 'lang'
      getMember
      push 1
      equals
      not
      branchIfTrue label5
      push 'mes0', 'You won\'t land hits by using the same punches. You need to mix them up in combinations.'
      setVariable
      push 'mes1', 'Hooks and uppercuts sometimes land lucky hits.'
      setVariable
      push 'mes2', 'Body blows sap your opponent\'s stamina, making it easier to knock them out.'
      setVariable
      push 'mes3', 'When your opponent is up on the ropes, it\'s easier to land punches.'
      setVariable
      push 'mes4', 'Consecutive hits cause more damage.'
      setVariable
      push 'mes5', 'When your opponent is tired, it\'s easier to land punches.'
      setVariable
      push 'mes6', 'It\'s easy to land jabs and body blows, but they won\'t knock your opponent down.'
      setVariable
     label5:
      push 'mes', 'this'
      getVariable
      push 'mes', 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 7
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      add
      getMember
      setVariable
    end // of frame 12
  end // of defineMovieClip 365

  defineMovieClip 376 // total frames: 5

    frame 0
      stop
    end // of frame 0
  end // of defineMovieClip 376

  defineMovieClip 377 // total frames: 26

    frame 0
      constants 'ot', 'onEnterFrame'  
      stop
      push 'ot'
      getTimer
      setVariable
      push 'onEnterFrame'
      function ()
        getTimer
        push 'ot'
        getVariable
        push 3000
        add
        greaterThan
        not
        branchIfTrue label1
        push 'onEnterFrame'
        delete2
        pop
        play
       label1:
      end // of function 

      setVariable
    end // of frame 0

    frame 12
      constants 'graph', '_currentframe', 'ot', 'onEnterFrame'  
      stop
      push 'graph'
      getVariable
      push '_currentframe'
      getMember
      push 5
      lessThan
      not
      branchIfTrue label2
      push 'ot'
      getTimer
      setVariable
      push 'onEnterFrame'
      function ()
        getTimer
        push 'ot'
        getVariable
        push 10000
        add
        greaterThan
        not
        branchIfTrue label1
        push 'onEnterFrame'
        delete2
        pop
        play
       label1:
      end // of function 

      setVariable
     label2:
    end // of frame 12

    frame 25
      push 0.0, 'graph'
      getVariable
      push 'nextFrame'
      callMethod
      pop
    end // of frame 25
  end // of defineMovieClip 377
  
  // unknown tag 88 length 103

  defineMovieClip 380 // total frames: 1

    frame 0
      push '', 7, FALSE
      setProperty
    end // of frame 0
  end // of defineMovieClip 380

  defineMovieClip 382 // total frames: 1
  end // of defineMovieClip 382

  defineMovieClip 384 // total frames: 67

    frame 41
      constants 'win_c', 'lose_c', 'ko_c', 'ta', 'Array', 'n', 'Your Record', '', 'i', '_parent', 'match_c', 'record', 'winner', 'WIN    ', 'LOSS    ', 'bn', 'boxerdata', 'nam', '    R', 'r', 'downer', '    KO', 'Knock Out    ', 'PROGRAM', 'GAMEDESIGN', 'GRAPHICS', 'SKIPMORE', 'MUSIC', 'PANIC PUMPKIN', 'THANK YOU FOR PLAYING!', '/E', 'cnt', 'mn', 'tn', 'fin', 'onEnterFrame', 'mc', '_y', '_visible', 'txt', 'substr', 'WIN', 'tf', 'textColor', 'LOSS'  
      stop
      push 'win_c', 0.0
      setVariable
      push 'lose_c', 0.0
      setVariable
      push 'ko_c', 0.0
      setVariable
      push 'ta', 0.0, 'Array'
      new
      setVariable
      push 'n', 0.0
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push 'Your Record'
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'i', 0.0
      setVariable
     label1:
      push 'i'
      getVariable
      push '_parent'
      getVariable
      push 'match_c'
      getMember
      lessThan
      not
      branchIfTrue label5
      push '_parent'
      getVariable
      push 'record'
      getMember
      push 'i'
      getVariable
      getMember
      push 'winner'
      getMember
      push 0.0
      equals
      not
      branchIfTrue label2
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push 'WIN    '
      setMember
      push 'win_c', 'win_c'
      getVariable
      increment
      setVariable
      branch label3
     label2:
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push 'LOSS    '
      setMember
      push 'lose_c', 'lose_c'
      getVariable
      increment
      setVariable
     label3:
      push 'bn', '_parent'
      getVariable
      push 'record'
      getMember
      push 'i'
      getVariable
      getMember
      push 'bn'
      getMember
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      getMember
      push '_parent'
      getVariable
      push 'boxerdata'
      getMember
      push 'bn'
      getVariable
      getMember
      push 'nam'
      getMember
      add
      setMember
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      getMember
      push '    R'
      add
      setMember
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      getMember
      push '_parent'
      getVariable
      push 'record'
      getMember
      push 'i'
      getVariable
      getMember
      push 'r'
      getMember
      add
      setMember
      push '_parent'
      getVariable
      push 'record'
      getMember
      push 'i'
      getVariable
      getMember
      push 'downer'
      getMember
      push 1
      equals
      not
      branchIfTrue label4
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      getMember
      push '    KO'
      add
      setMember
      push 'ko_c', 'ko_c'
      getVariable
      increment
      setVariable
     label4:
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'i', 'i'
      getVariable
      increment
      setVariable
      branch label1
     label5:
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push 'WIN    ', 'win_c'
      getVariable
      add
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push 'LOSS    ', 'lose_c'
      getVariable
      add
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push 'Knock Out    ', 'ko_c'
      getVariable
      add
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push 'PROGRAM'
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push 'GAMEDESIGN'
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push 'GRAPHICS'
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push 'SKIPMORE'
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push 'GAMEDESIGN'
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push 'MUSIC'
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push 'PANIC PUMPKIN'
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push 'THANK YOU FOR PLAYING!'
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push ''
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'ta'
      getVariable
      push 'n'
      getVariable
      push '/E'
      setMember
      push 'n', 'n'
      getVariable
      increment
      setVariable
      push 'cnt', 0.0
      setVariable
      push 'mn', 0.0
      setVariable
      push 'tn', 0.0
      setVariable
      push 'fin', 0.0
      setVariable
      push 'onEnterFrame'
      function ()
        push 'cnt', 'cnt'
        getVariable
        increment
        setVariable
        push 'fin'
        getVariable
        push 0.0
        equals
        not
        branchIfTrue label11
        push 'cnt'
        getVariable
        push 12
        lessThan
        not
        not
        branchIfTrue label10
        push 'cnt', 0.0
        setVariable
        push 'mc', 'mc', 'mn'
        getVariable
        add
        getVariable
        varEquals
        push 'mc'
        getVariable
        push '_y', 400
        setMember
        push 'mc'
        getVariable
        push '_visible', TRUE
        setMember
        push 'mc'
        getVariable
        push 'txt', 'ta'
        getVariable
        push 'tn'
        getVariable
        getMember
        setMember
        push 3, 0.0, 2, 'ta'
        getVariable
        push 'tn'
        getVariable
        getMember
        push 'substr'
        callMethod
        push 'WIN'
        equals
        not
        branchIfTrue label6
        push 'mc'
        getVariable
        push 'tf'
        getMember
        push 'textColor', 16776960
        setMember
        branch label8
       label6:
        push 4, 0.0, 2, 'ta'
        getVariable
        push 'tn'
        getVariable
        getMember
        push 'substr'
        callMethod
        push 'LOSS'
        equals
        not
        branchIfTrue label7
        push 'mc'
        getVariable
        push 'tf'
        getMember
        push 'textColor', 65535
        setMember
        branch label8
       label7:
        push 'mc'
        getVariable
        push 'tf'
        getMember
        push 'textColor', 16777215
        setMember
       label8:
        push 'mn', 'mn'
        getVariable
        increment
        setVariable
        push 'mn'
        getVariable
        push 16
        lessThan
        not
        not
        branchIfTrue label9
        push 'mn', 0.0
        setVariable
       label9:
        push 'tn', 'tn'
        getVariable
        increment
        setVariable
        push 'ta'
        getVariable
        push 'tn'
        getVariable
        getMember
        push '/E'
        equals
        not
        branchIfTrue label10
        push 'fin', 1
        setVariable
       label10:
        branch label12
       label11:
        push 'cnt'
        getVariable
        push 50
        greaterThan
        not
        branchIfTrue label12
        push 'onEnterFrame'
        delete2
        pop
        gotoLabel 'link'
       label12:
        push 'i', 0.0
        varEquals
       label13:
        push 'i'
        getVariable
        push 16
        lessThan
        not
        branchIfTrue label15
        push 'mc', 'mc', 'i'
        getVariable
        add
        getVariable
        varEquals
        push 'mc'
        getVariable
        push '_y', 'mc'
        getVariable
        push '_y'
        getMember
        push 2
        subtract
        setMember
        push 'mc'
        getVariable
        push '_y'
        getMember
        push 0.0
        greaterThan
        not
        not
        branchIfTrue label14
        push 'mc'
        getVariable
        push '_visible', FALSE
        setMember
       label14:
        push 'i', 'i'
        getVariable
        increment
        setVariable
        branch label13
       label15:
      end // of function 

      setVariable
    end // of frame 41

    frame 45
      function after_select ('curs')
        getURL 'http://www.gamedesign.jp/' ''
      end // of function after_select

      stop
      push '', 'End', 2, 'selecter'
      getVariable
      push 'init'
      callMethod
      pop
    end // of frame 45
  end // of defineMovieClip 384

  defineMovieClip 385 // total frames: 60

    frame 0
      push 'boxerdata0', 'Holyfield_0_0_0_0_0_0_0_0_0_7_8_8_0_7_2_4_3_'
      setVariable
      push 'boxerdata1', 'Jones_0_0_0_0_0_0_0_0_0_9_7_7_0_8_2_2_2_'
      setVariable
      push 'boxerdata2', 'Tyson_0_0_0_0_0_0_0_0_0_9_9_9_0_9_2_2_1_'
      setVariable
      push 'boxerdata3', 'Ali_0_0_0_0_0_0_0_0_0_8_7_6_0_4_2_0_0_'
      setVariable
      push 'boxerdata4', 'Chavez_0_0_0_0_0_0_0_0_0_8_8_7_0_0_0_0_4_'
      setVariable
      push 'boxerdata5', 'Robinson_0_0_0_0_0_0_0_0_0_7_7_9_0_7_2_1_1_'
      setVariable
      push 'boxerdata6', 'Foreman_0_0_0_0_0_0_0_0_0_8_7_9_0_6_2_4_3_'
      setVariable
      push 'boxerdata7', 'Duran_0_0_0_0_0_0_0_0_0_0_0_9_4_5_1_1_0_'
      setVariable
      push 'boxerdata8', 'Leonard_0_0_0_0_0_0_0_0_0_8_6_6_0_2_2_3_2_'
      setVariable
      push 'boxerdata9', 'Hearns_0_0_9_9_6_6_3_6_9_7_5_4_0_8_2_3_1_'
      setVariable
      push 'boxerdata10', 'Lopez_0_0_7_8_8_7_4_8_7_8_7_5_0_4_1_1_0_'
      setVariable
      push 'boxerdata11', 'Yuri_0_0_7_6_6_6_0_7_8_5_6_7_0_8_0_0_1_'
      setVariable
      push 'boxerdata12', 'Holmes_0_0_0_0_0_0_0_0_7_7_4_3_3_7_2_2_3_'
      setVariable
      push 'boxerdata13', 'Hagler_0_0_0_0_0_0_0_0_0_5_7_6_0_2_2_4_1_'
      setVariable
      push 'boxerdata14', 'Pep_0_0_3_1_5_7_0_7_7_5_8_1_0_5_0_1_0_'
      setVariable
      push 'boxerdata15', 'Marciano_0_0_9_5_4_3_3_6_7_7_8_8_0_0_0_1_0_'
      setVariable
      push 'boxerdata16', 'Louis_0_0_8_7_7_8_3_5_7_7_7_9_0_2_2_1_1_'
      setVariable
      push 'boxerdata17', 'Khaosai_0_0_5_4_6_9_2_7_8_7_4_6_0_3_1_1_2_'
      setVariable
      push 'boxerdata18', 'Olivares_9_9_5_7_8_5_3_7_3_9_9_5_0_2_1_3_1_'
      setVariable
      push 'boxerdata19', 'Frazier_8_6_9_7_8_9_3_5_6_9_7_9_3_7_2_2_2_'
      setVariable
      push 'boxerdata20', 'Armstrong_7_9_5_3_6_9_3_5_7_8_7_8_3_3_2_0_0_'
      setVariable
      push 'boxerdata21', 'Monzon_7_9_6_8_7_7_4_6_7_8_6_4_0_8_0_3_4_'
      setVariable
      push 'boxerdata22', 'Zarate_7_8_5_4_7_8_4_9_6_8_4_4_0_3_1_3_2_'
      setVariable
      push 'boxerdata23', 'Arguello_8_9_7_7_6_5_4_7_9_7_6_4_4_7_0_1_3_'
      setVariable
      push 'boxerdata24', 'McCallum_7_8_3_5_9_5_1_6_6_3_4_9_0_1_2_2_1_'
      setVariable
      push 'boxerdata25', 'Takehara_6_5_3_9_5_6_0_7_7_6_4_5_0_8_1_0_1_'
      setVariable
      push 'boxerdata26', 'Canto_8_8_7_6_9_8_3_6_7_6_6_5_0_0_1_1_3_'
      setVariable
      push 'boxerdata27', 'Hopkins_9_5_2_5_5_8_0_9_8_5_3_5_0_5_2_4_1_'
      setVariable
      push 'boxerdata28', 'Gushiken_9_7_7_5_8_7_0_6_6_9_7_6_0_7_1_3_0_'
      setVariable
      push 'boxerdata29', 'Pacquiao_5_9_6_8_3_6_4_5_6_9_7_5_0_4_1_1_2_'
      setVariable
      push 'boxerdata30', 'Whitaker_4_9_9_7_5_1_3_4_5_3_5_3_0_2_2_2_1_'
      setVariable
      push 'boxerdata31', 'Trinidad_5_7_8_4_6_9_4_9_3_7_2_5_0_6_2_2_2_'
      setVariable
      push 'boxerdata32', 'Calzaghe_7_9_6_5_5_7_3_6_5_6_7_6_0_2_0_2_1_'
      setVariable
      push 'boxerdata33', 'Freitas_5_9_5_3_4_5_3_7_4_8_7_2_0_0_1_1_4_'
      setVariable
      push 'boxerdata34', 'LaMotta_6_7_3_9_9_9_3_2_5_9_6_7_0_0_0_1_1_'
      setVariable
      push 'boxerdata35', 'Barrera_7_6_8_1_8_6_4_5_6_7_9_2_0_6_1_0_2_'
      setVariable
      push 'boxerdata36', 'Mosley_6_9_8_6_5_9_4_9_8_5_4_7_0_0_2_2_1_'
      setVariable
      push 'boxerdata37', 'Bowe_7_6_6_9_4_3_3_7_8_5_5_2_0_0_2_2_0_'
      setVariable
      push 'boxerdata38', 'Mayweather_6_9_7_6_7_7_0_1_3_4_5_4_0_7_2_2_1_'
      setVariable
      push 'boxerdata39', 'Douglas_6_5_6_3_3_2_3_6_7_8_7_6_0_7_2_2_0_'
      setVariable
      push 'boxerdata40', 'Hamed_6_6_8_3_6_7_4_6_6_7_7_5_0_3_1_2_1_'
      setVariable
      push 'boxerdata41', 'Oba_7_5_8_7_8_9_0_7_6_8_5_3_0_8_1_2_0_'
      setVariable
      push 'boxerdata42', 'Sanchez_7_9_9_7_7_6_4_5_4_5_6_4_0_0_0_3_3_'
      setVariable
      push 'boxerdata43', 'Donaire_7_8_9_6_7_3_3_7_4_6_7_6_0_0_1_1_2_'
      setVariable
      push 'boxerdata44', 'Spinks_6_7_9_0_6_5_3_6_9_6_4_9_0_2_2_2_0_'
      setVariable
      push 'boxerdata45', 'Oscar_6_4_4_6_5_9_4_7_5_6_7_3_0_7_1_1_2_'
      setVariable
      push 'boxerdata46', 'Saensak_9_4_4_6_7_9_2_6_5_7_5_6_0_3_1_3_2_'
      setVariable
      push 'boxerdata47', 'Khaokor_4_4_4_6_7_8_2_9_9_4_9_7_0_4_1_1_2_'
      setVariable
      push 'boxerdata48', 'Tatsuyoshi_7_3_7_5_2_7_0_5_7_8_7_9_0_8_1_0_0_'
      setVariable
      push 'boxerdata49', 'Dempsey_7_7_8_2_8_3_3_3_9_8_7_9_0_0_0_0_1_'
      setVariable
      push 'boxerdata50', 'Yosukezan_6_7_5_5_7_8_0_6_5_7_7_6_0_2_1_4_1_'
      setVariable
      push 'boxerdata51', 'Garcia_8_5_7_5_8_9_2_5_3_5_5_8_0_8_1_2_3_'
      setVariable
      push 'boxerdata52', 'Klitschko_3_5_9_7_7_6_3_9_8_6_9_7_0_7_0_1_2_'
      setVariable
      push 'boxerdata53', 'Judah_6_7_6_7_7_6_0_6_7_5_4_5_0_8_2_4_2_'
      setVariable
      push 'boxerdata54', 'Gomez_8_3_9_3_8_2_4_7_9_8_9_6_0_4_1_3_2_'
      setVariable
      push 'boxerdata55', 'Gatti_4_8_7_8_9_9_4_8_9_5_9_4_0_6_0_1_0_'
      setVariable
      push 'boxerdata56', 'Pryor_6_6_6_4_9_9_2_4_6_6_5_5_0_8_2_3_0_'
      setVariable
      push 'boxerdata57', 'Lee_8_3_2_0_5_6_1_6_6_5_7_7_0_3_1_0_0_'
      setVariable
      push 'boxerdata58', 'Tarver_4_3_9_7_7_9_1_6_5_2_5_7_0_1_2_1_2_'
      setVariable
      push 'boxerdata59', 'Curry_4_9_4_8_8_3_3_3_2_3_3_2_0_6_2_2_2_'
      setVariable
      push 'boxerdata60', 'HAMADA_4_4_7_9_3_5_0_5_8_8_9_9_0_4_2_0_0_'
      setVariable
      push 'boxerdata61', 'Pak_6_5_4_7_5_6_1_5_7_6_7_5_0_8_1_1_3_'
      setVariable
      push 'boxerdata62', 'Minter_4_4_3_7_4_8_0_5_6_7_7_5_0_4_0_1_2_'
      setVariable
      push 'boxerdata63', 'Greb_6_3_3_7_8_7_3_7_6_8_7_5_0_0_0_2_1_'
      setVariable
      push 'boxerdata64', 'DAGGE_7_7_5_6_2_7_0_4_3_5_9_5_0_0_0_1_1_'
      setVariable
      push 'boxerdata65', 'Mugabi_7_3_5_4_6_3_3_5_8_7_8_4_0_4_2_2_0_'
      setVariable
      push 'boxerdata66', 'Ioka_6_6_7_7_7_4_0_3_4_4_2_3_0_1_1_1_0_'
      setVariable
      push 'boxerdata67', 'Chang_6_5_5_6_3_4_2_5_5_7_5_2_0_4_1_0_0_'
      setVariable
      push 'boxerdata68', 'Yuh_6_6_5_4_5_8_0_3_5_4_3_3_0_1_1_0_0_'
      setVariable
      push 'boxerdata69', 'Ohashi_6_5_4_5_6_6_0_3_4_3_7_6_0_1_1_1_0_'
      setVariable
      push 'boxerdata70', 'Saman_2_8_6_5_6_3_3_3_1_2_3_2_0_4_1_2_3_'
      setVariable
      push 'boxerdata71', 'Veeraphol _4_6_0_2_4_4_3_9_2_9_6_3_0_0_1_2_3_'
      setVariable
      push 'boxerdata72', 'Maskaev_6_5_8_3_5_4_0_5_4_5_3_5_0_4_0_2_1_'
      setVariable
      push 'boxerdata73', 'Elorde_4_3_4_4_7_4_2_4_5_4_4_3_0_8_1_1_4_'
      setVariable
      push 'boxerdata74', 'Luisito_3_2_8_7_0_0_3_9_9_9_9_9_0_3_1_2_3_'
      setVariable
      push 'boxerdata75', 'Kim_4_2_2_6_4_9_1_6_7_6_4_4_0_4_1_1_0_'
      setVariable
      push 'boxerdata76', 'Lakva_5_6_4_2_7_4_0_5_3_5_3_4_0_3_1_1_1_'
      setVariable
      push 'boxerdata77', 'Yakushiji_3_5_3_8_6_5_0_4_4_2_3_2_0_8_1_3_1_'
      setVariable
      push 'boxerdata78', 'Kingpetch_6_2_8_4_9_4_3_4_6_7_5_3_0_0_1_1_3_'
      setVariable
      push 'boxerdata79', 'Basilio_2_5_4_0_9_9_3_2_3_1_0_2_0_8_0_2_1_'
      setVariable
      push 'boxerdata80', 'Moon_6_5_3_4_5_5_0_3_4_3_4_2_0_8_1_0_0_'
      setVariable
      push 'boxerdata81', 'Navarro_5_2_8_4_2_6_0_0_7_1_0_4_0_8_0_1_4_'
      setVariable
      push 'boxerdata82', 'Naoto_5_2_4_4_5_2_0_5_5_4_3_4_0_1_1_1_1_'
      setVariable
      push 'boxerdata83', 'Hasegawa_8_0_7_5_2_0_2_2_1_8_6_0_0_3_1_2_3_'
      setVariable
      push 'boxerdata84', 'Chartchai_5_4_1_5_5_3_2_3_3_5_2_3_0_1_1_2_2_'
      setVariable
      push 'boxerdata85', 'Yamato_4_2_2_4_6_2_0_4_5_6_5_3_0_2_1_2_1_'
      setVariable
      push 'boxerdata86', 'Santa_3_4_4_6_5_1_0_4_5_4_3_2_0_3_0_1_1_'
      setVariable
      push 'boxerdata87', 'Oowada_5_5_3_8_4_0_0_4_3_5_4_1_0_7_1_0_0_'
      setVariable
      push 'boxerdata88', 'Yoshino_5_2_4_1_6_1_0_3_2_8_2_0_0_1_1_3_1_'
      setVariable
      push 'boxerdata89', 'Bueno_4_5_6_0_3_6_1_3_4_5_6_7_0_8_1_1_2_'
      setVariable
      push 'boxerdata90', 'Wajima_3_3_0_6_1_6_0_3_4_2_5_2_0_6_1_0_0_'
      setVariable
      push 'boxerdata91', 'HARADA_4_2_5_4_6_3_0_0_1_1_1_0_0_4_1_0_0_'
      setVariable
      push 'boxerdata92', 'Kasai_4_5_7_6_5_2_0_3_3_2_0_2_0_1_1_0_1_'
      setVariable
      push 'boxerdata93', 'hwang_3_4_2_6_5_7_2_0_1_3_3_0_0_1_1_2_0_'
      setVariable
      push 'boxerdata94', 'TOGUCHI_4_2_5_4_2_2_0_4_0_4_3_0_0_8_1_3_1_'
      setVariable
      push 'boxerdata95', 'ishimatsu_2_3_2_4_0_5_0_2_5_0_5_7_0_7_1_3_0_'
      setVariable
      push 'boxerdata96', 'tokashiki_2_4_2_0_0_3_0_0_4_7_3_6_0_4_1_2_2_'
      setVariable
      push 'boxerdata97', 'KANAYAMA_3_2_1_3_4_5_0_5_5_5_4_6_0_1_1_2_2_'
      setVariable
      push 'boxerdata98', 'Hiranaka_5_0_6_1_2_3_0_4_3_4_6_4_0_9_1_0_1_'
      setVariable
      push 'boxerdata99', 'Eivind_9_9_9_9_9_9_9_9_9_1_1_3_0_0_1_4_3_'
      setVariable
    end // of frame 0

    frame 1
      constants 'boxerdata', 'rank', 'Math', 'floor', 'random', 'Array', 'i', 'a', '_', 'this', 'split', 'Object', 'nam', 'hit', 'def', 'stm', 'spt', 'jab', 'cross', 'hook', 'upper', 'body', 'col', 'hair', 'pcol', 'init_rank'  
      function2 init_rank () ()
        push UNDEF
        setRegister r:1
        pop
        push 0.0
        setRegister r:1
        pop
       label1:
        push r:1, 100
        lessThan
        not
        branchIfTrue label2
        push 'boxerdata'
        getVariable
        push r:1
        getMember
        push 'rank', r:1
        setMember
        push r:1
        increment
        setRegister r:1
        pop
        branch label1
       label2:
        push 0.0
        setRegister r:1
        pop
       label3:
        push r:1, 99
        lessThan
        not
        branchIfTrue label6
        push r:1, 20
        divide
        push 1, 'Math'
        getVariable
        push 'floor'
        callMethod
        push 20
        multiply
        push 0.0, 'Math'
        getVariable
        push 'random'
        callMethod
        push 20
        multiply
        push 1, 'Math'
        getVariable
        push 'floor'
        callMethod
        add
        setRegister r:2
        pop
        push r:2, 99
        equals
        not
        branchIfTrue label4
        branch label5
       label4:
        push 'boxerdata'
        getVariable
        push r:1
        getMember
        push 'rank'
        getMember
        setRegister r:3
        pop
        push 'boxerdata'
        getVariable
        push r:1
        getMember
        push 'rank', 'boxerdata'
        getVariable
        push r:2
        getMember
        push 'rank'
        getMember
        setMember
        push 'boxerdata'
        getVariable
        push r:2
        getMember
        push 'rank', r:3
        setMember
       label5:
        push r:1
        increment
        setRegister r:1
        pop
        branch label3
       label6:
      end // of function init_rank

      push 'boxerdata', 0.0, 'Array'
      new
      varEquals
      push 'i', 0.0
      setVariable
     label7:
      push 'i'
      getVariable
      push 100
      lessThan
      not
      branchIfTrue label8
      push 'a', '_', 1, 'this'
      getVariable
      push 'boxerdata', 'i'
      getVariable
      add
      getMember
      push 'split'
      callMethod
      varEquals
      push 'boxerdata'
      getVariable
      push 'i'
      getVariable
      push 0.0, 'Object'
      new
      setMember
      push 'boxerdata'
      getVariable
      push 'i'
      getVariable
      getMember
      push 'nam', 'a'
      getVariable
      push 0.0
      getMember
      setMember
      push 'boxerdata'
      getVariable
      push 'i'
      getVariable
      getMember
      push 'hit', 'a'
      getVariable
      push 1
      getMember
      toNumber
      setMember
      push 'boxerdata'
      getVariable
      push 'i'
      getVariable
      getMember
      push 'def', 'a'
      getVariable
      push 2
      getMember
      toNumber
      setMember
      push 'boxerdata'
      getVariable
      push 'i'
      getVariable
      getMember
      push 'stm', 'a'
      getVariable
      push 4
      getMember
      toNumber
      setMember
      push 'boxerdata'
      getVariable
      push 'i'
      getVariable
      getMember
      push 'spt', 'a'
      getVariable
      push 5
      getMember
      toNumber
      setMember
      push 'boxerdata'
      getVariable
      push 'i'
      getVariable
      getMember
      push 'jab', 'a'
      getVariable
      push 8
      getMember
      toNumber
      setMember
      push 'boxerdata'
      getVariable
      push 'i'
      getVariable
      getMember
      push 'cross', 'a'
      getVariable
      push 9
      getMember
      toNumber
      setMember
      push 'boxerdata'
      getVariable
      push 'i'
      getVariable
      getMember
      push 'hook', 'a'
      getVariable
      push 10
      getMember
      toNumber
      setMember
      push 'boxerdata'
      getVariable
      push 'i'
      getVariable
      getMember
      push 'upper', 'a'
      getVariable
      push 11
      getMember
      toNumber
      setMember
      push 'boxerdata'
      getVariable
      push 'i'
      getVariable
      getMember
      push 'body', 'a'
      getVariable
      push 12
      getMember
      toNumber
      setMember
      push 'boxerdata'
      getVariable
      push 'i'
      getVariable
      getMember
      push 'col', 'a'
      getVariable
      push 15
      getMember
      toNumber
      setMember
      push 'boxerdata'
      getVariable
      push 'i'
      getVariable
      getMember
      push 'hair', 'a'
      getVariable
      push 16
      getMember
      toNumber
      setMember
      push 'boxerdata'
      getVariable
      push 'i'
      getVariable
      getMember
      push 'pcol', 'a'
      getVariable
      push 17
      getMember
      toNumber
      setMember
      push 'i', 'i'
      getVariable
      increment
      setVariable
      branch label7
     label8:
      push 0.0, 'init_rank'
      callFunction
      pop
    end // of frame 1

    frame 3
      constants 'match_c', 'user_bn', 'com_bn', 'lev_down', 'Math', 'random', 'floor', 'can_retire', 'init_rank', 'name', 'boxerdata', 'nam', 'rank', 'col', 'pcol', 'hair', 'hit', 'skil', 'def', 'stam', 'stm', 'tole', 'spt', 'pp', '0', 'jab', '1', 'cross', '2', 'hook', '3', 'upper', '4', 'body', 'ps', 'set_boxer', 'rank0', 'rank1', '', 'record', 'Array'  
      function title_newgame ()
        push 'match_c', 0.0
        setVariable
        push 'user_bn', 99
        setVariable
        push 'com_bn', 98
        setVariable
        push 'lev_down', 20, 0.0, 'Math'
        getVariable
        push 'random'
        callMethod
        push 20
        multiply
        push 1, 'Math'
        getVariable
        push 'floor'
        callMethod
        add
        setVariable
        push 'can_retire', 0.0
        setVariable
        push 0.0, 'init_rank'
        callFunction
        pop
        gotoLabel 'chara'
      end // of function title_newgame

      function2 set_boxer () (r:1='this')
        push 0.0
        setRegister r:2
        pop
       label1:
        push r:2, 2
        lessThan
        not
        branchIfTrue label4
        push r:2, 0.0
        equals
        branchIfTrue label2
        push 'com_bn'
        getVariable
        branch label3
       label2:
        push 'user_bn'
        getVariable
       label3:
        setRegister r:3
        pop
        push r:this, 'name', r:2
        add
        push 'boxerdata'
        getVariable
        push r:3
        getMember
        push 'nam'
        getMember
        setMember
        push r:this, 'rank', r:2
        add
        push 'boxerdata'
        getVariable
        push r:3
        getMember
        push 'rank'
        getMember
        setMember
        push r:this, 'col', r:2
        add
        push 'boxerdata'
        getVariable
        push r:3
        getMember
        push 'col'
        getMember
        setMember
        push r:this, 'pcol', r:2
        add
        push 'boxerdata'
        getVariable
        push r:3
        getMember
        push 'pcol'
        getMember
        setMember
        push r:this, 'hair', r:2
        add
        push 'boxerdata'
        getVariable
        push r:3
        getMember
        push 'hair'
        getMember
        setMember
        push r:this, 'hit', r:2
        add
        push 'boxerdata'
        getVariable
        push r:3
        getMember
        push 'hit'
        getMember
        setMember
        push r:this, 'skil', r:2
        add
        push 'boxerdata'
        getVariable
        push r:3
        getMember
        push 'def'
        getMember
        setMember
        push r:this, 'stam', r:2
        add
        push 'boxerdata'
        getVariable
        push r:3
        getMember
        push 'stm'
        getMember
        setMember
        push r:this, 'tole', r:2
        add
        push 'boxerdata'
        getVariable
        push r:3
        getMember
        push 'spt'
        getMember
        setMember
        push r:this, 'pp', r:2
        add
        push '0'
        add
        push 'boxerdata'
        getVariable
        push r:3
        getMember
        push 'jab'
        getMember
        setMember
        push r:this, 'pp', r:2
        add
        push '1'
        add
        push 'boxerdata'
        getVariable
        push r:3
        getMember
        push 'cross'
        getMember
        setMember
        push r:this, 'pp', r:2
        add
        push '2'
        add
        push 'boxerdata'
        getVariable
        push r:3
        getMember
        push 'hook'
        getMember
        setMember
        push r:this, 'pp', r:2
        add
        push '3'
        add
        push 'boxerdata'
        getVariable
        push r:3
        getMember
        push 'upper'
        getMember
        setMember
        push r:this, 'pp', r:2
        add
        push '4'
        add
        push 'boxerdata'
        getVariable
        push r:3
        getMember
        push 'body'
        getMember
        setMember
        push 'boxerdata'
        getVariable
        push r:3
        getMember
        push 'hit'
        getMember
        setRegister r:4
        pop
        push r:this, 'ps', r:2
        add
        push '0'
        add
        push r:4
        setMember
        push r:this, 'ps', r:2
        add
        push '1'
        add
        push r:4
        setMember
        push r:this, 'ps', r:2
        add
        push '2'
        add
        push r:4
        setMember
        push r:this, 'ps', r:2
        add
        push '3'
        add
        push r:4
        setMember
        push r:this, 'ps', r:2
        add
        push '4'
        add
        push r:4
        setMember
        push r:2
        increment
        setRegister r:2
        pop
        branch label1
       label4:
      end // of function set_boxer

      function start_game ()
        push 0.0, 'set_boxer'
        callFunction
        pop
        push 'rank0'
        getVariable
        push 0.0
        equals
        dup
        branchIfTrue label5
        pop
        push 'rank1'
        getVariable
        push 0.0
        equals
       label5:
        not
        branchIfTrue label6
        gotoLabel 'belt'
        branch label7
       label6:
        gotoLabel 'game'
       label7:
      end // of function start_game

      function2 next_match () ()
        push 100, 'boxerdata'
        getVariable
        push 'user_bn'
        getVariable
        getMember
        push 'rank'
        getMember
        subtract
        push 2
        divide
        push 1, 'Math'
        getVariable
        push 'floor'
        callMethod
        setRegister r:2
        pop
        push 'boxerdata'
        getVariable
        push 'user_bn'
        getVariable
        getMember
        push 'rank'
        getMember
        push 0.0
        equals
        not
        branchIfTrue label8
        push 70
        setRegister r:2
        pop
       label8:
        push 0.0, 'Math'
        getVariable
        push 'random'
        callMethod
        push 100
        multiply
        push r:2
        lessThan
        not
        branchIfTrue label15
       label9:
        push FALSE
        branchIfTrue label14
        push 0.0, 'Math'
        getVariable
        push 'random'
        callMethod
        push 100
        multiply
        push 1, 'Math'
        getVariable
        push 'floor'
        callMethod
        setRegister r:1
        pop
        push r:1, 'user_bn'
        getVariable
        equals
        not
        branchIfTrue label10
        branch label9
       label10:
        push 'boxerdata'
        getVariable
        push r:1
        getMember
        push 'rank'
        getMember
        push 0.0
        equals
        not
        branchIfTrue label11
        branch label9
       label11:
        push 'boxerdata'
        getVariable
        push r:1
        getMember
        push 'rank'
        getMember
        push 'boxerdata'
        getVariable
        push 'user_bn'
        getVariable
        getMember
        push 'rank'
        getMember
        push 10
        subtract
        greaterThan
        not
        not
        branchIfTrue label12
        branch label9
       label12:
        push 'boxerdata'
        getVariable
        push r:1
        getMember
        push 'rank'
        getMember
        push 'boxerdata'
        getVariable
        push 'user_bn'
        getVariable
        getMember
        push 'rank'
        getMember
        push 10
        add
        lessThan
        not
        not
        branchIfTrue label13
        branch label9
       label13:
        push 'com_bn', r:1
        setVariable
        branch label14
        branch label9
       label14:
        push 0.0, 'set_boxer'
        callFunction
        pop
        gotoLabel 'challenger'
        branch label16
       label15:
        gotoLabel 'ranker'
       label16:
      end // of function next_match

      stop
      push '', 2, 150
      setProperty
      push '', 3, 150
      setProperty
      push 'user_bn', 99
      setVariable
      push 'com_bn', 98
      setVariable
      push 'record', 0.0, 'Array'
      new
      setVariable
    end // of frame 3

    frame 8
      stop
    end // of frame 8

    frame 14
      stop
    end // of frame 14

    frame 19
      stop
    end // of frame 19

    frame 23
      stop
    end // of frame 23

    frame 28
      constants 'c', 'match_c', 'record', 'Object', 'bn', 'com_bn', 'winner', 'downer', 'r', 'boxerdata', 'rank', 'i', 'this', 'sei', 'RANK ', 'CHAMPION', 'stam1'  
      function2 after_match (r:1='w', r:2='d', r:3='r') ()
        push 'c', 'match_c'
        getVariable
        setVariable
        push 'record'
        getVariable
        push 'c'
        getVariable
        push 0.0, 'Object'
        new
        setMember
        push 'record'
        getVariable
        push 'c'
        getVariable
        getMember
        push 'bn', 'com_bn'
        getVariable
        setMember
        push 'record'
        getVariable
        push 'c'
        getVariable
        getMember
        push 'winner', r:w
        setMember
        push 'record'
        getVariable
        push 'c'
        getVariable
        getMember
        push 'downer', r:d
        setMember
        push 'record'
        getVariable
        push 'c'
        getVariable
        getMember
        push 'r', r:r
        setMember
        push 'match_c', 'match_c'
        getVariable
        increment
        setVariable
        push 'winner', r:w
        setVariable
        push 'boxerdata'
        getVariable
        push 'com_bn'
        getVariable
        getMember
        push 'rank'
        getMember
        push 0.0
        equals
        dup
        not
        branchIfTrue label1
        pop
        push 'winner'
        getVariable
        push 0.0
        equals
       label1:
        not
        branchIfTrue label2
        gotoLabel 'champ'
        branch label3
       label2:
        gotoLabel 'lev'
       label3:
      end // of function after_match

      stop
      push 'i', 0.0
      setVariable
     label4:
      push 'i'
      getVariable
      push 2
      lessThan
      not
      branchIfTrue label6
      push 'this'
      getVariable
      push 'sei', 'i'
      getVariable
      add
      push 'RANK ', 'this'
      getVariable
      push 'rank', 'i'
      getVariable
      add
      getMember
      add
      setMember
      push 'this'
      getVariable
      push 'rank', 'i'
      getVariable
      add
      getMember
      push 0.0
      equals
      not
      branchIfTrue label5
      push 'this'
      getVariable
      push 'sei', 'i'
      getVariable
      add
      push 'CHAMPION'
      setMember
     label5:
      push 'i', 'i'
      getVariable
      increment
      setVariable
      branch label4
     label6:
      push 'stam1'
      getVariable
      push 5
      greaterThan
      not
      branchIfTrue label7
      push 'stam1', 5
      setVariable
     label7:
    end // of frame 28

    frame 35
      stop
      push 'can_retire', 1
      setVariable
    end // of frame 35

    frame 41
      constants 'winner', 'rank0', 'rank1', 'ranker_swap', 'boxerdata', 'user_bn', 'rank', 'com_bn', 'pp', 'jab', 'cross', 'hook', 'upper', 'body', 'p', 'hit', 'def', 'stm', 'spt', 'lup', 'Math', 'random', 'floor', 'match_c', 'lev_down'  
      function after_level ()
        push 'winner'
        getVariable
        push 0.0
        equals
        not
        branchIfTrue label2
        push 'rank0'
        getVariable
        push 'rank1'
        getVariable
        greaterThan
        not
        branchIfTrue label1
        push 0.0, 'ranker_swap'
        callFunction
        pop
       label1:
        branch label3
       label2:
        push 'rank0'
        getVariable
        push 'rank1'
        getVariable
        lessThan
        not
        branchIfTrue label3
        push 0.0, 'ranker_swap'
        callFunction
        pop
       label3:
        gotoLabel 'record'
      end // of function after_level

      function2 ranker_swap () ()
        push 'boxerdata'
        getVariable
        push 'user_bn'
        getVariable
        getMember
        push 'rank'
        getMember
        setRegister r:1
        pop
        push 'boxerdata'
        getVariable
        push 'user_bn'
        getVariable
        getMember
        push 'rank', 'boxerdata'
        getVariable
        push 'com_bn'
        getVariable
        getMember
        push 'rank'
        getMember
        setMember
        push 'boxerdata'
        getVariable
        push 'com_bn'
        getVariable
        getMember
        push 'rank', r:1
        setMember
      end // of function ranker_swap

      stop
      push 'pp', 0.0, 0.0, 2
      initArray
      setVariable
      push 'pp'
      getVariable
      push 0.0, 'boxerdata'
      getVariable
      push 'user_bn'
      getVariable
      getMember
      push 'jab'
      getMember
      push 'boxerdata'
      getVariable
      push 'user_bn'
      getVariable
      getMember
      push 'cross'
      getMember
      add
      push 'boxerdata'
      getVariable
      push 'user_bn'
      getVariable
      getMember
      push 'hook'
      getMember
      add
      push 'boxerdata'
      getVariable
      push 'user_bn'
      getVariable
      getMember
      push 'upper'
      getMember
      add
      push 'boxerdata'
      getVariable
      push 'user_bn'
      getVariable
      getMember
      push 'body'
      getMember
      add
      setMember
      push 'pp'
      getVariable
      push 1, 'boxerdata'
      getVariable
      push 'com_bn'
      getVariable
      getMember
      push 'jab'
      getMember
      push 'boxerdata'
      getVariable
      push 'com_bn'
      getVariable
      getMember
      push 'cross'
      getMember
      add
      push 'boxerdata'
      getVariable
      push 'com_bn'
      getVariable
      getMember
      push 'hook'
      getMember
      add
      push 'boxerdata'
      getVariable
      push 'com_bn'
      getVariable
      getMember
      push 'upper'
      getMember
      add
      push 'boxerdata'
      getVariable
      push 'com_bn'
      getVariable
      getMember
      push 'body'
      getMember
      add
      setMember
      push 'p', 0.0
      setVariable
      push 'boxerdata'
      getVariable
      push 'user_bn'
      getVariable
      getMember
      push 'hit'
      getMember
      push 'boxerdata'
      getVariable
      push 'com_bn'
      getVariable
      getMember
      push 'def'
      getMember
      lessThan
      not
      branchIfTrue label4
      push 'p', 'p'
      getVariable
      push 4
      add
      setVariable
     label4:
      push 'boxerdata'
      getVariable
      push 'user_bn'
      getVariable
      getMember
      push 'def'
      getMember
      push 'boxerdata'
      getVariable
      push 'com_bn'
      getVariable
      getMember
      push 'hit'
      getMember
      lessThan
      not
      branchIfTrue label5
      push 'p', 'p'
      getVariable
      push 4
      add
      setVariable
     label5:
      push 'boxerdata'
      getVariable
      push 'user_bn'
      getVariable
      getMember
      push 'stm'
      getMember
      push 'boxerdata'
      getVariable
      push 'com_bn'
      getVariable
      getMember
      push 'stm'
      getMember
      lessThan
      not
      branchIfTrue label6
      push 'p', 'p'
      getVariable
      push 2
      add
      setVariable
     label6:
      push 'boxerdata'
      getVariable
      push 'user_bn'
      getVariable
      getMember
      push 'spt'
      getMember
      push 'boxerdata'
      getVariable
      push 'com_bn'
      getVariable
      getMember
      push 'spt'
      getMember
      lessThan
      not
      branchIfTrue label7
      push 'p', 'p'
      getVariable
      push 1
      add
      setVariable
     label7:
      push 'boxerdata'
      getVariable
      push 'user_bn'
      getVariable
      getMember
      push 'jab'
      getMember
      push 'boxerdata'
      getVariable
      push 'com_bn'
      getVariable
      getMember
      push 'jab'
      getMember
      lessThan
      not
      branchIfTrue label8
      push 'p', 'p'
      getVariable
      push 1
      add
      setVariable
     label8:
      push 'boxerdata'
      getVariable
      push 'user_bn'
      getVariable
      getMember
      push 'cross'
      getMember
      push 'boxerdata'
      getVariable
      push 'com_bn'
      getVariable
      getMember
      push 'cross'
      getMember
      lessThan
      not
      branchIfTrue label9
      push 'p', 'p'
      getVariable
      push 1
      add
      setVariable
     label9:
      push 'boxerdata'
      getVariable
      push 'user_bn'
      getVariable
      getMember
      push 'hook'
      getMember
      push 'boxerdata'
      getVariable
      push 'com_bn'
      getVariable
      getMember
      push 'hook'
      getMember
      lessThan
      not
      branchIfTrue label10
      push 'p', 'p'
      getVariable
      push 1
      add
      setVariable
     label10:
      push 'boxerdata'
      getVariable
      push 'user_bn'
      getVariable
      getMember
      push 'upper'
      getMember
      push 'boxerdata'
      getVariable
      push 'com_bn'
      getVariable
      getMember
      push 'upper'
      getMember
      lessThan
      not
      branchIfTrue label11
      push 'p', 'p'
      getVariable
      push 1
      add
      setVariable
     label11:
      push 'boxerdata'
      getVariable
      push 'user_bn'
      getVariable
      getMember
      push 'body'
      getMember
      push 'boxerdata'
      getVariable
      push 'com_bn'
      getVariable
      getMember
      push 'body'
      getMember
      lessThan
      not
      branchIfTrue label12
      push 'p', 'p'
      getVariable
      push 1
      add
      setVariable
     label12:
      push 'lup', 1, 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 'p'
      getVariable
      multiply
      push 2
      divide
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      add
      setVariable
      push 'lup'
      getVariable
      push 5
      greaterThan
      not
      branchIfTrue label13
      push 'lup', 5
      setVariable
     label13:
      push 'winner'
      getVariable
      push 0.0
      equals
      not
      not
      branchIfTrue label14
      push 'lup'
      getVariable
      push 0.0
      greaterThan
      not
      branchIfTrue label14
      push 'lup', 0.0
      setVariable
     label14:
      push 'match_c'
      getVariable
      push 'lev_down'
      getVariable
      lessThan
      not
      not
      branchIfTrue label15
      push 'lup', -1, 0.0, 'Math'
      getVariable
      push 'random'
      callMethod
      push 5
      multiply
      push 1, 'Math'
      getVariable
      push 'floor'
      callMethod
      subtract
      setVariable
     label15:
    end // of frame 41

    frame 46
      constants '_parent', 'mcCoach', 'gotoAndPlay', 'win_c', 'lose_c', 'ko_c', 'i', 'match_c', 'record', 'winner', 'downer'  
      function retire ()
        gotoLabel 'ending'
      end // of function retire

      stop
      push 2, 1, '_parent'
      getVariable
      push 'mcCoach'
      getMember
      push 'gotoAndPlay'
      callMethod
      pop
      push 'win_c', 0.0
      setVariable
      push 'lose_c', 0.0
      setVariable
      push 'ko_c', 0.0
      setVariable
      push 'i', 0.0
      setVariable
     label1:
      push 'i'
      getVariable
      push 'match_c'
      getVariable
      lessThan
      not
      branchIfTrue label5
      push 'record'
      getVariable
      push 'i'
      getVariable
      getMember
      push 'winner'
      getMember
      push 0.0
      equals
      not
      branchIfTrue label3
      push 'win_c', 'win_c'
      getVariable
      increment
      setVariable
      push 'record'
      getVariable
      push 'i'
      getVariable
      getMember
      push 'downer'
      getMember
      push 1
      equals
      not
      branchIfTrue label2
      push 'ko_c', 'ko_c'
      getVariable
      increment
      setVariable
     label2:
      branch label4
     label3:
      push 'lose_c', 'lose_c'
      getVariable
      increment
      setVariable
     label4:
      push 'i', 'i'
      getVariable
      increment
      setVariable
      branch label1
     label5:
    end // of frame 46

    frame 52
      constants '', '_parent', 'mcHelp', '_visible'  
      stop
      push '', 2, 100
      setProperty
      push '', 3, 100
      setProperty
      push '_parent'
      getVariable
      push 'mcHelp'
      getMember
      push '_visible', FALSE
      setMember
    end // of frame 52
  end // of defineMovieClip 385
end
