//
//  WordGenerator.swift
//  Wordle
//
//  Created by Mari Batilando on 2/20/23.
//

import Foundation

class WordGenerator {
  // Exercise 8: Add more possible words and return a **random** string every time `generateRandomWord` is called
  // IMPORTANT: MAKE SURE ALL THE LETTERS IN THE NEW WORDS YOU ADD ARE CAPITALIZED (e.g. "AUDIO" instead of "audio")
  // Tip: Look at the Array API documentation to see what method returns a random element
  // Checkpoint: After finishing this exercise, you should now have a different goal word each time you run the app! Try printing out the selected goal word to check. If it's not working, check that you have done this exercise correctly.
    static let possibleWords = [
    "ABACK", "ABAFT", "ABASE", "ABATE", "ABBEY", "ABBOT", "ABHOR", "ABIDE", "ABLER", "ABODE", "ABOUT", "ABOVE", "ABUSE", "ABYSS", "ACHED", "ACHES", "ACIDS", "ACORN", "ACRES", "ACRID", "ACTED", "ACTOR", "ACUTE", "ADAGE", "ADAPT", "ADDED", "ADDER", "ADEPT", "ADIEU", "ADMIT", "ADOBE", "ADOPT", "ADORE", "ADORN", "ADULT", "AEGIS", "AEONS", "AFFIX", "AFIRE", "AFOOT", "AFTER", "AGAIN", "AGAPE", "AGATE", "AGENT", "AGILE", "AGING", "AGLOW", "AGONY", "AGREE", "AHEAD", "AIDED", "AIDES", "AILED", "AIMED", "AIRED", "AISLE", "ALARM", "ALBUM", "ALDER", "ALERT", "ALIAS", "ALIBI", "ALIEN", "ALIKE", "ALIVE", "ALLAY", "ALLEY", "ALLOT", "ALLOW", "ALLOY", "ALOES", "ALOFT", "ALONE", "ALONG", "ALOOF", "ALOUD", "ALPHA", "ALTAR", "ALTER", "ALTOS", "AMASS", "AMAZE", "AMBER", "AMBLE", "AMEND", "AMIGO", "AMISS", "AMITY", "AMONG", "AMOUR", "AMPLE", "AMPLY", "AMUSE", "ANGEL", "ANGER", "ANGLE", "ANGRY", "ANGST", "ANIME", "ANKLE", "ANNEX", "ANNOY", "ANNUL", "ANTES", "ANTIC", "ANVIL", "APACE", "APART", "APING", "APPAL", "APPLE", "APPLY", "APRON", "APTLY", "AREAS", "ARENA", "ARGUE", "ARISE", "ARMED", "AROMA", "AROSE", "ARRAY", "ARROW", "ARSON", "ASHEN", "ASHES", "ASIDE", "ASKED", "ASKEW", "ASPEN", "ASSAY", "ASSES", "ASSET", "ASTER", "ASTIR", "ATLAS", "ATOLL", "ATOMS", "ATONE", "ATTAR", "ATTIC", "AUDIO", "AUDIT", "AUGER", "AUGHT", "AUGUR", "AUNTS", "AURAS", "AUTOS", "AVAIL", "AVERS", "AVERT", "AVOID", "AVOWS", "AWAIT", "AWAKE", "AWARD", "AWARE", "AWFUL", "AWOKE", "AXIOM", "AXLES", "AZURE", "BABEL", "BABES", "BACKS", "BACON", "BADGE", "BADLY", "BAGGY", "BAITS", "BAIZE", "BAKED", "BAKER", "BALES", "BALLS", "BALMY", "BANAL", "BANDS", "BANDY", "BANGS", "BANJO", "BANKS", "BANNS", "BARBS", "BARDS", "BARED", "BARGE", "BARKS", "BARNS", "BARON", "BASAL", "BASED", "BASER", "BASES", "BASIC", "BASIL", "BASIN", "BASIS", "BASSO", "BASTE", "BATCH", "BATED", "BATHE", "BATHS", "BATON", "BAYOU", "BEACH", "BEADS", "BEADY", "BEAKS", "BEAMS", "BEANS", "BEARD", "BEARS", "BEAST", "BEAUX", "BEECH", "BEETS", "BEFIT", "BEGAN", "BEGAT", "BEGET", "BEGIN", "BEGOT", "BEGUN", "BEING", "BELIE", "BELLE", "BELLS", "BELLY", "BELOW", "BELTS", "BENCH", "BENDS", "BERGS", "BERRY", "BERTH", "BERYL", "BESET", "BESOM", "BEVEL", "BIBLE", "BIDED", "BIDES", "BIGHT", "BIGOT", "BILGE", "BILLS", "BILLY", "BINDS", "BIPED", "BIRCH", "BIRDS", "BIRTH", "BISON", "BITCH", "BITES", "BLACK", "BLADE", "BLAME", "BLAND", "BLANK", "BLARE", "BLAST", "BLAZE", "BLEAK", "BLEAT", "BLEED", "BLEND", "BLENT", "BLESS", "BLEST", "BLIND", "BLINK", "BLISS", "BLOCK", "BLOCS", "BLOND", "BLOOD", "BLOOM", "BLOTS", "BLOWN", "BLOWS", "BLUER", "BLUES", "BLUFF", "BLUNT", "BLURT", "BLUSH", "BOARD", "BOARS", "BOAST", "BOATS", "BODED", "BODES", "BOGGY", "BOGUS", "BOILS", "BOLES", "BOLTS", "BOMBS", "BONDS", "BONED", "BONES", "BONNY", "BONUS", "BOOBY", "BOOKS", "BOOMS", "BOONS", "BOORS", "BOOST", "BOOTH", "BOOTS", "BOOTY", "BOOZE", "BORAX", "BORED", "BORES", "BORNE", "BOSOM", "BOUGH", "BOUND", "BOUTS", "BOWED", "BOWEL", "BOWER", "BOWLS", "BOXED", "BOXER", "BOXES", "BRACE", "BRAGS", "BRAID", "BRAIN", "BRAKE", "BRAND", "BRASS", "BRATS", "BRAVE", "BRAVO", "BRAWL", "BRAWN", "BREAD", "BREAK", "BREED", "BRIAR", "BRIBE", "BRICK", "BRIDE", "BRIEF", "BRIER", "BRIGS", "BRIMS", "BRINE", "BRING", "BRINK", "BRINY", "BRISK", "BROAD", "BROIL", "BROKE", "BROOD", "BROOK", "BROOM", "BROTH", "BROWN", "BROWS", "BRUIN", "BRUNT", "BRUSH", "BRUTE", "BUCKS", "BUDGE", "BUGGY", "BUGLE", "BUILD", "BUILT", "BULBS", "BULGE", "BULKS", "BULKY", "BULLS", "BULLY", "BUMPS", "BUNCH", "BUNKS", "BUOYS", "BURLY", "BURNS", "BURNT", "BURRO", "BURRS", "BURST", "BUSHY", "BUSTS", "BUTTE", "BUTTS", "BUXOM", "BUYER", "CABAL", "CABBY", "CABIN", "CABLE", "CACAO", "CACHE", "CADET", "CADRE", "CAGED", "CAGES", "CAIRN", "CAKED", "CAKES", "CALLS", "CALMS", "CALYX", "CAMEL", "CAMEO", "CAMPS", "CANAL", "CANDY", "CANES", "CANNY", "CANOE", "CANON", "CANTO", "CAPER", "CAPES", "CAPON", "CARDS", "CARED", "CARES", "CARGO", "CAROL", "CARRY", "CARTS", "CARVE", "CASED", "CASES", "CASKS", "CASTE", "CASTS", "CATCH", "CATER", "CAUSE", "CAVED", "CAVES", "CAVIL", "CEASE", "CEDAR", "CEDED", "CELLS", "CENTS", "CHAFE", "CHAFF", "CHAIN", "CHAIR", "CHALK", "CHAMP", "CHANT", "CHAOS", "CHAPS", "CHARM", "CHART", "CHARY", "CHASE", "CHASM", "CHATS", "CHEAP", "CHEAT", "CHECK", "CHEEK", "CHEER", "CHEFS", "CHESS", "CHEST", "CHICK", "CHIDE", "CHIEF", "CHILD", "CHILL", "CHIME", "CHINA", "CHINK", "CHINS", "CHIPS", "CHIRP", "CHOIR", "CHOKE", "CHOPS", "CHORD", "CHOSE", "CHUCK", "CHUMP", "CHUMS", "CHUNK", "CHURL", "CHURN", "CHUTE", "CIDER", "CIGAR", "CINCH", "CIRCA", "CITED", "CITES", "CIVET", "CIVIC", "CIVIL", "CLACK", "CLAIM", "CLAMP", "CLAMS", "CLANG", "CLANK", "CLANS", "CLAPS", "CLASH", "CLASP", "CLASS", "CLAWS", "CLEAN", "CLEAR", "CLEFS", "CLEFT", "CLERK", "CLEWS", "CLICK", "CLIFF", "CLIMB", "CLIME", "CLING", "CLINK", "CLIPS", "CLOAK", "CLOCK", "CLODS", "CLOGS", "CLOSE", "CLOTH", "CLOUD", "CLOUT", "CLOVE", "CLOWN", "CLUBS", "CLUCK", "CLUES", "CLUMP", "CLUNG", "COACH", "COALS", "COAST", "COATS", "COBRA", "COCKS", "COCOA", "CODES", "COILS", "COINS", "COLDS", "COLIC", "COLON", "COLTS", "COMBS", "COMER", "COMES", "COMET", "COMIC", "COMMA", "CONCH", "CONES", "CONIC", "COOED", "COOKS", "COOLS", "COPRA", "COPSE", "CORAL", "CORDS", "CORES", "CORKS", "CORNS", "CORPS", "COSTS", "COTES", "COUCH", "COUGH", "COULD", "COUNT", "COUPE", "COUPS", "COURT", "COVER", "COVES", "COVET", "COVEY", "COWED", "COWER", "COYLY", "COZEN", "CRABS", "CRACK", "CRAFT", "CRAGS", "CRAMP", "CRANE", "CRANK", "CRAPE", "CRASH", "CRASS", "CRATE", "CRAVE", "CRAWL", "CRAZE", "CRAZY", "CREAK", "CREAM", "CREDO", "CREED", "CREEK", "CREEP", "CREPE", "CREPT", "CRESS", "CREST", "CREWS", "CRIBS", "CRICK", "CRIED", "CRIER", "CRIES", "CRIME", "CRIMP", "CRISP", "CROAK", "CROCK", "CRONE", "CRONY", "CROOK", "CROPS", "CROSS", "CROUP", "CROWD", "CROWN", "CROWS", "CRUDE", "CRUEL", "CRUMB", "CRUSH", "CRUST", "CRYPT", "CUBES", "CUBIC", "CUBIT", "CUFFS", "CULTS", "CURDS", "CURED", "CURES", "CURLS", "CURLY", "CURRY", "CURSE", "CURST", "CURVE", "CYCLE", "CYNIC", "DADDY", "DAILY", "DAIRY", "DAISY", "DALES", "DALLY", "DAMES", "DAMPS", "DANCE", "DANDY", "DARED", "DARES", "DARTS", "DATED", "DATES", "DATUM", "DAUBS", "DAUNT", "DAWNS", "DAZED", "DEALS", "DEALT", "DEANS", "DEARS", "DEATH", "DEBAR", "DEBIT", "DEBTS", "DEBUT", "DECAY", "DECKS", "DECOY", "DECRY", "DEEDS", "DEEMS", "DEEPS", "DEFER", "DEIGN", "DEITY", "DELAY", "DELLS", "DELTA", "DELVE", "DEMON", "DEMUR", "DENSE", "DENTS", "DEPOT", "DEPTH", "DERBY", "DESKS", "DETER", "DEUCE", "DEVIL", "DIARY", "DICED", "DICES", "DICTA", "DIETS", "DIGIT", "DIKES", "DIMES", "DIMLY", "DINED", "DINER", "DINES", "DINGY", "DIRGE", "DIRTY", "DISCS", "DISKS", "DITCH", "DITTO", "DITTY", "DIVAN", "DIVED", "DIVER", "DIVES", "DIZZY", "DOCKS", "DODGE", "DOERS", "DOGMA", "DOING", "DOLED", "DOLLS", "DOMED", "DOMES", "DONOR", "DOOMS", "DOORS", "DOSED", "DOSES", "DOTED", "DOTES", "DOUBT", "DOUGH", "DOVES", "DOWDY", "DOWNS", "DOWNY", "DOWRY", "DOZED", "DOZEN", "DRAFT", "DRAGS", "DRAIN", "DRAKE", "DRAMA", "DRAMS", "DRANK", "DRAPE", "DRAWL", "DRAWN", "DRAWS", "DRAYS", "DREAD", "DREAM", "DREGS", "DRESS", "DRIED", "DRIER", "DRIES", "DRIFT", "DRILL", "DRILY", "DRINK", "DRIPS", "DRIVE", "DROLL", "DRONE", "DROOP", "DROPS", "DROSS", "DROVE", "DROWN", "DRUGS", "DRUMS", "DRUNK", "DRYLY", "DUCAL", "DUCAT", "DUCHY", "DUCKS", "DUCTS", "DUELS", "DUETS", "DUKES", "DULLY", "DUMMY", "DUMPS", "DUMPY", "DUNCE", "DUNES", "DUNNO", "DUPED", "DUPES", "DUSKY", "DUSTY", "DWARF", "DWELL", "DWELT", "DYING", "DYKES", "EAGER", "EAGLE", "EARLS", "EARLY", "EARNS", "EARTH", "EASED", "EASEL", "EASES", "EATEN", "EATER", "EAVES", "EBBED", "EBONY", "EDGED", "EDGES", "EDICT", "EDIFY", "EERIE", "EGGED", "EIGHT", "EJECT", "ELATE", "ELBOW", "ELDER", "ELECT", "ELEGY", "ELFIN", "ELITE", "ELOPE", "ELUDE", "ELVES", "EMAIL", "EMITS", "EMPTY", "ENACT", "ENDED", "ENDOW", "ENEMY", "ENJOY", "ENNUI", "ENROL", "ENSUE", "ENTER", "ENTRY", "ENVOY", "EPICS", "EPOCH", "EQUAL", "EQUIP", "ERASE", "ERECT", "ERRED", "ERROR", "ESSAY", "ETHER", "ETHIC", "EVADE", "EVENT", "EVERY", "EVILS", "EVOKE", "EXACT", "EXALT", "EXCEL", "EXERT", "EXILE", "EXIST", "EXITS", "EXPEL", "EXTOL", "EXTRA", "EXULT", "EYING", "EYRIE", "FABLE", "FACED", "FACES", "FACTS", "FADED", "FADES", "FAILS", "FAINT", "FAIRS", "FAIRY", "FAITH", "FAKIR", "FALLS", "FALSE", "FAMED", "FANCY", "FANGS", "FARCE", "FARED", "FARES", "FARMS", "FASTS", "FATAL", "FATED", "FATES", "FATTY", "FAULT", "FAUNA", "FAUNS", "FAWNS", "FEARS", "FEAST", "FEATS", "FEEDS", "FEELS", "FEIGN", "FEINT", "FELLS", "FELON", "FENCE", "FERAL", "FERNS", "FERRY", "FETCH", "FETED", "FETID", "FETUS", "FEUDS", "FEVER", "FEWER", "FICHE", "FIEFS", "FIELD", "FIEND", "FIERY", "FIFES", "FIFTH", "FIFTY", "FIGHT", "FILCH", "FILED", "FILES", "FILET", "FILLS", "FILLY", "FILMS", "FILMY", "FILTH", "FINAL", "FINCH", "FINDS", "FINED", "FINER", "FINES", "FINIS", "FINNY", "FIORD", "FIRED", "FIRES", "FIRMS", "FIRST", "FISHY", "FISTS", "FITLY", "FIVES", "FIXED", "FIXER", "FIXES", "FJORD", "FLAGS", "FLAIL", "FLAIR", "FLAKE", "FLAKY", "FLAME", "FLANK", "FLAPS", "FLARE", "FLASH", "FLASK", "FLATS", "FLAWS", "FLEAS", "FLECK", "FLEES", "FLEET", "FLESH", "FLICK", "FLIER", "FLIES", "FLING", "FLINT", "FLIRT", "FLITS", "FLOAT", "FLOCK", "FLOES", "FLOOD", "FLOOR", "FLORA", "FLOSS", "FLOUR", "FLOUT", "FLOWN", "FLOWS", "FLUES", "FLUFF", "FLUID", "FLUKE", "FLUME", "FLUNG", "FLUSH", "FLUTE", "FLYER", "FOAMS", "FOAMY", "FOCAL", "FOCUS", "FOGGY", "FOILS", "FOIST", "FOLDS", "FOLIO", "FOLKS", "FOLLY", "FOODS", "FOOLS", "FORAY", "FORCE", "FORDS", "FORGE", "FORGO", "FORKS", "FORMS", "FORTE", "FORTH", "FORTS", "FORTY", "FORUM", "FOUND", "FOUNT", "FOURS", "FOWLS", "FOXES", "FOYER", "FRAIL", "FRAME", "FRANC", "FRANK", "FRAUD", "FREAK", "FREED", "FREER", "FREES", "FRESH", "FRETS", "FRIAR", "FRIED", "FRILL", "FRISK", "FROCK", "FROGS", "FROND", "FRONT", "FROST", "FROTH", "FROWN", "FROZE", "FRUIT", "FUDGE", "FUELS", "FUGUE", "FULLY", "FUMED", "FUMES", "FUNDS", "FUNGI", "FUNNY", "FURRY", "FURZE", "FUSED", "FUSES", "FUSSY", "FUZZY", "GABLE", "GAILY", "GAINS", "GALES", "GALLS", "GAMES", "GAMIN", "GAMMA", "GAMUT", "GANGS", "GAPED", "GAPES", "GASES", "GASPS", "GATES", "GAUDY", "GAUGE", "GAUNT", "GAUZE", "GAUZY", "GAVEL", "GAWKY", "GAYER", "GAYLY", "GAZED", "GAZER", "GAZES", "GEARS", "GEESE", "GENIE", "GENII", "GENRE", "GENTS", "GENUS", "GERMS", "GHOST", "GIANT", "GIBES", "GIDDY", "GIFTS", "GILDS", "GILLS", "GIMME", "GIPSY", "GIRDS", "GIRLS", "GIRTH", "GIVEN", "GIVES", "GLADE", "GLAND", "GLARE", "GLASS", "GLAZE", "GLEAM", "GLEAN", "GLENS", "GLIDE", "GLINT", "GLOAT", "GLOBE", "GLOOM", "GLORY", "GLOSS", "GLOVE", "GLOWS", "GLUED", "GNASH", "GNATS", "GNAWS", "GNOME", "GOADS", "GOALS", "GOATS", "GODLY", "GOING", "GOLLY", "GONGS", "GONNA", "GOODS", "GOODY", "GOOSE", "GORED", "GORGE", "GORSE", "GOTTA", "GOUGE", "GOURD", "GOUTY", "GOWNS", "GRABS", "GRACE", "GRADE", "GRAFT", "GRAIN", "GRAMS", "GRAND", "GRANT", "GRAPE", "GRAPH", "GRASP", "GRASS", "GRATE", "GRAVE", "GRAVY", "GRAZE", "GREAT", "GREED", "GREEN", "GREET", "GREYS", "GRIEF", "GRILL", "GRIME", "GRIMY", "GRIND", "GRINS", "GRIPE", "GRIPS", "GRIST", "GROAN", "GROIN", "GROOM", "GROPE", "GROSS", "GROUP", "GROVE", "GROWL", "GROWN", "GROWS", "GRUBS", "GRUEL", "GRUFF", "GRUNT", "GUANO", "GUARD", "GUESS", "GUEST", "GUIDE", "GUILD", "GUILE", "GUILT", "GUISE", "GULCH", "GULFS", "GULLS", "GULLY", "GUMMY", "GUSTO", "GUSTS", "GUSTY", "GYPSY", "HABIT", "HACKS", "HAILS", "HAIRS", "HAIRY", "HALED", "HALLS", "HALTS", "HALVE", "HANDS", "HANDY", "HANGS", "HAPPY", "HARDY", "HAREM", "HARES", "HARMS", "HARPS", "HARPY", "HARRY", "HARSH", "HARTS", "HASTE", "HASTY", "HATCH", "HATED", "HATER", "HAULS", "HAVEN", "HAVOC", "HAWKS", "HAZEL", "HEADS", "HEADY", "HEALS", "HEAPS", "HEARD", "HEARS", "HEART", "HEATH", "HEATS", "HEAVE", "HEAVY", "HEDGE", "HEEDS", "HEELS", "HEIRS", "HELIX", "HELLO", "HELMS", "HELPS", "HENCE", "HERBS", "HERDS", "HERON", "HEROS", "HEWED", "HIDES", "HILLS", "HILLY", "HILTS", "HINDS", "HINGE", "HINTS", "HIRED", "HIRES", "HITCH", "HIVES", "HOARD", "HOARY", "HOBBY", "HOIST", "HOLDS", "HOLES", "HOLLY", "HOMES", "HONEY", "HOODS", "HOOFS", "HOOKS", "HOOPS", "HOOTS", "HOPED", "HOPES", "HORDE", "HORNS", "HORNY", "HORSE", "HOSTS", "HOTEL", "HOTLY", "HOUND", "HOURS", "HOUSE", "HOVEL", "HOVER", "HOWLS", "HULKS", "HULLS", "HUMAN", "HUMID", "HUMPS", "HUMUS", "HUNCH", "HUNTS", "HURLS", "HURRY", "HURTS", "HUSKS", "HUSKY", "HUSSY", "HYDRA", "HYENA", "HYMNS", "ICILY", "ICING", "IDEAL", "IDEAS", "IDIOM", "IDIOT", "IDLED", "IDLER", "IDOLS", "IDYLL", "IGLOO", "IMAGE", "IMBUE", "IMPEL", "IMPLY", "INANE", "INCUR", "INDEX", "INEPT", "INERT", "INFER", "INGOT", "INLET", "INNER", "INTER", "INURE", "IRATE", "IRKED", "IRONS", "IRONY", "ISLES", "ISLET", "ISSUE", "ITEMS", "IVORY", "JACKS", "JADED", "JAILS", "JAUNT", "JEANS", "JEERS", "JELLY", "JERKS", "JERKY", "JESTS", "JETTY", "JEWEL", "JIFFY", "JOINS", "JOINT", "JOKED", "JOKER", "JOKES", "JOLLY", "JOUST", "JOYED", "JUDGE", "JUICE", "JUICY", "JUMPS", "JUNKS", "JUNTA", "JUROR", "KARMA", "KEELS", "KEEPS", "KETCH", "KEYED", "KHAKI", "KICKS", "KILLS", "KINDA", "KINDS", "KINGS", "KIOSK", "KITES", "KNACK", "KNAVE", "KNEAD", "KNEEL", "KNEES", "KNELL", "KNELT", "KNIFE", "KNITS", "KNOBS", "KNOCK", "KNOLL", "KNOTS", "KNOWN", "KNOWS", "LABEL", "LACED", "LACES", "LACKS", "LADEN", "LADLE", "LAGER", "LAIRS", "LAITY", "LAKES", "LAMBS", "LAMED", "LAMES", "LAMPS", "LANCE", "LANDS", "LANES", "LANKY", "LAPEL", "LAPSE", "LARCH", "LARGE", "LARGO", "LARKS", "LARVA", "LASSO", "LASTS", "LATCH", "LATER", "LATHE", "LATHS", "LAUGH", "LAWNS", "LAYER", "LEADS", "LEAFY", "LEAKS", "LEAKY", "LEANS", "LEAPS", "LEAPT", "LEARN", "LEASE", "LEASH", "LEAST", "LEAVE", "LEDGE", "LEECH", "LEEKS", "LEGAL", "LEMME", "LEMON", "LENDS", "LEPER", "LEVEE", "LEVEL", "LEVER", "LIARS", "LIBEL", "LICKS", "LIEGE", "LIENS", "LIFTS", "LIGHT", "LIKED", "LIKEN", "LIKER", "LIKES", "LILAC", "LIMBO", "LIMBS", "LIMES", "LIMIT", "LINED", "LINEN", "LINER", "LINES", "LINGO", "LINKS", "LIONS", "LISTS", "LITHE", "LIVED", "LIVER", "LIVES", "LIVID", "LLAMA", "LOADS", "LOAMY", "LOANS", "LOATH", "LOBBY", "LOBES", "LOCAL", "LOCKS", "LOCUS", "LODGE", "LOFTY", "LOGES", "LOGIC", "LOGIN", "LOINS", "LONGS", "LOOKS", "LOOMS", "LOONS", "LOOPS", "LOOSE", "LORDS", "LOSER", "LOSES", "LOTUS", "LOUSE", "LOUSY", "LOVED", "LOVER", "LOVES", "LOWED", "LOWER", "LOWLY", "LOYAL", "LUCID", "LUCKY", "LULLS", "LUMPS", "LUMPY", "LUNAR", "LUNCH", "LUNGE", "LUNGS", "LURCH", "LURED", "LURES", "LURID", "LURKS", "LUSTS", "LUSTY", "LUTES", "LYING", "LYMPH", "LYNCH", "LYRIC", "MACES", "MADAM", "MADLY", "MAGIC", "MAIDS", "MAILS", "MAINS", "MAIZE", "MAJOR", "MAKER", "MAKES", "MALES", "MAMMA", "MANES", "MANGA", "MANGE", "MANGO", "MANGY", "MANIA", "MANLY", "MANNA", "MANOR", "MANSE", "MAPLE", "MARCH", "MARES", "MARKS", "MARRY", "MARSH", "MARTS", "MASKS", "MASON", "MASTS", "MATCH", "MATED", "MATES", "MAUVE", "MAXIM", "MAYBE", "MAYOR", "MAZES", "MEALS", "MEALY", "MEANS", "MEANT", "MEATS", "MEDAL", "MEDIA", "MEETS", "MELON", "MELTS", "MEMES", "MENDS", "MENUS", "MERCY", "MERES", "MERGE", "MERIT", "MERRY", "MESAS", "METAL", "METED", "METER", "MEWED", "MIDST", "MIENS", "MIGHT", "MILCH", "MILES", "MILKY", "MILLS", "MIMES", "MIMIC", "MINCE", "MINDS", "MINED", "MINER", "MINES", "MINOR", "MINTS", "MINUS", "MIRTH", "MISER", "MISTS", "MITES", "MIXED", "MIXES", "MOANS", "MOATS", "MOCKS", "MODEL", "MODEM", "MODES", "MOIST", "MOLAR", "MOLES", "MOMMA", "MONEY", "MONKS", "MONTH", "MOODS", "MOODY", "MOONS", "MOORS", "MOOSE", "MOPED", "MORAL", "MORES", "MOSSY", "MOTES", "MOTHS", "MOTIF", "MOTOR", "MOTTO", "MOUND", "MOUNT", "MOURN", "MOUSE", "MOUTH", "MOVED", "MOVER", "MOVES", "MOVIE", "MOWED", "MOWER", "MUCUS", "MUDDY", "MULES", "MULTI", "MUMMY", "MUMPS", "MUNCH", "MURAL", "MURKY", "MUSED", "MUSES", "MUSIC", "MUSKY", "MUSTY", "MUTED", "MUTES", "MYRRH", "MYTHS", "NABOB", "NAILS", "NAIVE", "NAKED", "NAMED", "NAMES", "NASAL", "NASTY", "NATAL", "NATTY", "NAVAL", "NAVEL", "NAVES", "NEARS", "NECKS", "NEEDS", "NEEDY", "NEIGH", "NERVE", "NESTS", "NEVER", "NEWER", "NEWLY", "NICER", "NICHE", "NIECE", "NIGHT", "NINNY", "NOBLE", "NOBLY", "NOISE", "NOISY", "NOMAD", "NONCE", "NOOKS", "NOOSE", "NORTH", "NOSED", "NOSES", "NOTCH", "NOTED", "NOTES", "NOUNS", "NOVEL", "NUDGE"]
  static func generateRandomWord() -> String? {
    // START YOUR CODE HERE
    return possibleWords.randomElement()
    // END YOUR CODE HERE
  }
}
