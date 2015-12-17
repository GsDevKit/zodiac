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
      "GemStone 3.3 and beyond"
      spec
        package: 'Zodiac-GemStone-Core' with: [ spec requires: 'Zodiac-Core' ];
        yourself.
      spec
        group: 'Core' with: #('Zodiac-GemStone-Core');
        yourself ]