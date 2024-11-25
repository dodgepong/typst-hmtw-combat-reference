#set page(margin: 0.5in, paper: "us-letter")
#set text(font: "IM FELL English")
#show strong: set text(stroke: 0.3pt)
#show "SWORDS": set text(font: "Dicier Flat-Dark")
#show "PENTACLE": set text(font: "Dicier Flat-Dark")
#show "CUPS": set text(font: "Dicier Flat-Dark")
#show "BATONS": set text(font: "Dicier Flat-Dark")
#show heading.where(level: 2): set text(font: "Caslon Antique", size: 16pt)
#show heading.where(level: 1): head => [
  #set text(font: "HamletOrNot", size: 16pt)
  #set align(center)
  #head.body
]

= Challenge Action Reference
#grid(
  [
    #place(top + left, dx: 28pt, dy: 18pt, scale(x: 135%, y: 135%, image("tablecorner.svg")))
    #place(bottom + left, dx: 28pt, dy: -18pt, scale(x: 135%, y: -135%, image("tablecorner.svg")))
    #place(top + right, dx: -28pt, dy: 18pt, scale(x: -135%, y: 135%, image("tablecorner.svg")))
    #place(bottom + right, dx: -28pt, dy: -18pt, scale(x: -135%, y: -135%, image("tablecorner.svg")))
    #place(left, dx: -2pt, line(start: (0pt, 20%), end: (0pt, 80%), stroke: 0.7pt))
    #place(right, dx: 2pt, line(start: (0pt, 20%), end: (0pt, 80%), stroke: 0.7pt))
    #place(top, dy: -1.95pt, line(start: (45%, 0pt), end: (55%, 0pt), stroke: 0.41pt))
    #place(bottom, dy: 1.95pt, line(start: (45%, 0pt), end: (55%, 0pt), stroke: 0.41pt))
    #table(
      stroke: 0.7pt,
      columns: 2,
      rows: 6,
      table.cell(
        align: center,
        fill: rgb(87, 87, 86),
        block(width: 50%, text(fill: white, [== SWORDS Swords])),
      ),
      table.cell(
        align: center,
        fill: rgb(87, 87, 86),
        block(width: 50%, text(fill: white, [== PENTACLE Pentacles])),
      ),
      pad(
        4pt,
        grid(
          columns: (24%, 1fr),
          rows: (auto),
          gutter: 10pt,
          [*Attack*],
          [Attack an opponent with your weapon vs. target’s Initiative. On success, deal 1 Wound and become *Engaged* if this was a melee attack.],

          [*Riposte*],
          [_Facedown_. Reveal when you or an ally in your zone are targeted by a hostile action to make a counterattack against the attacker vs. target’s action value (_not_ Initiative). On success, deal 1 Wound.],

          [*Aim*],
          [_Bows only_. _Facedown_. Choose a target. The next time you Attack that target with your bow, reveal to add the action's value to your total Attack.],
        ),
      ),
      pad(
        4pt,
        grid(
          columns: (24%, 1fr),
          rows: (auto),
          gutter: 12pt,
          [*Avoid*],
          [Move one zone avoiding threats blocking your movement vs. each threat’s Initiative. For each failure, that threat may deal you 1 Wound as you move.],

          [*Dash*], [Move two zones.],
          [*Dodge*],
          [_Facedown_. Reveal when you or an ally in your zone are targeted by a hostile action to add the action's value to your or your ally's Initiative.],

          [*Roughhouse*],
          [Maneuver against an opponent vs. target’s Initiative. On success, choose to *Disarm*, *Displace*, *Root*, or *Trip* them.],
        ),
      ),
      table.cell(align: center, fill: rgb(87, 87, 86), box(width: 50%, text(fill: white, [== CUPS Cups]))),
      table.cell(
        align: center,
        fill: rgb(87, 87, 86),
        box(width: 50%, text(fill: white, [== BATONS Wands])),
      ),
      pad(
        4pt,
        grid(
          columns: (24%, 1fr),
          rows: (auto),
          gutter: 12pt,
          [*Aid Another*],
          [_Facedown_. Prepare to help an ally with a specific action. When they perform that action, reveal to add your action's value to theirs.],

          [*Command*],
          [Order an animal companion to perform one of their known commands vs. target’s Initiative (if applicable).],

          [*Pull Item from Pack*], [Swap an item you’re holding with an item in your pack.],
          [*Use Item*], [Use an item that you’re holding vs. target's Initiative (if applicable).],
        ),
      ),
      pad(
        4pt,
        grid(
          columns: (24%, 1fr),
          rows: (auto),
          gutter: 12pt,
          [*Banter*],
          [Taunt, intimidate, or frighten your opponent vs. target’s Morale score (set by the GM). On success, the GM shifts their Disposition by one step in intensity, or to an adjacent emotion.],

          [*Speak Incantation*],
          [Cast a spell using a spell component you are holding vs. target's Initiative (if applicable).],

          [*Recover*], [ Remove one Effect you are suffering from.],
        ),
      ),
      table.cell(colspan: 2, align: center, fill: rgb(87, 87, 86), text(fill: white, [== Any Suit])),
      table.cell(
        colspan: 2,
        inset: 8pt,
        grid(
          columns: (18%, 1fr),
          rows: (auto),
          gutter: 12pt,
          [*Bid Lore*], [Bid Lore to ask a question related to one of your motifs.],
          [*Guard*], [_Shields only_. Discard your Initiative and replace it with a new facedown Initiative card.],
          [*Move*], [Move to an adjacent zone.],
          [*Pull Item from Belt*], [Swap an item you’re holding with an item on your belt.],
          [*Reload Crossbow*], [_Crossbows only_. Reload a crossbow.],
          [*Test Fate*],
          [Test Fate to perform a risky action not otherwise listed here. _Note_: The card you play is _not_ used as part of the test; it simply allows you to make the test.],

          [*Trivial Action*], [Perform a simple uncontested action not otherwise listed here.],
          [*Vigilance*],
          [_Facedown_. Choose an action that matches the suit of your card and choose a triggering condition. When the trigger is met, reveal the card and take the action.],
        ),
      ),
    )
  ]
)