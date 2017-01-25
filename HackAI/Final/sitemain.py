
import flask
import subprocess

thing = flask.Flask(__name__)

def saspuni(uni, form):
    asdf = open("execute_sasp.lp", "w")
    asdf.write("%execute sasp program\n#include '" + uni + ".lp'.\n#include 'uni_facts.lp'.\n#include '" + uni + "_rules.lp'.\n\n#compute 1 {");
    asdf.write(uni + "Suitable(")
    if "intl" in form:
        asdf.write(form["toeflss"] + ", ")
        asdf.write(form["toeflrs"] + ", ")
        asdf.write(form["toeflws"] + ", ")
        asdf.write(form["toeflls"] + ", ")
    asdf.write(form["grevs"] + ", ")
    asdf.write(form["greqs"] + ", ")
    asdf.write(form["greas"] + ", ")
    if "work" in form:
        asdf.write("yes, ")
    else:
        asdf.write("no, ")
    asdf.write(form["cost"] + ", ")
    asdf.write(form["semester"] + ", ")
    if "ai" in form:
        asdf.write("ai, ")
    else:
        asdf.write("none, ")
    if "ds" in form:
        asdf.write("ds, ")
    else:
        asdf.write("none, ")
    if "dm" in form:
        asdf.write("dm")
    else:
        asdf.write("none")
    asdf.write(")}.")
    asdf.flush()
    asdf.close()
    p = subprocess.Popen("./sasp execute_sasp.lp", stdout = subprocess.PIPE, shell = True, universal_newlines = True)
    output, err = p.communicate()
    p.wait()
    print(uni + ": " + output)
    return (uni + ": " + output + "\n")
    

@thing.route("/", methods = ["POST", "GET"])
def main_form():
    print("Loading main page...")
    return flask.render_template("index.html")


@thing.route("/submit", methods=["POST"])
def submit():
    print("Submitted:")
    res = saspuni(flask.request.form["university"], flask.request.form)
    if "false" in res:
        res = "No match."
    else:
        res = flask.request.form["university"] + " is a match."
    return flask.render_template("result.html", response = res)
    
if __name__ == "__main__":
    print("Flask runner.")
    thing.run()
