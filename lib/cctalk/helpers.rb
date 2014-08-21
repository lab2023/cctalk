module Cctalk
  def parse_messages(data)
    messages = []
    while data.length > 0:
      length = data[1].ord
      break if data.length < length + 5
      message = data[0...length + 5]
      msg = Message.new data: message
      messages << msg
      data = data[-length - 5, length + 5] || data[1..-1]
    end
    return data, messages
  end

  header_types = {
      255 => 'Factory set =>up and test',
      254 => 'Simple poll',
      253 => 'Address poll',
      252 => 'Address clash',
      251 => 'Address change',
      250 => 'Address random',
      249 => 'Request polling priority',
      248 => 'Request status',
      247 => 'Request variable set',
      246 => 'Request manufacturer id',
      245 => 'Request equipment category id',
      244 => 'Request product code',
      243 => 'Request database version',
      242 => 'Request serial number',
      241 => 'Request software revision',
      240 => 'Test solenoids',
      239 => 'Operate motors',
      238 => 'Test output lines',
      237 => 'Read input lines',
      236 => 'Read opto states',
      235 => 'Read last credit or error code',
      234 => 'Issue guard code',
      233 => 'Latch output lines',
      232 => 'Perform self =>check',
      231 => 'Modify inhibit status',
      230 => 'Request inhibit status',
      229 => 'Read buffered credit or error codes',
      228 => 'Modify master inhibit status',
      227 => 'Request master inhibit status',
      226 => 'Request insertion counter',
      225 => 'Request accept counter',
      224 => 'Dispense coins',
      223 => 'Dispense change',
      222 => 'Modify sorter override status',
      221 => 'Request sorter override status',
      220 => 'One =>shot credit',
      219 => 'Enter new PIN number',
      218 => 'Enter PIN number',
      217 => 'Request payout high / low status',
      216 => 'Request data storage availability',
      215 => 'Read data block',
      214 => 'Write data block',
      213 => 'Request option flags',
      212 => 'Request coin position',
      211 => 'Power management control',
      210 => 'Modify sorter paths',
      209 => 'Request sorter paths',
      208 => 'Modify payout absolute count',
      207 => 'Request payout absolute count',
      206 => 'Empty payout',
      205 => 'Request audit information block',
      204 => 'Meter control',
      203 => 'Display control',
      202 => 'Teach mode control',
      201 => 'Request teach status',
      200 => 'Upload coin data',
      199 => 'Configuration to EEPROM',
      198 => 'Counters to EEPROM',
      197 => 'Calculate ROM checksum',
      196 => 'Request creation date',
      195 => 'Request last modification date',
      194 => 'Request reject counter',
      193 => 'Request fraud counter',
      192 => 'Request build code',
      191 => 'Keypad control',
      190 => 'Request payout status',
      189 => 'Modify default sorter path',
      188 => 'Request default sorter path',
      187 => 'Modify payout capacity',
      186 => 'Request payout capacity',
      185 => 'Modify coin id',
      184 => 'Request coin id',
      183 => 'Upload window data',
      182 => 'Download calibration info',
      181 => 'Modify security setting',
      180 => 'Request security setting',
      179 => 'Modify bank select',
      178 => 'Request bank select',
      177 => 'Handheld function',
      176 => 'Request alarm counter',
      175 => 'Modify payout float',
      174 => 'Request payout float',
      173 => 'Request thermistor reading',
      172 => 'Emergency stop',
      171 => 'Request hopper coin',
      170 => 'Request base year',
      169 => 'Request address mode',
      168 => 'Request hopper dispense count',
      167 => 'Dispense hopper coins',
      166 => 'Request hopper status',
      165 => 'Modify variable set',
      164 => 'Enable hopper',
      163 => 'Test hopper',
      162 => 'Modify inhibit and override registers',
      161 => 'Pump RNG',
      160 => 'Request cipher key',
      159 => 'Read buffered bill events',
      158 => 'Modify bill id',
      157 => 'Request bill id',
      156 => 'Request country scaling factor',
      155 => 'Request bill position',
      154 => 'Route bill',
      153 => 'Modify bill operating mode',
      152 => 'Request bill operating mode',
      151 => 'Test lamps',
      150 => 'Request individual accept counter',
      149 => 'Request individual error counter',
      148 => 'Read opto voltages',
      147 => 'Perform stacker cycle',
      146 => 'Operate bi =>directional motors',
      145 => 'Request currency revision',
      144 => 'Upload bill tables',
      143 => 'Begin bill table upgrade',
      142 => 'Finish bill table upgrade',
      141 => 'Request firmware upgrade capability',
      140 => 'Upload firmware',
      139 => 'Begin firmware upgrade',
      138 => 'Finish firmware upgrade',
      137 => 'Switch encryption code',
      136 => 'Store encryption code',
      135 => 'Set accept limit',
      134 => 'Dispense hopper value',
      133 => 'Request hopper polling value',
      132 => 'Emergency stop value',
      131 => 'Request hopper coin value',
      130 => 'Request indexed hopper dispense count',
      129 => 'Read barcode data',
      128 => 'Request money in',
      127 => 'Request money out',
      126 => 'Clear money counters',
      125 => 'Pay money out',
      124 => 'Verify money out',
      123 => 'Request activity register',
      122 => 'Request error status',
      121 => 'Purge hopper',
      120 => 'Modify hopper balance',
      119 => 'Request hopper balance',
      118 => 'Modify cashbox value',
      117 => 'Request cashbox value',
      116 => 'Modify real time clock',
      115 => 'Request real time clock',
      114 => 'Request USB id',
      113 => 'Switch baud rate',
      112 => 'Read encrypted events',
      111 => 'Request encryption support',
      110 => 'Switch encryption key',
      109 => 'Request encrypted hopper status',
      108 => 'Request encrypted monetary id',
      4 => 'Request comms revision',
      3 => 'Clear comms status variables',
      2 => 'Request comms status variables',
      1 => 'Reset device',
      0 => 'Reply'
  }
end