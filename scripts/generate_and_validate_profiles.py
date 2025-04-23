import os, json, random, datetime

TEMPLATE_PATH = "templates/template.profile"
THEME_PATH = "scripts/profile_themes.json"
OUT_DIR = "profiles"
THEME_LOG = "theme.log"

def generate_profile():
    with open(TEMPLATE_PATH, "r") as f:
        template = f.read()

    with open(THEME_PATH, "r") as f:
        themes = json.load(f)

    theme = random.choice(themes)
    uri_suffix = ''.join(random.choices('abcdefghijklmnopqrstuvwxyz0123456789', k=random.randint(5, 10)))
    full_uri = f"{theme['uri_prefix']}{uri_suffix}"
    sleep = random.choice([60000, 90000, 120000, 180000])
    jitter = random.choice([5, 10, 15, 20])

    profile = template \
        .replace("__USER_AGENT__", theme["useragent"]) \
        .replace("__URI__", full_uri) \
        .replace("__HOST__", theme["host"]) \
        .replace("__SLEEP__", str(sleep)) \
        .replace("__JITTER__", str(jitter)) \
        .replace("__FRONT__", theme.get("cdn_front", theme["host"]))

    today = datetime.date.today()
    out_path = f"{OUT_DIR}/profile_{today.year}_{today.month:02}_{today.day:02}.profile"

    with open(out_path, "w") as f:
        f.write(profile)

    with open(THEME_LOG, "w") as f:
        f.write(theme["name"])

    return theme["name"]

if __name__ == "__main__":
    theme_used = generate_profile()
    print(f"Generated profile using theme: {theme_used}")
