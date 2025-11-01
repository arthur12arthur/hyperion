"""Générateur de données synthétiques - module de démonstration"""
def generate(n=10):
    """Retourne une liste de dictionnaires synthétiques"""
    return [{"id": i, "value": i*0.1} for i in range(n)]

if __name__ == '__main__':
    print(generate(5))
