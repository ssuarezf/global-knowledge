# Di Stefano — Saber Global de Diseño de Joyería

Repositorio público y seguro (HTTPS) que alimenta el aprendizaje global del addon
**Di Stefano IA** para Blender. El addon descarga `global_knowledge.json` y lo usa
para mejorar sus respuestas; los usuarios expertos pueden aportar conocimiento.

## Seguridad
- El addon solo acepta **texto validado** (sin código). Nunca se ejecuta contenido de este repo.
- El código que genera la IA se ejecuta en un entorno restringido (anti-virus) dentro del addon.
- `licenses.txt` contiene las licencias gratuitas válidas (una por línea).

## Estructura
- `global_knowledge.json` — lista de `knowledge` (strings cortos de diseño).
- `licenses.txt` — licencias gratuitas permitidas.

## Cómo contribuir (mantenedores)
1. Genera un Personal Access Token (PAT) en GitHub con permiso `repo`.
2. En el panel "Di Stefano IA" > Seguridad y Saber Global:
   - Repo Global: `TU_USUARIO/global-knowledge`
   - Token Mantenedor: tu PAT
   - Botón "Contribuir al Saber Global" (se habilita solo cuando eres experto).

## Mantener el conocimiento sano
- Mantén cada entrada <= 280 caracteres y en español.
- No incluyas código, enlaces externos ni datos personales.
