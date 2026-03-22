<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="sys-promised-land" name="Promised Land" revision="1" battleScribeVersion="2.03" xmlns="http://www.battlescribe.net/schema/gameSystemSchema" type="gameSystem">
  <costTypes>
    <costType id="cost-auri" name="Auri" defaultCostLimit="-1" hidden="false"/>
  </costTypes>
  <profileTypes>
    <profileType id="profile-unit" name="Unit" kind="model">
      <characteristicTypes>
        <characteristicType id="char-speed" name="Speed"/>
        <characteristicType id="char-health" name="Health"/>
        <characteristicType id="char-defence" name="Defence"/>
        <characteristicType id="char-initiative" name="Initiative"/>
        <characteristicType id="char-morale" name="Morale"/>
        <characteristicType id="char-arcane" name="Arcane"/>
      </characteristicTypes>
    </profileType>
    <profileType id="profile-invocation" name="Invocation" kind="spell">
      <characteristicTypes>
        <characteristicType id="char-arc-val" name="Arcane Value"/>
        <characteristicType name="Effects" id="2062-1aef-9b73-d14b"/>
        <characteristicType name="Misfire effects" id="456c-32eb-69b1-1fb7"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Base" id="76aa-68f9-b955-0f6b" hidden="false" kind="model">
      <characteristicTypes>
        <characteristicType name="Base Size" id="e452-67d7-e861-25f9"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Melee Weapon" id="2857-5ab3-db0f-64a1" hidden="false" kind="weapon">
      <characteristicTypes>
        <characteristicType name="Dice" id="e736-f6b3-0474-ddb8"/>
        <characteristicType name="Strength" id="9a62-cd45-d844-0bc3"/>
        <characteristicType name="Damage" id="2780-b560-1641-b9a5"/>
        <characteristicType name="Traits" id="1977-0f4d-9e75-2e2d" kind="annotation"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Ranged Weapon" id="f94b-6526-ad27-3051" hidden="false" kind="weapon">
      <characteristicTypes>
        <characteristicType name="Range" id="1023-f0db-ffcf-da31"/>
        <characteristicType name="Dice" id="1192-2222-5926-5b4b"/>
        <characteristicType name="Strength" id="ff5b-347b-c7f0-5770"/>
        <characteristicType name="Damage" id="a482-225f-a3cb-a700"/>
        <characteristicType name="Traits" id="76cd-5882-86da-52cf"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Other Wargear" id="0c1d-fb59-db29-3959" hidden="false">
      <characteristicTypes>
        <characteristicType name="Traits" id="e990-df09-ac6b-7481"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <categoryEntries>
    <categoryEntry id="2824-ed94-4a5b-e775" name="Leader" hidden="false">
      <constraints>
        <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="31a8-b21b-81d0-b22a-min"/>
        <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="31a8-b21b-81d0-b22a-max"/>
      </constraints>
    </categoryEntry>
    <categoryEntry id="6545-e1b1-0b43-eb83" name="Troops" hidden="false"/>
    <categoryEntry id="639d-7660-22f8-e165" name="Support" hidden="false"/>
    <categoryEntry id="bd00-08bf-76c2-b6c1" name="Monster" hidden="false"/>
    <categoryEntry id="6e36-be99-bf15-fb56" name="Vehicle" hidden="false"/>
    <categoryEntry id="1c82-800c-2e0c-6127" name="Leviathan" hidden="false">
      <constraints>
        <constraint type="max" value="25" field="limit::cost-auri" scope="roster" shared="true" id="94bd-4516-89ce-d1d8" percentValue="true" includeChildSelections="true" includeChildForces="true"/>
      </constraints>
      <modifiers>
        <modifier type="set" value="100" field="94bd-4516-89ce-d1d8">
          <conditionGroups>
            <conditionGroup type="or">
              <conditions>
                <condition type="atLeast" value="1" field="forces" scope="a9b0-8b3b-f6a5-23d2" childId="any" shared="true" includeChildSelections="true" includeChildForces="true"/>
                <condition type="atLeast" value="1" field="forces" scope="f5b7-b377-157c-b972" childId="any" shared="true" includeChildSelections="true" includeChildForces="true"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
    </categoryEntry>
    <categoryEntry id="b299-685a-c3bf-add7" name="Infantry" hidden="false"/>
    <categoryEntry id="8bd5-e71f-ad75-c8f5" name="Independent" hidden="false"/>
    <categoryEntry id="2430-4728-088b-039a" name="Core" hidden="false"/>
    <categoryEntry name="Ally" id="df72-a664-a1a2-6978" hidden="false"/>
    <categoryEntry name="Mystic" id="2ed1-9284-2465-4634" hidden="false"/>
    <categoryEntry name="Unique" id="b69d-0836-fe2c-d01b" hidden="false"/>
    <categoryEntry name="Force Traits" id="5552-8704-2fc8-e65d" hidden="false"/>
    <categoryEntry name="Construct" id="55d6-4f4f-a4fd-e249" hidden="false"/>
    <categoryEntry name="Airborne" id="3326-5b0a-b607-c6b3" hidden="false"/>
    <categoryEntry name="Wild Magic" id="1b68-eb41-5299-fd5d" hidden="false"/>
    <categoryEntry name="Sightless" id="0d5e-5366-12b5-5918" hidden="false"/>
    <categoryEntry name="Vanguard" id="2228-50ba-f04e-7470" hidden="false"/>
    <categoryEntry name="Leader (extra)" id="d811-3a71-b9ea-e8e2" hidden="false"/>
    <categoryEntry name="Command (Core)" id="c3b5-5e66-cb51-0d89" hidden="false"/>
    <categoryEntry name="Colossus" id="549c-3dbd-370e-5ed3" hidden="false"/>
    <categoryEntry name="Transport" id="6b08-1d14-c12c-3f0f" hidden="false"/>
  </categoryEntries>
  <sharedProfiles>
    <profile name="Base 28.5" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="e1d3-bd05-6cb1-9bdd">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">28.5</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
    <profile name="Base 35" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="5638-4dce-9001-1d15">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">35</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
    <profile name="Base 250" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="9dbd-323f-2f96-4b5a">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">250</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
    <profile name="Base 160" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="c7b5-8d2f-ceaa-cd7e">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">160</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
    <profile name="Base 50" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="2425-4fb1-f230-4beb">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">50</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
    <profile name="Base 60" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="ebee-2597-c52d-5eb8">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">60</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
    <profile name="Base 120" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="3f40-ae27-fc52-87ca">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">120</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
    <profile name="Base 200" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="54fa-2339-a49e-08dd">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">200</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
    <profile name="Base 30" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="2f69-19dd-1d8a-6998">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">30</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
    <profile name="Base 40" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="ca04-7a25-5d47-0b6f">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">40</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
    <profile name="Base 300" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="a49d-70d8-ac27-ef9f">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">300</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
    <profile name="Base Nyoma" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="90b6-d658-7888-a65f">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">90x155</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
    <profile name="Base 100" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="b594-7e3b-0a9f-7480">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">100</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
    <profile name="Base 90x155" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="1da7-86f6-73a6-1bb5">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">90x155</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
    <profile name="Base 95x210" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="9543-bb55-0e64-80f3">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">95x210</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
    <profile name="Base 95x190" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="271a-8161-2660-e26e">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">95x190</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
    <profile name="Base 90x135" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="bda8-6c5d-4cd3-001a">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">90x135</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
    <profile name="Base 80" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="6832-9982-ca13-1a6c">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">80</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
    <profile name="Base 105x170" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="c6c2-22a2-917b-c2a7">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">105x170</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
    <profile name="Heavy Ram" typeId="2857-5ab3-db0f-64a1" typeName="Melee Weapon" hidden="false" id="ae2e-8bdc-aeae-877b">
      <characteristics>
        <characteristic name="Dice" typeId="e736-f6b3-0474-ddb8">D5</characteristic>
        <characteristic name="Strength" typeId="9a62-cd45-d844-0bc3">+1</characteristic>
        <characteristic name="Damage" typeId="2780-b560-1641-b9a5">2</characteristic>
        <characteristic name="Traits" typeId="1977-0f4d-9e75-2e2d"/>
      </characteristics>
    </profile>
    <profile name="Super-Heavy Ram" typeId="2857-5ab3-db0f-64a1" typeName="Melee Weapon" hidden="false" id="bb68-933c-039a-dc29">
      <characteristics>
        <characteristic name="Dice" typeId="e736-f6b3-0474-ddb8">2D10</characteristic>
        <characteristic name="Strength" typeId="9a62-cd45-d844-0bc3">+3</characteristic>
        <characteristic name="Damage" typeId="2780-b560-1641-b9a5">3</characteristic>
        <characteristic name="Traits" typeId="1977-0f4d-9e75-2e2d"/>
      </characteristics>
    </profile>
    <profile name="Base 120x260" typeId="76aa-68f9-b955-0f6b" typeName="Base" hidden="false" id="5990-ca9c-aa32-4d4e">
      <characteristics>
        <characteristic name="Base Size" typeId="e452-67d7-e861-25f9">120x260</characteristic>
      </characteristics>
      <modifiers>
        <modifier type="set" value="Base" field="name"/>
      </modifiers>
    </profile>
  </sharedProfiles>
  <sharedSelectionEntries>
    <selectionEntry type="upgrade" import="true" name="Warlord" hidden="false" id="8497-7cf3-9a4a-1ecf">
      <constraints>
        <constraint type="min" value="1" field="selections" scope="roster" shared="true" id="9c16-6c20-ffd7-41b7-min" includeChildSelections="true" includeChildForces="true"/>
        <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="9c16-6c20-ffd7-41b7-max" includeChildSelections="true" includeChildForces="true"/>
      </constraints>
    </selectionEntry>
  </sharedSelectionEntries>
  <sharedRules>
    <rule name="Infantry Fighting Vehicle" id="f42b-f34e-4efe-87eb" hidden="false">
      <description>This transport can carry up to 22 friendly *infantry* models.</description>
    </rule>
  </sharedRules>
</gameSystem>
