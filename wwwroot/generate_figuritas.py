import os

jugadores = [
    ("messi.svg", "MESSI", "10", "ARGENTINA", "#75AADB"),
    ("alvarez.svg", "ÁLVAREZ", "9", "ARGENTINA", "#75AADB"),
    ("emiliano.svg", "E. MARTÍNEZ", "23", "ARGENTINA", "#75AADB"),
    ("enzo.svg", "FERNÁNDEZ", "24", "ARGENTINA", "#75AADB"),
    ("romero.svg", "ROMERO", "13", "ARGENTINA", "#75AADB"),
    
    ("neymar.svg", "NEYMAR", "10", "BRASIL", "#FFDD00"),
    ("vinicius.svg", "VINICIUS", "7", "BRASIL", "#FFDD00"),
    ("alisson.svg", "ALISSON", "1", "BRASIL", "#FFDD00"),
    ("casemiro.svg", "CASEMIRO", "5", "BRASIL", "#FFDD00"),
    ("marquinhos.svg", "MARQUINHOS", "4", "BRASIL", "#FFDD00"),
    
    ("pedri.svg", "PEDRI", "26", "ESPAÑA", "#DD0032"),
    ("gavi.svg", "GAVI", "9", "ESPAÑA", "#DD0032"),
    ("unai.svg", "UNAI SIMÓN", "23", "ESPAÑA", "#DD0032"),
    ("ferran.svg", "FERRAN", "11", "ESPAÑA", "#DD0032"),
    ("pau.svg", "PAU TORRES", "4", "ESPAÑA", "#DD0032"),
    
    ("mbappe.svg", "MBAPPÉ", "10", "FRANCIA", "#0055A4"),
    ("griezmann.svg", "GRIEZMANN", "7", "FRANCIA", "#0055A4"),
    ("lloris.svg", "LLORIS", "1", "FRANCIA", "#0055A4"),
    ("camavinga.svg", "CAMAVINGA", "6", "FRANCIA", "#0055A4"),
    ("varane.svg", "VARANE", "4", "FRANCIA", "#0055A4"),
    
    ("muller.svg", "MÜLLER", "25", "ALEMANIA", "#000000"),
    ("kimmich.svg", "KIMMICH", "6", "ALEMANIA", "#000000"),
    ("neuer.svg", "NEUER", "1", "ALEMANIA", "#000000"),
    ("havertz.svg", "HAVERTZ", "7", "ALEMANIA", "#000000"),
    ("rudiger.svg", "RÜDIGER", "2", "ALEMANIA", "#000000"),
    
    ("kane.svg", "KANE", "9", "INGLATERRA", "#C8102E"),
    ("saka.svg", "SAKA", "7", "INGLATERRA", "#C8102E"),
    ("pickford.svg", "PICKFORD", "1", "INGLATERRA", "#C8102E"),
    ("bellingham.svg", "BELLINGHAM", "22", "INGLATERRA", "#C8102E"),
    ("maguire.svg", "MAGUIRE", "6", "INGLATERRA", "#C8102E"),

    ("vasilj.svg", "VASILJ", "1", "BOSNIA Y HERZEGOVINA", "#002F6C"),
    ("dzeko.svg", "DZEKO", "11", "BOSNIA Y HERZEGOVINA", "#002F6C"),
    ("muharemovic.svg", "MUHAREMOVIC", "4", "BOSNIA Y HERZEGOVINA", "#002F6C"),
    ("dedic.svg", "DEDIC", "7", "BOSNIA Y HERZEGOVINA", "#002F6C"),
    ("kolasinac.svg", "KOLASINAC", "5", "BOSNIA Y HERZEGOVINA", "#002F6C"),

    ("vozinha.svg", "VOZINHA", "1", "CABO VERDE", "#003DA5"),
    ("borges.svg", "BORGES", "3", "CABO VERDE", "#003DA5"),
    ("pina.svg", "PINA", "6", "CABO VERDE", "#003DA5"),
    ("benchimol.svg", "BENCHIMOL", "9", "CABO VERDE", "#003DA5"),
    ("rodriguez.svg", "RODRIGUEZ", "11", "CABO VERDE", "#003DA5"),

    ("shomurodov.svg", "SHOMURODOV", "14", "UZBEKISTAN", "0072CE"),
    ("karimov.svg", "KARIMOV", "24", "UZBEKISTAN", "#0072CE"),
    ("mozgovoy.svg", "MOZGOVOY", "6", "UZBEKISTAN", "#0072CE"),
    ("urunov.svg", "URUNOV", "17", "UZBEKISTAN", "#0072CE"),
    ("yusupov.svg", "YUSUPOV", "1", "UZBEKISTAN", "#0072CE"),
]

template = '''<svg width="200" height="280" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="grad-{id}" x1="0%" y1="0%" x2="0%" y2="100%">
      <stop offset="0%" style="stop-color:{color};stop-opacity:1" />
      <stop offset="100%" style="stop-color:#ffffff;stop-opacity:1" />
    </linearGradient>
  </defs>
  <rect width="200" height="280" fill="url(#grad-{id})" stroke="#333" stroke-width="3" rx="10"/>
  <rect x="10" y="10" width="180" height="200" fill="#ffffff" opacity="0.3" rx="5"/>
  <text x="100" y="110" font-family="Arial, sans-serif" font-size="22" font-weight="bold" fill="#333" text-anchor="middle">{nombre}</text>
  <text x="100" y="160" font-family="Arial, sans-serif" font-size="48" font-weight="bold" fill="#333" text-anchor="middle">{numero}</text>
  <rect x="10" y="220" width="180" height="50" fill="#ffffff" opacity="0.8" rx="5"/>
  <text x="100" y="245" font-family="Arial, sans-serif" font-size="14" font-weight="bold" fill="#333" text-anchor="middle">{pais}</text>
  <text x="100" y="262" font-family="Arial, sans-serif" font-size="12" fill="#666" text-anchor="middle">Mundial 2026</text>
</svg>'''

base_path = "wwwroot/images/jugadores"

for archivo, nombre, numero, pais, color in jugadores:
    svg_content = template.format(
        id=archivo.replace('.svg', ''),
        nombre=nombre,
        numero=numero,
        pais=pais,
        color=color
    )
    
    file_path = os.path.join(base_path, archivo)
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(svg_content)
    
    print(f"✓ {archivo}")

print("\n✅ Todas las figuritas generadas exitosamente!")
