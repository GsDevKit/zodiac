baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        package: 'Zodiac-Core';
        package: 'Zodiac-Extra' with: [ spec requires: 'Zodiac-Core' ];
        package: 'Zodiac-Tests' with: [ spec requires: 'Zodiac-Core' ];
        yourself.
      spec
        group: 'default' with: #('Core' 'Extras');
        group: 'Core' with: #('Zodiac-Core');
        group: 'Extras' with: #('Zodiac-Extra');
        group: 'Tests' with: #('Zodiac-Tests');
        yourself ].
  spec for: #'pharo' do: [  ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        package: 'Zodiac-GemStone-Core' with: [ spec requires: 'Zodiac-Core' ];
        yourself.
      spec
        group: 'Core' with: #('Zodiac-GemStone-Core');
        yourself ].
  spec
    for: #'gs3.2.x'
    do: [ 
      "patch for 3.2 until at least 3.2.12 or later"
      spec
        package: 'Zodiac-GemStone32x-Core'
          with: [ spec requires: 'Zodiac-GemStone-Core' ];
        yourself.
      spec
        group: 'Core' with: #('Zodiac-GemStone32x-Core');
        yourself ].
  spec
    for: #'gs3.3.x'
    do: [ 
      "short term patch for 3.3"
      spec
        package: 'Zodiac-GemStone32x-Core'
          with: [ spec requires: 'Zodiac-GemStone-Core' ];
        yourself.
      spec
        group: 'Core' with: #('Zodiac-GemStone32x-Core');
        yourself ]