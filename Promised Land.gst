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
        <characteristicType id="char-desc" name="Description"/>
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
    <categoryEntry id="cat-leader" name="Leader" hidden="false"/>
    <categoryEntry id="cat-troops" name="Troops" hidden="false"/>
    <categoryEntry id="cat-support" name="Support" hidden="false"/>
    <categoryEntry id="cat-monster" name="Monster" hidden="false"/>
    <categoryEntry id="cat-vehicle" name="Vehicle" hidden="false"/>
    <categoryEntry id="cat-leviathan" name="Leviathan" hidden="false">
      <constraints>
        <constraint type="max" value="25" field="limit::cost-auri" scope="roster" shared="true" id="94bd-4516-89ce-d1d8" percentValue="true" includeChildSelections="true" includeChildForces="true"/>
      </constraints>
    </categoryEntry>
    <categoryEntry id="cat-infantry" name="Infantry" hidden="false"/>
    <categoryEntry id="cat-independent" name="Independent" hidden="false"/>
    <categoryEntry id="cat-core" name="Core" hidden="false"/>
    <categoryEntry name="Ally" id="df72-a664-a1a2-6978" hidden="false"/>
    <categoryEntry name="Mystic" id="2ed1-9284-2465-4634" hidden="false"/>
    <categoryEntry name="Unique" id="b69d-0836-fe2c-d01b" hidden="false"/>
    <categoryEntry name="Force Traits" id="5552-8704-2fc8-e65d" hidden="false"/>
    <categoryEntry name="Construct" id="55d6-4f4f-a4fd-e249" hidden="false"/>
    <categoryEntry name="Airborne" id="3326-5b0a-b607-c6b3" hidden="false"/>
    <categoryEntry name="Wild Magic" id="1b68-eb41-5299-fd5d" hidden="false"/>
    <categoryEntry name="Sightless" id="0d5e-5366-12b5-5918" hidden="false"/>
    <categoryEntry name="Vanguard" id="2228-50ba-f04e-7470" hidden="false"/>
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
  </sharedProfiles>
  <sharedSelectionEntries>
    <selectionEntry type="upgrade" import="true" name="Commander" hidden="false" id="8497-7cf3-9a4a-1ecf">
      <constraints>
        <constraint type="min" value="1" field="selections" scope="roster" shared="true" id="9c16-6c20-ffd7-41b7-min" includeChildSelections="true" includeChildForces="true"/>
        <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="9c16-6c20-ffd7-41b7-max" includeChildSelections="true" includeChildForces="true"/>
      </constraints>
    </selectionEntry>
  </sharedSelectionEntries>
</gameSystem>
