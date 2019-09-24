<!DOCTYPE model>
<Option type="Map">
  <Option name="children" type="Map">
    <Option name="native:centroids_1" type="Map">
      <Option value="true" name="active" type="bool"/>
      <Option name="alg_config"/>
      <Option value="native:centroids" name="alg_id" type="QString"/>
      <Option value="Centroids" name="component_description" type="QString"/>
      <Option value="515.6878390707437" name="component_pos_x" type="double"/>
      <Option value="59.415657962431325" name="component_pos_y" type="double"/>
      <Option name="dependencies"/>
      <Option value="native:centroids_1" name="id" type="QString"/>
      <Option name="outputs"/>
      <Option value="true" name="outputs_collapsed" type="bool"/>
      <Option value="true" name="parameters_collapsed" type="bool"/>
      <Option name="params" type="Map">
        <Option name="ALL_PARTS" type="List">
          <Option type="Map">
            <Option value="2" name="source" type="int"/>
            <Option value="false" name="static_value" type="bool"/>
          </Option>
        </Option>
        <Option name="INPUT" type="List">
          <Option type="Map">
            <Option value="citycenter" name="parameter_name" type="QString"/>
            <Option value="0" name="source" type="int"/>
          </Option>
        </Option>
      </Option>
    </Option>
    <Option name="native:meancoordinates_1" type="Map">
      <Option value="true" name="active" type="bool"/>
      <Option name="alg_config"/>
      <Option value="native:meancoordinates" name="alg_id" type="QString"/>
      <Option value="Mean coordinate(s)" name="component_description" type="QString"/>
      <Option value="512.459150200552" name="component_pos_x" type="double"/>
      <Option value="166.90239790303232" name="component_pos_y" type="double"/>
      <Option name="dependencies"/>
      <Option value="native:meancoordinates_1" name="id" type="QString"/>
      <Option name="outputs"/>
      <Option value="true" name="outputs_collapsed" type="bool"/>
      <Option value="true" name="parameters_collapsed" type="bool"/>
      <Option name="params" type="Map">
        <Option name="INPUT" type="List">
          <Option type="Map">
            <Option value="native:centroids_1" name="child_id" type="QString"/>
            <Option value="OUTPUT" name="output_name" type="QString"/>
            <Option value="1" name="source" type="int"/>
          </Option>
        </Option>
        <Option name="UID" type="List">
          <Option type="Map">
            <Option value="2" name="source" type="int"/>
            <Option name="static_value" type="invalid"/>
          </Option>
        </Option>
        <Option name="WEIGHT" type="List">
          <Option type="Map">
            <Option value="2" name="source" type="int"/>
            <Option name="static_value" type="invalid"/>
          </Option>
        </Option>
      </Option>
    </Option>
    <Option name="qgis:fieldcalculator_1" type="Map">
      <Option value="true" name="active" type="bool"/>
      <Option name="alg_config"/>
      <Option value="qgis:fieldcalculator" name="alg_id" type="QString"/>
      <Option value="Field calculator (distance)" name="component_description" type="QString"/>
      <Option value="518.1823947352485" name="component_pos_x" type="double"/>
      <Option value="336.1860251457384" name="component_pos_y" type="double"/>
      <Option name="dependencies" type="StringList">
        <Option value="native:meancoordinates_1" type="QString"/>
      </Option>
      <Option value="qgis:fieldcalculator_1" name="id" type="QString"/>
      <Option name="outputs"/>
      <Option value="true" name="outputs_collapsed" type="bool"/>
      <Option value="true" name="parameters_collapsed" type="bool"/>
      <Option name="params" type="Map">
        <Option name="FIELD_LENGTH" type="List">
          <Option type="Map">
            <Option value="2" name="source" type="int"/>
            <Option value="10" name="static_value" type="int"/>
          </Option>
        </Option>
        <Option name="FIELD_NAME" type="List">
          <Option type="Map">
            <Option value="   concat( @fieldnameprefix, 'Dist')" name="expression" type="QString"/>
            <Option value="3" name="source" type="int"/>
          </Option>
        </Option>
        <Option name="FIELD_PRECISION" type="List">
          <Option type="Map">
            <Option value="2" name="source" type="int"/>
            <Option value="3" name="static_value" type="int"/>
          </Option>
        </Option>
        <Option name="FIELD_TYPE" type="List">
          <Option type="Map">
            <Option value="2" name="source" type="int"/>
            <Option value="0" name="static_value" type="int"/>
          </Option>
        </Option>
        <Option name="FORMULA" type="List">
          <Option type="Map">
            <Option value="2" name="source" type="int"/>
            <Option value="distance(&#xa;transform(centroid($geometry),  layer_property( @inputfeatures2, 'crs'), 4326),&#xa;&#xa;transform (make_point(  @Mean_coordinate_s__OUTPUT_maxx ,  @Mean_coordinate_s__OUTPUT_maxy ),  layer_property(  @citycenter, 'crs'), 4326) )" name="static_value" type="QString"/>
          </Option>
        </Option>
        <Option name="INPUT" type="List">
          <Option type="Map">
            <Option value="inputfeatures2" name="parameter_name" type="QString"/>
            <Option value="0" name="source" type="int"/>
          </Option>
        </Option>
        <Option name="NEW_FIELD" type="List">
          <Option type="Map">
            <Option value="2" name="source" type="int"/>
            <Option value="true" name="static_value" type="bool"/>
          </Option>
        </Option>
      </Option>
    </Option>
    <Option name="qgis:fieldcalculator_2" type="Map">
      <Option value="true" name="active" type="bool"/>
      <Option name="alg_config"/>
      <Option value="qgis:fieldcalculator" name="alg_id" type="QString"/>
      <Option value="DIR_fieldCalc" name="component_description" type="QString"/>
      <Option value="519.1703611947711" name="component_pos_x" type="double"/>
      <Option value="441.45139987450216" name="component_pos_y" type="double"/>
      <Option name="dependencies"/>
      <Option value="qgis:fieldcalculator_2" name="id" type="QString"/>
      <Option name="outputs"/>
      <Option value="true" name="outputs_collapsed" type="bool"/>
      <Option value="true" name="parameters_collapsed" type="bool"/>
      <Option name="params" type="Map">
        <Option name="FIELD_LENGTH" type="List">
          <Option type="Map">
            <Option value="2" name="source" type="int"/>
            <Option value="10" name="static_value" type="int"/>
          </Option>
        </Option>
        <Option name="FIELD_NAME" type="List">
          <Option type="Map">
            <Option value=" concat(  @fieldnameprefix , 'dir')" name="expression" type="QString"/>
            <Option value="3" name="source" type="int"/>
          </Option>
        </Option>
        <Option name="FIELD_PRECISION" type="List">
          <Option type="Map">
            <Option value="2" name="source" type="int"/>
            <Option value="2" name="static_value" type="int"/>
          </Option>
        </Option>
        <Option name="FIELD_TYPE" type="List">
          <Option type="Map">
            <Option value="2" name="source" type="int"/>
            <Option value="0" name="static_value" type="int"/>
          </Option>
        </Option>
        <Option name="FORMULA" type="List">
          <Option type="Map">
            <Option value="2" name="source" type="int"/>
            <Option value="&#xa;&#xa;degrees( &#xa;azimuth(&#xa;transform(&#xa;make_point(  @Mean_coordinate_s__OUTPUT_maxx,  @Mean_coordinate_s__OUTPUT_maxy ), layer_property( @citycenter, 'crs'), 'ESPG:54004'),&#xa;&#xa;transform(centroid($geometry), layer_property( @inputfeatures2, 'crs'), 'ESPG:54004')))&#xd;&#xa;" name="static_value" type="QString"/>
          </Option>
        </Option>
        <Option name="INPUT" type="List">
          <Option type="Map">
            <Option value="qgis:fieldcalculator_1" name="child_id" type="QString"/>
            <Option value="OUTPUT" name="output_name" type="QString"/>
            <Option value="1" name="source" type="int"/>
          </Option>
        </Option>
        <Option name="NEW_FIELD" type="List">
          <Option type="Map">
            <Option value="2" name="source" type="int"/>
            <Option value="true" name="static_value" type="bool"/>
          </Option>
        </Option>
      </Option>
    </Option>
    <Option name="qgis:fieldcalculator_3" type="Map">
      <Option value="true" name="active" type="bool"/>
      <Option name="alg_config"/>
      <Option value="qgis:fieldcalculator" name="alg_id" type="QString"/>
      <Option value="Field calc_classifyDirection" name="component_description" type="QString"/>
      <Option value="525.546528841329" name="component_pos_x" type="double"/>
      <Option value="574.0727590978036" name="component_pos_y" type="double"/>
      <Option name="dependencies"/>
      <Option value="qgis:fieldcalculator_3" name="id" type="QString"/>
      <Option name="outputs" type="Map">
        <Option name="Direction Distance Output" type="Map">
          <Option value="qgis:fieldcalculator_3" name="child_id" type="QString"/>
          <Option value="Direction Distance Output" name="component_description" type="QString"/>
          <Option value="725.546528841329" name="component_pos_x" type="double"/>
          <Option value="619.0727590978036" name="component_pos_y" type="double"/>
          <Option name="default_value" type="invalid"/>
          <Option value="false" name="mandatory" type="bool"/>
          <Option value="Direction Distance Output" name="name" type="QString"/>
          <Option value="OUTPUT" name="output_name" type="QString"/>
        </Option>
      </Option>
      <Option value="false" name="outputs_collapsed" type="bool"/>
      <Option value="true" name="parameters_collapsed" type="bool"/>
      <Option name="params" type="Map">
        <Option name="FIELD_LENGTH" type="List">
          <Option type="Map">
            <Option value="2" name="source" type="int"/>
            <Option value="10" name="static_value" type="int"/>
          </Option>
        </Option>
        <Option name="FIELD_NAME" type="List">
          <Option type="Map">
            <Option value="2" name="source" type="int"/>
            <Option value="Class" name="static_value" type="QString"/>
          </Option>
        </Option>
        <Option name="FIELD_PRECISION" type="List">
          <Option type="Map">
            <Option value="2" name="source" type="int"/>
            <Option value="3" name="static_value" type="int"/>
          </Option>
        </Option>
        <Option name="FIELD_TYPE" type="List">
          <Option type="Map">
            <Option value="2" name="source" type="int"/>
            <Option value="2" name="static_value" type="int"/>
          </Option>
        </Option>
        <Option name="FORMULA" type="List">
          <Option type="Map">
            <Option value="2" name="source" type="int"/>
            <Option value="CASE&#xd;&#xa;WHEN attribute( concat(@fieldnameprefix , 'dir')) >=315 OR attribute( concat(@fieldnameprefix , 'dir')) &lt;=45 THEN 'North'&#xd;&#xa;WHEN attribute( concat(@fieldnameprefix , 'dir')) >45AND attribute( concat(@fieldnameprefix , 'dir')) &lt;=135 THEN 'East'&#xd;&#xa;WHEN attribute( concat(@fieldnameprefix , 'dir')) >135 AND attribute( concat(@fieldnameprefix , 'dir')) &lt;=225 THEN 'South' &#xd;&#xa;ELSE 'West' &#xd;&#xa;END " name="static_value" type="QString"/>
          </Option>
        </Option>
        <Option name="INPUT" type="List">
          <Option type="Map">
            <Option value="qgis:fieldcalculator_2" name="child_id" type="QString"/>
            <Option value="OUTPUT" name="output_name" type="QString"/>
            <Option value="1" name="source" type="int"/>
          </Option>
        </Option>
        <Option name="NEW_FIELD" type="List">
          <Option type="Map">
            <Option value="2" name="source" type="int"/>
            <Option value="true" name="static_value" type="bool"/>
          </Option>
        </Option>
      </Option>
    </Option>
  </Option>
  <Option name="help" type="Map">
    <Option value="Tori Koontz" name="ALG_CREATOR" type="QString"/>
    <Option value="This model uses a central point (CBD) and input features to calculate distance and direction from the CBD to values in the input layer. " name="ALG_DESC" type="QString"/>
    <Option value="This is my first model ever lol " name="ALG_VERSION" type="QString"/>
    <Option value="For more help, please visit https://tori-koontz.github.io/" name="HELP_URL" type="QString"/>
    <Option value="" name="SHORT_DESCRIPTION" type="QString"/>
    <Option value="The central point of a city, usually the CBD. the layer should be a single point. &#xa;&#xa;You can also manually select the central census blocks or area, and this tool will find the center of the selection and use it in the calculations. " name="citycenter" type="QString"/>
    <Option value="" name="fieldnameprefix" type="QString"/>
    <Option value="Input features should be a polygon layer and contains the information for which you want to calculate distance and direction from the CBD. " name="inputfeatures2" type="QString"/>
    <Option value="In the attribute table, you will see calculated values for both distance and dirction (in radians) from the city center." name="qgis:fieldcalculator_2:Direction Distance Output" type="QString"/>
  </Option>
  <Option name="modelVariables"/>
  <Option value="Middlebury " name="model_group" type="QString"/>
  <Option value="Distance and Direction from Point" name="model_name" type="QString"/>
  <Option name="parameterDefinitions" type="Map">
    <Option name="citycenter" type="Map">
      <Option name="data_types" type="List">
        <Option value="-1" type="int"/>
      </Option>
      <Option name="default" type="invalid"/>
      <Option value="City Center" name="description" type="QString"/>
      <Option value="0" name="flags" type="int"/>
      <Option name="metadata"/>
      <Option value="citycenter" name="name" type="QString"/>
      <Option value="source" name="parameter_type" type="QString"/>
    </Option>
    <Option name="fieldnameprefix" type="Map">
      <Option value="cbd" name="default" type="QString"/>
      <Option value="Field Name Prefix" name="description" type="QString"/>
      <Option value="0" name="flags" type="int"/>
      <Option name="metadata"/>
      <Option value="false" name="multiline" type="bool"/>
      <Option value="fieldnameprefix" name="name" type="QString"/>
      <Option value="string" name="parameter_type" type="QString"/>
    </Option>
    <Option name="inputfeatures2" type="Map">
      <Option name="data_types" type="List">
        <Option value="2" type="int"/>
      </Option>
      <Option name="default" type="invalid"/>
      <Option value="Input Features" name="description" type="QString"/>
      <Option value="0" name="flags" type="int"/>
      <Option name="metadata"/>
      <Option value="inputfeatures2" name="name" type="QString"/>
      <Option value="source" name="parameter_type" type="QString"/>
    </Option>
    <Option name="qgis:fieldcalculator_3:Direction Distance Output" type="Map">
      <Option value="true" name="create_by_default" type="bool"/>
      <Option value="-1" name="data_type" type="int"/>
      <Option name="default" type="invalid"/>
      <Option value="Direction Distance Output" name="description" type="QString"/>
      <Option value="0" name="flags" type="int"/>
      <Option name="metadata"/>
      <Option value="qgis:fieldcalculator_3:Direction Distance Output" name="name" type="QString"/>
      <Option value="sink" name="parameter_type" type="QString"/>
      <Option value="true" name="supports_non_file_outputs" type="bool"/>
    </Option>
  </Option>
  <Option name="parameters" type="Map">
    <Option name="citycenter" type="Map">
      <Option value="citycenter" name="component_description" type="QString"/>
      <Option value="193.11661024105297" name="component_pos_x" type="double"/>
      <Option value="66.81215964901658" name="component_pos_y" type="double"/>
      <Option value="citycenter" name="name" type="QString"/>
    </Option>
    <Option name="fieldnameprefix" type="Map">
      <Option value="fieldnameprefix" name="component_description" type="QString"/>
      <Option value="207.23624595469255" name="component_pos_x" type="double"/>
      <Option value="419.4692556634304" name="component_pos_y" type="double"/>
      <Option value="fieldnameprefix" name="name" type="QString"/>
    </Option>
    <Option name="inputfeatures2" type="Map">
      <Option value="inputfeatures2" name="component_description" type="QString"/>
      <Option value="204.7300383076167" name="component_pos_x" type="double"/>
      <Option value="217.5074102329797" name="component_pos_y" type="double"/>
      <Option value="inputfeatures2" name="name" type="QString"/>
    </Option>
  </Option>
</Option>
